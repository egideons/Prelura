// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
mixin _$Product {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  CategoryModel? get category => throw _privateConstructorUsedError;
  CategoryModel? get subCategory => throw _privateConstructorUsedError;
  List<SizeModel>? get sizes => throw _privateConstructorUsedError;
  Enum$ProductsProductConditionChoices? get condition =>
      throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  double? get postagePrice => throw _privateConstructorUsedError;
  int get views => throw _privateConstructorUsedError;
  int get likes => throw _privateConstructorUsedError;
  List<String> get imagesUrl => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this Product to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      CategoryModel? category,
      CategoryModel? subCategory,
      List<SizeModel>? sizes,
      Enum$ProductsProductConditionChoices? condition,
      double price,
      double? postagePrice,
      int views,
      int likes,
      List<String> imagesUrl,
      DateTime createdAt,
      DateTime updatedAt});

  $CategoryModelCopyWith<$Res>? get category;
  $CategoryModelCopyWith<$Res>? get subCategory;
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? category = freezed,
    Object? subCategory = freezed,
    Object? sizes = freezed,
    Object? condition = freezed,
    Object? price = null,
    Object? postagePrice = freezed,
    Object? views = null,
    Object? likes = null,
    Object? imagesUrl = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryModel?,
      subCategory: freezed == subCategory
          ? _value.subCategory
          : subCategory // ignore: cast_nullable_to_non_nullable
              as CategoryModel?,
      sizes: freezed == sizes
          ? _value.sizes
          : sizes // ignore: cast_nullable_to_non_nullable
              as List<SizeModel>?,
      condition: freezed == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as Enum$ProductsProductConditionChoices?,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      postagePrice: freezed == postagePrice
          ? _value.postagePrice
          : postagePrice // ignore: cast_nullable_to_non_nullable
              as double?,
      views: null == views
          ? _value.views
          : views // ignore: cast_nullable_to_non_nullable
              as int,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
      imagesUrl: null == imagesUrl
          ? _value.imagesUrl
          : imagesUrl // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryModelCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $CategoryModelCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryModelCopyWith<$Res>? get subCategory {
    if (_value.subCategory == null) {
      return null;
    }

    return $CategoryModelCopyWith<$Res>(_value.subCategory!, (value) {
      return _then(_value.copyWith(subCategory: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductImplCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$ProductImplCopyWith(
          _$ProductImpl value, $Res Function(_$ProductImpl) then) =
      __$$ProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      CategoryModel? category,
      CategoryModel? subCategory,
      List<SizeModel>? sizes,
      Enum$ProductsProductConditionChoices? condition,
      double price,
      double? postagePrice,
      int views,
      int likes,
      List<String> imagesUrl,
      DateTime createdAt,
      DateTime updatedAt});

  @override
  $CategoryModelCopyWith<$Res>? get category;
  @override
  $CategoryModelCopyWith<$Res>? get subCategory;
}

/// @nodoc
class __$$ProductImplCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$ProductImpl>
    implements _$$ProductImplCopyWith<$Res> {
  __$$ProductImplCopyWithImpl(
      _$ProductImpl _value, $Res Function(_$ProductImpl) _then)
      : super(_value, _then);

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? category = freezed,
    Object? subCategory = freezed,
    Object? sizes = freezed,
    Object? condition = freezed,
    Object? price = null,
    Object? postagePrice = freezed,
    Object? views = null,
    Object? likes = null,
    Object? imagesUrl = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$ProductImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryModel?,
      subCategory: freezed == subCategory
          ? _value.subCategory
          : subCategory // ignore: cast_nullable_to_non_nullable
              as CategoryModel?,
      sizes: freezed == sizes
          ? _value._sizes
          : sizes // ignore: cast_nullable_to_non_nullable
              as List<SizeModel>?,
      condition: freezed == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as Enum$ProductsProductConditionChoices?,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      postagePrice: freezed == postagePrice
          ? _value.postagePrice
          : postagePrice // ignore: cast_nullable_to_non_nullable
              as double?,
      views: null == views
          ? _value.views
          : views // ignore: cast_nullable_to_non_nullable
              as int,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
      imagesUrl: null == imagesUrl
          ? _value._imagesUrl
          : imagesUrl // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductImpl implements _Product {
  const _$ProductImpl(
      {required this.id,
      required this.name,
      required this.description,
      this.category,
      this.subCategory,
      final List<SizeModel>? sizes,
      this.condition,
      required this.price,
      this.postagePrice,
      required this.views,
      required this.likes,
      required final List<String> imagesUrl,
      required this.createdAt,
      required this.updatedAt})
      : _sizes = sizes,
        _imagesUrl = imagesUrl;

  factory _$ProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final CategoryModel? category;
  @override
  final CategoryModel? subCategory;
  final List<SizeModel>? _sizes;
  @override
  List<SizeModel>? get sizes {
    final value = _sizes;
    if (value == null) return null;
    if (_sizes is EqualUnmodifiableListView) return _sizes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Enum$ProductsProductConditionChoices? condition;
  @override
  final double price;
  @override
  final double? postagePrice;
  @override
  final int views;
  @override
  final int likes;
  final List<String> _imagesUrl;
  @override
  List<String> get imagesUrl {
    if (_imagesUrl is EqualUnmodifiableListView) return _imagesUrl;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_imagesUrl);
  }

  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'Product(id: $id, name: $name, description: $description, category: $category, subCategory: $subCategory, sizes: $sizes, condition: $condition, price: $price, postagePrice: $postagePrice, views: $views, likes: $likes, imagesUrl: $imagesUrl, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.subCategory, subCategory) ||
                other.subCategory == subCategory) &&
            const DeepCollectionEquality().equals(other._sizes, _sizes) &&
            (identical(other.condition, condition) ||
                other.condition == condition) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.postagePrice, postagePrice) ||
                other.postagePrice == postagePrice) &&
            (identical(other.views, views) || other.views == views) &&
            (identical(other.likes, likes) || other.likes == likes) &&
            const DeepCollectionEquality()
                .equals(other._imagesUrl, _imagesUrl) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      category,
      subCategory,
      const DeepCollectionEquality().hash(_sizes),
      condition,
      price,
      postagePrice,
      views,
      likes,
      const DeepCollectionEquality().hash(_imagesUrl),
      createdAt,
      updatedAt);

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      __$$ProductImplCopyWithImpl<_$ProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductImplToJson(
      this,
    );
  }
}

abstract class _Product implements Product {
  const factory _Product(
      {required final String id,
      required final String name,
      required final String description,
      final CategoryModel? category,
      final CategoryModel? subCategory,
      final List<SizeModel>? sizes,
      final Enum$ProductsProductConditionChoices? condition,
      required final double price,
      final double? postagePrice,
      required final int views,
      required final int likes,
      required final List<String> imagesUrl,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$ProductImpl;

  factory _Product.fromJson(Map<String, dynamic> json) = _$ProductImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  CategoryModel? get category;
  @override
  CategoryModel? get subCategory;
  @override
  List<SizeModel>? get sizes;
  @override
  Enum$ProductsProductConditionChoices? get condition;
  @override
  double get price;
  @override
  double? get postagePrice;
  @override
  int get views;
  @override
  int get likes;
  @override
  List<String> get imagesUrl;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
