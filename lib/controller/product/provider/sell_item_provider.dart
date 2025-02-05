import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:prelura_app/core/di.dart';
import 'package:prelura_app/core/graphql/__generated/schema.graphql.dart';
import 'package:prelura_app/model/product/categories/category_model.dart';
import 'package:prelura_app/model/product/material/material_model.dart';
import 'package:prelura_app/model/product/product_model.dart';
import 'package:prelura_app/shared/image_service.dart';

part 'sell_item_provider.freezed.dart';
part 'sell_item_provider.g.dart';

@freezed
class SellItemState with _$SellItemState {
  const factory SellItemState({
    @XFileConverter() @Default([]) List<XFile> images,
    required String title,
    required String description,
    CategoryModel? category,
    Enum$ParcelSizeEnum? parcel,
    @Default({}) Map<String, String> imageUrlToAction,
    @Default([]) List<String> selectedColors,
    @Default([]) List<MaterialModel> selectedMaterials,
    SizeType? size,
    Brand? brand,
    // Enum$SizeEnum? size,
    String? price,
    String? discount,
    ConditionsEnum? selectedCondition,
    Enum$StyleEnum? style,
    String? customBrand,
    @Default(false) bool isFeatured,
    @Default(false) bool isReplaced,
  }) = _SellItemState;

  factory SellItemState.fromJson(Map<String, dynamic> json) =>
      _$SellItemStateFromJson(json);
}

class XFileConverter implements JsonConverter<List<XFile>, List<dynamic>> {
  const XFileConverter();

  @override
  List<XFile> fromJson(List<dynamic> items) {
    final files = items.map((e) => XFile(e)).toList();
    return files;
  }

  @override
  List<dynamic> toJson(List<XFile> files) => files.map((e) => e.path).toList();
}

class SellItemNotifier extends StateNotifier<SellItemState> {
  final Ref ref;
  SellItemNotifier(this.ref)
      : super(SellItemState(title: '', description: '')) {
    _initialState = state;
  }

  final ImagePicker _picker = ImagePicker();
  late final SellItemState _initialState;
  static const int maxColorSelections = 3;
  static const int maxMaterialSelections = 3;

  bool hasChanges() {
    return state != _initialState;
  }

  // Add an image
  Future<void> addImages() async {
    final pickedImages = await _picker.pickMultiImage(
      limit: 20,
    );
    if (pickedImages.isNotEmpty) {
      for (final image in pickedImages) {
        ref
            .read(
          sellItemProvider.notifier,
        )
            .updateImageStateChanging(
          {"add_${DateTime.now().microsecondsSinceEpoch}": image.path},
        );
      }
    }
    state = state.copyWith(images: [...state.images, ...pickedImages]);
  }

  void updateImage(List<XFile> images) {
    state = state.copyWith(images: [...images]);
  }

  void updateIsRpelaced() {
    state = state.copyWith(isReplaced: true);
  }

  void deleteImage(XFile id) {
    final currentImages = state.images;
    state = state.copyWith(
      images: currentImages.where((c) => c != id).toList(),
    );
  }

  void setStateToDraft(SellItemState draft) {
    state = draft;
  }

  // Update title
  void updateTitle(String title) {
    state = state.copyWith(title: title);
  }

  void resetState() {
    state = SellItemState(title: '', description: '');
  }

  void updateFeatured(bool isFeatured) {
    state = state.copyWith(isFeatured: isFeatured);
  }

  // Update description
  void updateDescription(String description) {
    state = state.copyWith(description: description);
  }

  void selectParcel(Enum$ParcelSizeEnum selectedParcel) {
    state = state.copyWith(parcel: selectedParcel);
  }

  void updateCategory(CategoryModel category) {
    state = state.copyWith(category: category);
  }

  void removeCategory() {
    state = state.copyWith(category: null);
  }

  void updateImageStateChanging(Map<String, String> data) {
    Map<String, String> imageActions = Map.from(state.imageUrlToAction);
    imageActions.addAll(data);
    state = state.copyWith(imageUrlToAction: imageActions);
  }

  void selectSize(SizeType size) {
    // void selectSize(Enum$SizeEnum size) {
    state = state.copyWith(size: size);
  }

  void updatePrice(String? price) {
    state = state.copyWith(price: price);
    log('${state.price}');
  }

  void updateDiscount(String? price) {
    state = state.copyWith(discount: price);
    log('${state.discount}');
  }

  void selectBrand(Brand? brand) {
    state = state.copyWith(brand: brand, customBrand: null);
  }

  void selectCustomBrand(String? brand) {
    state = state.copyWith(customBrand: brand, brand: null);
  }

  void selectCondition(ConditionsEnum selectedCondition) {
    state = state.copyWith(selectedCondition: selectedCondition);
  }

  void selectStyle(Enum$StyleEnum style) {
    state = state.copyWith(style: style);
  }

  Future<List<XFile>> convertImageUrlsToXFiles(List<String> imageUrls) async {
    List<XFile> xFiles = [];
    for (String imageUrl in imageUrls) {
      try {
        final response = await http.get(Uri.parse(imageUrl));
        if (response.statusCode == 200) {
          final tempDir = await getTemporaryDirectory();
          final filePath =
              '${tempDir.path}/${DateTime.now().millisecondsSinceEpoch}.png';

          final file = File(filePath);
          await file.writeAsBytes(response.bodyBytes);

          xFiles.add(XFile(file.path));
        } else {
          print(
              'Failed to download image: $imageUrl, Status: ${response.statusCode}');
        }
      } catch (e) {
        print('Error downloading image: $imageUrl, Error: $e');
      }
    }
    return xFiles;
  }

  void productToItem(ProductModel product) async {
    state.copyWith(imageUrlToAction: {});
    List<String> imageUrls =
        product.imagesUrl.map((imageInfo) => imageInfo.url).toList();
    List<XFile> images = await ImageService.downloadImages(imageUrls);
    state = state.copyWith(
      title: product.name,
      description: product.description,
      category: product.category,
      parcel: product.parcelSize != null
          ? Enum$ParcelSizeEnum.fromJson(product.parcelSize!.toJson())
          : null,
      size: product.size,
      images: images,
      price: product.price.toString(),
      selectedCondition: product.condition,
      brand: product.brand,
      selectedColors: product.color ?? [],
      selectedMaterials: product.materials ?? [],
      style: product.style,
      discount: product.discountPrice.toString(),
      customBrand: product.customBrand,
      isFeatured: product.isFeatured ?? false,
    );
  }

  // Add or remove a color
  void toggleColor(String color) {
    final currentSelections = state.selectedColors;
    if (currentSelections.contains(color)) {
      // Remove color
      state = state.copyWith(
        selectedColors: currentSelections.where((c) => c != color).toList(),
      );
    } else {
      if (currentSelections.length < maxColorSelections) {
        // Add color
        state = state.copyWith(
          selectedColors: [...currentSelections, color],
        );
      }
    }
  }

  // Check if the color is selected
  bool isColorSelected(String color) {
    return state.selectedColors.contains(color);
  }

  // Check if max selections are reached
  bool canSelectMoreColor() {
    return state.selectedColors.length < maxColorSelections;
  }

  void updateSelectedMaterials(List<MaterialModel> materials) {
    state = state.copyWith(selectedMaterials: materials);
  }

  void toggleMaterial(MaterialModel material) {
    final currentSelections = state.selectedMaterials;

    // Check if the material is already selected
    final isSelected = currentSelections.contains(material);

    state = state.copyWith(
      selectedMaterials: isSelected
          ? currentSelections
              .where((m) => m != material)
              .toList() // Remove material
          : (currentSelections.length < maxMaterialSelections
              ? [...currentSelections, material] // Add material if under limit
              : currentSelections),
    );
  }

  bool isMaterialSelected(MaterialModel material) {
    return state.selectedMaterials.contains(material);
  }

  bool canSelectMoreMaterial() {
    return state.selectedMaterials.length < maxMaterialSelections;
  }

  // Validate input
  bool validateInputs() {
    return state.title.isNotEmpty || state.description.isNotEmpty;
  }

  // Simulate Upload
  Future<void> uploadItem() async {
    // Simulate an API call or database operation
    if (validateInputs()) {
      // Add your upload logic here
    }
  }
}

final sellItemProvider = StateNotifierProvider<SellItemNotifier, SellItemState>(
  (ref) => SellItemNotifier(ref),
);

final sellItemDraftProvider =
    AsyncNotifierProvider<SellItemDraftProvider, List<SellItemState>>(
        SellItemDraftProvider.new);

class SellItemDraftProvider extends AsyncNotifier<List<SellItemState>> {
  late final cacheBox = ref.read(sharedPrefs).requireValue;

  @override
  FutureOr<List<SellItemState>> build() {
    final results = cacheBox.getStringList('drafts');
    // log(results.toString(), name: 'Drafts');
    return results
            ?.map((e) => SellItemState.fromJson(jsonDecode(e)))
            .toList() ??
        [];
  }

  void addDraft(SellItemState item) async {
    await cacheBox.setStringList('drafts', [
      ...?state.value?.map((e) => jsonEncode(e.toJson())),
      jsonEncode(item.toJson()),
    ]);
    ref.invalidateSelf();
  }

  void removeDraft(SellItemState e) {
    final drafts = state.value?.where((i) => i != e).toList();
    if (drafts != null) {
      cacheBox.setStringList(
          'drafts',
          drafts
                  .map(
                    (e) => jsonEncode(
                      e.toJson(),
                    ),
                  )
                  .toList() ??
              []);
      ref.invalidateSelf();
    }
  }
}
