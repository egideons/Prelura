import 'dart:async';
import 'dart:developer';
import 'dart:ffi';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prelura_app/core/di.dart';
import 'package:prelura_app/core/graphql/__generated/mutations.graphql.dart';
import 'package:prelura_app/core/graphql/__generated/schema.graphql.dart';
import 'package:prelura_app/modules/controller/product/brands_provider.dart';
import 'package:prelura_app/modules/model/product/product_model.dart';
import 'package:prelura_app/modules/views/pages/Search%20Result/provider/search_provider.dart';
import 'package:prelura_app/modules/views/pages/Search%20Result/view/search_result.dart';

// final allProductProvider = FutureProvider((ref) async {
//   log('Triggered All Product Provider Getting Product.....');
//   final repo = ref.watch(productRepo);

//   final result = await repo.getAllProducts(pageCount: 100);
//   log('Got All Product....');

//   return result.reversed.toList();
// });

final searchProductProvider = FutureProvider.family<List<Product>, String?>((ref, query) async {
  final repo = ref.watch(productRepo);
  final filters = ref.watch(searchFilterProvider);

  final brandFilter = filters.entries.where((e) => e.key == FilterTypes.brand).firstOrNull?.value;
  final sizeFilter = filters.entries.where((e) => e.key == FilterTypes.size).firstOrNull?.value;
  final conditionFilter = filters.entries.where((e) => e.key == FilterTypes.condition).firstOrNull?.value;
  final styleFilter = filters.entries.where((e) => e.key == FilterTypes.style).firstOrNull?.value;

  final brand = ref.watch(brandsProvider).valueOrNull?.where((e) => e.name == brandFilter).firstOrNull;
  final size = Enum$SizeEnum.values.where((e) => e.name == sizeFilter).firstOrNull;
  final condition = ConditionsEnum.values.where((e) => e.name == conditionFilter).firstOrNull;
  final style = Enum$StyleEnum.values.where((e) => e.name == styleFilter).firstOrNull;

  final result = await repo.getAllProducts(
    search: query,
    filters: Input$ProductFiltersInput(
      brand: brand?.id,
      size: size,
      condition: condition,
      style: style,
    ),
  );

  return result.allProducts!.map((e) => Product.fromJson(e!.toJson())).toList();
});

final toggleLikeProductProvider = FutureProvider.autoDispose.family<bool, int>((ref, query) async {
  final repo = ref.read(productRepo);

  final result = await repo.toggleLikeProduct(query);

  return result!;
});

final userProduct = FutureProvider.family<List<Product>, String?>((ref, username) async {
  final repo = ref.watch(productRepo);

  final result = await repo.getUserProduct(username: username, pageCount: 100);

  return result.reversed.toList();
});
final getProductProvider = FutureProvider.family<Product, int>((ref, id) async {
  final repo = ref.watch(productRepo);

  final result = await repo.getProduct(id);

  return result;
});

final userFavouriteProduct = FutureProvider.autoDispose((ref) async {
  final repo = ref.watch(productRepo);

  final result = await repo.getMyFavouriteProduct(0);

  return result.reversed.toList();
});

final categoryProvider = FutureProvider((ref) async {
  final repo = ref.watch(productRepo);

  final result = await repo.getCategories();

  return result;
});

final similarProductsProvider = FutureProvider.family<List<Product>, int>((ref, id) async {
  final repo = ref.watch(productRepo);

  final result = await repo.similarProduct(productId: id);

  return result;
});

final productProvider = AsyncNotifierProvider<_ProductProvider, void>(_ProductProvider.new);

class _ProductProvider extends AsyncNotifier<void> {
  late final _productRepo = ref.read(productRepo);
  late final _fileUploadRepo = ref.read(fileUploadRepo);

  @override
  FutureOr<List<Product>> build() => [];

  Future<List<Input$ImagesInputType>> _uploadMedia(List<File> files) async {
    final upload = await _fileUploadRepo.uploadFiles(
      files,
      Enum$FileTypeEnum.PRODUCT,
      onUploadProgress: (sent, total) => log('${sent / total}%', name: 'FileUpload'),
    );

    if (upload == null) throw 'Failed to upload images.';

    return upload;
  }

  Future<void> createProduct({
    required String title,
    required String desc,
    required double price,
    required List<File> images,
    required Enum$SizeEnum size,
    ConditionsEnum? condition,
    required int category,
    required int subCategory,
    Enum$ParcelSizeEnum? parcelSize,
    double? discount,
    int? brandId,
    List<String>? color,
    List<int>? materials,
    Enum$StyleEnum? style,
  }) async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      final files = await _uploadMedia(images);
      await _productRepo.createProduct(
        Variables$Mutation$CreateProduct(
            category: category,
            subCategory: subCategory,
            condition: condition,
            description: desc,
            imageUrl: files,
            price: price,
            size: size,
            name: title,
            parcelSize: parcelSize,
            discount: discount,
            brand: brandId,
            color: color,
            materials: materials,
            style: style),
      );
      ref.invalidate(userProduct);
      ref.invalidate(allProductProvider);
    });
  }

  Future<void> updateProduct({
    required int productId,
    String? title,
    String? desc,
    double? price,
    Enum$SizeEnum? size,
    ConditionsEnum? condition,
    int? category,
    int? subCategory,
    Enum$ParcelSizeEnum? parcelSize,
    double? discount,
    int? brandId,
    List<String>? color,
    List<int>? materials,
    Enum$StyleEnum? style,
  }) async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      // final files = await _uploadMedia(images);
      await _productRepo.updateProduct(
        Variables$Mutation$UpdateProduct(
          productId: productId,
          category: category,
          subCategory: subCategory,
          condition: condition,
          description: desc,
          price: price,
          size: size,
          name: title,
          parcelSize: parcelSize,
          discount: discount,
          brand: brandId,
          color: color,
          materials: materials,
          style: style,
        ),
      );
      ref.invalidate(userProduct);
      ref.invalidate(allProductProvider);
      ref.invalidate(getProductProvider(productId));
    });
  }

  Future<void> deleteProduct(int productId) async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      await _productRepo.deleteProduct(productId);

      ref.invalidate(userProduct);
      ref.invalidate(allProductProvider);
    });
  }

  Future<void> likeProduct(int productId, bool isLiked, likeCount) async {
    if (ref.read(getProductProvider(productId)).hasValue) {
      // ref.read(getProductProvider(productId)).value?.userLiked = isLiked;
      // ref.read(getProductProvider(productId)).value?.likes = likeCount;
    }
    await _productRepo.toggleLikeProduct(productId);

    ref.invalidate(getProductProvider(productId));
    // ref.invalidate(allProductProvider);
    ref.invalidate(userFavouriteProduct);
  }
}

final colorsProvider = Provider((ref) {
  final colorOptions = {
    "Black": Colors.black,
    "Brown": Colors.brown,
    "Grey": Colors.grey,
    "White": Colors.white,
    "Beige": const Color(0xFFF5F5DC),
    "Pink": Colors.pink,
    "Purple": Colors.purple,
    "Red": Colors.red,
    "Yellow": Colors.yellow,
    "Blue": Colors.blue,
    "Green": Colors.green,
    "Orange": Colors.orange,
  };

  return colorOptions;
});

final filterProductByPriceProvider = AsyncNotifierProvider.family<_FilteredProductController, List<Product>, double>(_FilteredProductController.new);

class _FilteredProductController extends FamilyAsyncNotifier<List<Product>, double> {
  late final _repository = ref.read(productRepo);
  // List<ServicePackageModel>? services;
  final int _pageCount = 15;
  int _currentPage = 1;
  int _brandTotalItems = 0;

  double _price = 15;

  @override
  Future<List<Product>> build(double priceLimit) async {
    state = const AsyncLoading();
    _price = priceLimit;
    _currentPage = 1;
    await _getProducts(pageNumber: _currentPage, price: priceLimit);
    return state.value!;
  }

  Future<void> _getProducts({required double price, int? pageNumber}) async {
    // final sort = ref.watch(sortAllServiceProvider);
    final result = await _repository.filterProductByPrice(
      price: price,
      pageCount: _pageCount,
      pageNumber: pageNumber,
    );

    _brandTotalItems = result.filterProductsByPriceTotalNumber!;

    final newState = result.filterProductsByPrice!.map((e) => Product.fromJson(e!.toJson())).toList();
    newState.shuffle();
    newState.shuffle();
    final currentState = state.valueOrNull ?? [];
    if (pageNumber == 1) {
      state = AsyncData(newState.toList());
    } else {
      if (currentState.isNotEmpty && newState.any((element) => currentState.last.id == element.id)) {
        return;
      }

      state = AsyncData([...currentState, ...newState]);
    }
    _currentPage = pageNumber!;
  }

  Future<void> fetchMoreData() async {
    final canLoadMore = (state.valueOrNull?.length ?? 0) < _brandTotalItems;

    if (canLoadMore) {
      await _getProducts(
        price: _price,
        pageNumber: _currentPage + 1,
      );
    }
  }

  Future<void> fetchMoreHandler() async {
    final canLoadMore = (state.valueOrNull?.length ?? 0) < _brandTotalItems;
    if (canLoadMore) {
      await fetchMoreData();
    }
  }

  bool canLoadMore() {
    return (state.valueOrNull?.length ?? 0) < _brandTotalItems;
  }
}

final searchBrand = FutureProvider.family.autoDispose<List<Brand>, String>(
  (ref, query) async {
    final repo = ref.watch(productRepo);

    final result = await repo.getBrands(search: query);

    return result.brands!.map((e) => Brand.fromJson(e!.toJson())).toList();
  },
);

/// boolean flag for when paginating home page
final paginatingHome = StateProvider((ref) => false);

final allProductProvider = AsyncNotifierProvider.family.autoDispose<_AllProductController, List<Product>, String?>(_AllProductController.new);

class _AllProductController extends AutoDisposeFamilyAsyncNotifier<List<Product>, String?> {
  late final _repository = ref.read(productRepo);
  // List<ServicePackageModel>? services;
  final int _pageCount = 15;
  int _currentPage = 1;
  int _brandTotalItems = 0;
  String? _query;

  @override
  Future<List<Product>> build(String? query) async {
    state = const AsyncLoading();
    _currentPage = 1;
    _query = query;
    await _getProducts(query: query, pageNumber: _currentPage);
    return state.value!;
  }

  Future<void> _getProducts({String? query, int? pageNumber}) async {
    final result = await _repository.getAllProducts(
      search: query,
      pageCount: _pageCount,
      pageNumber: pageNumber,
    );

    _brandTotalItems = result.allProductsTotalNumber!;

    final newState = result.allProducts!.map((e) => Product.fromJson(e!.toJson())).toList();
    newState.shuffle();
    newState.shuffle();
    final currentState = state.valueOrNull ?? [];
    if (pageNumber == 1) {
      state = AsyncData(newState.toList());
    } else {
      if (currentState.isNotEmpty && newState.any((element) => currentState.last.id == element.id)) {
        return;
      }

      state = AsyncData([...currentState, ...newState]);
    }
    _currentPage = pageNumber!;
  }

  Future<void> fetchMoreData() async {
    final canLoadMore = (state.valueOrNull?.length ?? 0) < _brandTotalItems;

    if (canLoadMore) {
      ref.read(paginatingHome.notifier).state = true;
      await _getProducts(
        query: _query,
        pageNumber: _currentPage + 1,
      );
      ref.read(paginatingHome.notifier).state = false;
    }
  }

  Future<void> fetchMoreHandler() async {
    final canLoadMore = (state.valueOrNull?.length ?? 0) < _brandTotalItems;
    if (canLoadMore) {
      await fetchMoreData();
    }
  }

  bool canLoadMore() {
    return (state.valueOrNull?.length ?? 0) < _brandTotalItems;
  }
}

final filterProductByBrandProvider = AsyncNotifierProvider.family<FilteredBrandProductController, List<Product>, (int, String)>(FilteredBrandProductController.new);

class FilteredBrandProductController extends FamilyAsyncNotifier<List<Product>, (int, String)> {
  late final _repository = ref.read(productRepo);

  final int _pageCount = 15;
  int _currentPage = 1;
  int _brandTotalItems = 0;

  @override
  Future<List<Product>> build((int, String) params) async {
    final (brandId, query) = params;
    state = const AsyncLoading();
    _currentPage = 1;

    try {
      return await _getProducts(
        brandId: brandId,
        pageNumber: _currentPage,
        query: query,
      );
    } catch (e, stack) {
      state = AsyncError(e, stack);
      return [];
    }
  }

  Future<List<Product>> _getProducts({
    required int brandId,
    required int pageNumber,
    String? query,
  }) async {
    try {
      final result = await _repository.getAllProducts(
        pageCount: _pageCount,
        pageNumber: pageNumber,
        // brandId: brandId,
        filters: Input$ProductFiltersInput(
          brand: brandId,
        ),
        search: query,
      );

      _brandTotalItems = result.allProductsTotalNumber ?? 0;

      final newProducts = result.allProducts!.map((e) => Product.fromJson(e!.toJson())).toList();

      final currentProducts = state.valueOrNull ?? [];
      state = pageNumber == 1 ? AsyncData(newProducts) : AsyncData([...currentProducts, ...newProducts]);

      _currentPage = pageNumber;
      return state.value!;
    } catch (e, stack) {
      state = AsyncError(e, stack);
      return [];
    }
  }

  Future<void> fetchMoreData(int brandId, String query) async {
    final canLoadMore = (state.valueOrNull?.length ?? 0) < _brandTotalItems;
    if (!canLoadMore) return;

    try {
      await _getProducts(
        brandId: brandId,
        pageNumber: _currentPage + 1,
        query: query,
      );
    } catch (e, stack) {
      state = AsyncError(e, stack);
    }
  }

  Future<void> fetchMoreHandler(int brandId, String query) async {
    final canLoadMore = (state.valueOrNull?.length ?? 0) < _brandTotalItems;
    if (canLoadMore) {
      await fetchMoreData(brandId, query);
    }
  }

  bool canLoadMore() {
    return (state.valueOrNull?.length ?? 0) < _brandTotalItems;
  }
}
