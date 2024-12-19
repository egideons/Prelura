// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NotificationModel _$NotificationModelFromJson(Map<String, dynamic> json) {
  return _NotificationModel.fromJson(json);
}

/// @nodoc
mixin _$NotificationModel {
  int get id => throw _privateConstructorUsedError;
  UserModel get sender => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String get model => throw _privateConstructorUsedError;
  String? get modelId => throw _privateConstructorUsedError;
  String? get modelGroup => throw _privateConstructorUsedError;
  bool? get isRead => throw _privateConstructorUsedError;
  bool? get delivered => throw _privateConstructorUsedError;
  bool? get deleted => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  Map<String, dynamic> get meta => throw _privateConstructorUsedError;

  /// Serializes this NotificationModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NotificationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationModelCopyWith<NotificationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationModelCopyWith<$Res> {
  factory $NotificationModelCopyWith(
          NotificationModel value, $Res Function(NotificationModel) then) =
      _$NotificationModelCopyWithImpl<$Res, NotificationModel>;
  @useResult
  $Res call(
      {int id,
      UserModel sender,
      String message,
      String model,
      String? modelId,
      String? modelGroup,
      bool? isRead,
      bool? delivered,
      bool? deleted,
      DateTime? createdAt,
      DateTime? updatedAt,
      Map<String, dynamic> meta});

  $UserModelCopyWith<$Res> get sender;
}

/// @nodoc
class _$NotificationModelCopyWithImpl<$Res, $Val extends NotificationModel>
    implements $NotificationModelCopyWith<$Res> {
  _$NotificationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sender = null,
    Object? message = null,
    Object? model = null,
    Object? modelId = freezed,
    Object? modelGroup = freezed,
    Object? isRead = freezed,
    Object? delivered = freezed,
    Object? deleted = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? meta = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      sender: null == sender
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as UserModel,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      modelId: freezed == modelId
          ? _value.modelId
          : modelId // ignore: cast_nullable_to_non_nullable
              as String?,
      modelGroup: freezed == modelGroup
          ? _value.modelGroup
          : modelGroup // ignore: cast_nullable_to_non_nullable
              as String?,
      isRead: freezed == isRead
          ? _value.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
              as bool?,
      delivered: freezed == delivered
          ? _value.delivered
          : delivered // ignore: cast_nullable_to_non_nullable
              as bool?,
      deleted: freezed == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }

  /// Create a copy of NotificationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get sender {
    return $UserModelCopyWith<$Res>(_value.sender, (value) {
      return _then(_value.copyWith(sender: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NotificationModelImplCopyWith<$Res>
    implements $NotificationModelCopyWith<$Res> {
  factory _$$NotificationModelImplCopyWith(_$NotificationModelImpl value,
          $Res Function(_$NotificationModelImpl) then) =
      __$$NotificationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      UserModel sender,
      String message,
      String model,
      String? modelId,
      String? modelGroup,
      bool? isRead,
      bool? delivered,
      bool? deleted,
      DateTime? createdAt,
      DateTime? updatedAt,
      Map<String, dynamic> meta});

  @override
  $UserModelCopyWith<$Res> get sender;
}

/// @nodoc
class __$$NotificationModelImplCopyWithImpl<$Res>
    extends _$NotificationModelCopyWithImpl<$Res, _$NotificationModelImpl>
    implements _$$NotificationModelImplCopyWith<$Res> {
  __$$NotificationModelImplCopyWithImpl(_$NotificationModelImpl _value,
      $Res Function(_$NotificationModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sender = null,
    Object? message = null,
    Object? model = null,
    Object? modelId = freezed,
    Object? modelGroup = freezed,
    Object? isRead = freezed,
    Object? delivered = freezed,
    Object? deleted = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? meta = null,
  }) {
    return _then(_$NotificationModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      sender: null == sender
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as UserModel,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      modelId: freezed == modelId
          ? _value.modelId
          : modelId // ignore: cast_nullable_to_non_nullable
              as String?,
      modelGroup: freezed == modelGroup
          ? _value.modelGroup
          : modelGroup // ignore: cast_nullable_to_non_nullable
              as String?,
      isRead: freezed == isRead
          ? _value.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
              as bool?,
      delivered: freezed == delivered
          ? _value.delivered
          : delivered // ignore: cast_nullable_to_non_nullable
              as bool?,
      deleted: freezed == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      meta: null == meta
          ? _value._meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationModelImpl implements _NotificationModel {
  const _$NotificationModelImpl(
      {required this.id,
      required this.sender,
      required this.message,
      required this.model,
      this.modelId,
      this.modelGroup,
      this.isRead,
      this.delivered,
      this.deleted,
      this.createdAt,
      this.updatedAt,
      required final Map<String, dynamic> meta})
      : _meta = meta;

  factory _$NotificationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationModelImplFromJson(json);

  @override
  final int id;
  @override
  final UserModel sender;
  @override
  final String message;
  @override
  final String model;
  @override
  final String? modelId;
  @override
  final String? modelGroup;
  @override
  final bool? isRead;
  @override
  final bool? delivered;
  @override
  final bool? deleted;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  final Map<String, dynamic> _meta;
  @override
  Map<String, dynamic> get meta {
    if (_meta is EqualUnmodifiableMapView) return _meta;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_meta);
  }

  @override
  String toString() {
    return 'NotificationModel(id: $id, sender: $sender, message: $message, model: $model, modelId: $modelId, modelGroup: $modelGroup, isRead: $isRead, delivered: $delivered, deleted: $deleted, createdAt: $createdAt, updatedAt: $updatedAt, meta: $meta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sender, sender) || other.sender == sender) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.modelId, modelId) || other.modelId == modelId) &&
            (identical(other.modelGroup, modelGroup) ||
                other.modelGroup == modelGroup) &&
            (identical(other.isRead, isRead) || other.isRead == isRead) &&
            (identical(other.delivered, delivered) ||
                other.delivered == delivered) &&
            (identical(other.deleted, deleted) || other.deleted == deleted) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality().equals(other._meta, _meta));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      sender,
      message,
      model,
      modelId,
      modelGroup,
      isRead,
      delivered,
      deleted,
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(_meta));

  /// Create a copy of NotificationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationModelImplCopyWith<_$NotificationModelImpl> get copyWith =>
      __$$NotificationModelImplCopyWithImpl<_$NotificationModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationModelImplToJson(
      this,
    );
  }
}

abstract class _NotificationModel implements NotificationModel {
  const factory _NotificationModel(
      {required final int id,
      required final UserModel sender,
      required final String message,
      required final String model,
      final String? modelId,
      final String? modelGroup,
      final bool? isRead,
      final bool? delivered,
      final bool? deleted,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      required final Map<String, dynamic> meta}) = _$NotificationModelImpl;

  factory _NotificationModel.fromJson(Map<String, dynamic> json) =
      _$NotificationModelImpl.fromJson;

  @override
  int get id;
  @override
  UserModel get sender;
  @override
  String get message;
  @override
  String get model;
  @override
  String? get modelId;
  @override
  String? get modelGroup;
  @override
  bool? get isRead;
  @override
  bool? get delivered;
  @override
  bool? get deleted;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  Map<String, dynamic> get meta;

  /// Create a copy of NotificationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationModelImplCopyWith<_$NotificationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NotificationPreference _$NotificationPreferenceFromJson(
    Map<String, dynamic> json) {
  return _NotificationPreference.fromJson(json);
}

/// @nodoc
mixin _$NotificationPreference {
  UserModel? get user => throw _privateConstructorUsedError;
  bool? get isPushNotification => throw _privateConstructorUsedError;
  bool? get isEmailNotification => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _parseNotifications, toJson: _convertToJson)
  NotificationsPreferenceInputType? get inappNotifications =>
      throw _privateConstructorUsedError;
  @JsonKey(fromJson: _parseNotifications, toJson: _convertToJson)
  NotificationsPreferenceInputType? get emailNotifications =>
      throw _privateConstructorUsedError;

  /// Serializes this NotificationPreference to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NotificationPreference
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationPreferenceCopyWith<NotificationPreference> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationPreferenceCopyWith<$Res> {
  factory $NotificationPreferenceCopyWith(NotificationPreference value,
          $Res Function(NotificationPreference) then) =
      _$NotificationPreferenceCopyWithImpl<$Res, NotificationPreference>;
  @useResult
  $Res call(
      {UserModel? user,
      bool? isPushNotification,
      bool? isEmailNotification,
      @JsonKey(fromJson: _parseNotifications, toJson: _convertToJson)
      NotificationsPreferenceInputType? inappNotifications,
      @JsonKey(fromJson: _parseNotifications, toJson: _convertToJson)
      NotificationsPreferenceInputType? emailNotifications});

  $UserModelCopyWith<$Res>? get user;
  $NotificationsPreferenceInputTypeCopyWith<$Res>? get inappNotifications;
  $NotificationsPreferenceInputTypeCopyWith<$Res>? get emailNotifications;
}

/// @nodoc
class _$NotificationPreferenceCopyWithImpl<$Res,
        $Val extends NotificationPreference>
    implements $NotificationPreferenceCopyWith<$Res> {
  _$NotificationPreferenceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationPreference
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? isPushNotification = freezed,
    Object? isEmailNotification = freezed,
    Object? inappNotifications = freezed,
    Object? emailNotifications = freezed,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      isPushNotification: freezed == isPushNotification
          ? _value.isPushNotification
          : isPushNotification // ignore: cast_nullable_to_non_nullable
              as bool?,
      isEmailNotification: freezed == isEmailNotification
          ? _value.isEmailNotification
          : isEmailNotification // ignore: cast_nullable_to_non_nullable
              as bool?,
      inappNotifications: freezed == inappNotifications
          ? _value.inappNotifications
          : inappNotifications // ignore: cast_nullable_to_non_nullable
              as NotificationsPreferenceInputType?,
      emailNotifications: freezed == emailNotifications
          ? _value.emailNotifications
          : emailNotifications // ignore: cast_nullable_to_non_nullable
              as NotificationsPreferenceInputType?,
    ) as $Val);
  }

  /// Create a copy of NotificationPreference
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  /// Create a copy of NotificationPreference
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NotificationsPreferenceInputTypeCopyWith<$Res>? get inappNotifications {
    if (_value.inappNotifications == null) {
      return null;
    }

    return $NotificationsPreferenceInputTypeCopyWith<$Res>(
        _value.inappNotifications!, (value) {
      return _then(_value.copyWith(inappNotifications: value) as $Val);
    });
  }

  /// Create a copy of NotificationPreference
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NotificationsPreferenceInputTypeCopyWith<$Res>? get emailNotifications {
    if (_value.emailNotifications == null) {
      return null;
    }

    return $NotificationsPreferenceInputTypeCopyWith<$Res>(
        _value.emailNotifications!, (value) {
      return _then(_value.copyWith(emailNotifications: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NotificationPreferenceImplCopyWith<$Res>
    implements $NotificationPreferenceCopyWith<$Res> {
  factory _$$NotificationPreferenceImplCopyWith(
          _$NotificationPreferenceImpl value,
          $Res Function(_$NotificationPreferenceImpl) then) =
      __$$NotificationPreferenceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UserModel? user,
      bool? isPushNotification,
      bool? isEmailNotification,
      @JsonKey(fromJson: _parseNotifications, toJson: _convertToJson)
      NotificationsPreferenceInputType? inappNotifications,
      @JsonKey(fromJson: _parseNotifications, toJson: _convertToJson)
      NotificationsPreferenceInputType? emailNotifications});

  @override
  $UserModelCopyWith<$Res>? get user;
  @override
  $NotificationsPreferenceInputTypeCopyWith<$Res>? get inappNotifications;
  @override
  $NotificationsPreferenceInputTypeCopyWith<$Res>? get emailNotifications;
}

/// @nodoc
class __$$NotificationPreferenceImplCopyWithImpl<$Res>
    extends _$NotificationPreferenceCopyWithImpl<$Res,
        _$NotificationPreferenceImpl>
    implements _$$NotificationPreferenceImplCopyWith<$Res> {
  __$$NotificationPreferenceImplCopyWithImpl(
      _$NotificationPreferenceImpl _value,
      $Res Function(_$NotificationPreferenceImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationPreference
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? isPushNotification = freezed,
    Object? isEmailNotification = freezed,
    Object? inappNotifications = freezed,
    Object? emailNotifications = freezed,
  }) {
    return _then(_$NotificationPreferenceImpl(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      isPushNotification: freezed == isPushNotification
          ? _value.isPushNotification
          : isPushNotification // ignore: cast_nullable_to_non_nullable
              as bool?,
      isEmailNotification: freezed == isEmailNotification
          ? _value.isEmailNotification
          : isEmailNotification // ignore: cast_nullable_to_non_nullable
              as bool?,
      inappNotifications: freezed == inappNotifications
          ? _value.inappNotifications
          : inappNotifications // ignore: cast_nullable_to_non_nullable
              as NotificationsPreferenceInputType?,
      emailNotifications: freezed == emailNotifications
          ? _value.emailNotifications
          : emailNotifications // ignore: cast_nullable_to_non_nullable
              as NotificationsPreferenceInputType?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationPreferenceImpl implements _NotificationPreference {
  const _$NotificationPreferenceImpl(
      {this.user,
      this.isPushNotification,
      this.isEmailNotification,
      @JsonKey(fromJson: _parseNotifications, toJson: _convertToJson)
      this.inappNotifications,
      @JsonKey(fromJson: _parseNotifications, toJson: _convertToJson)
      this.emailNotifications});

  factory _$NotificationPreferenceImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationPreferenceImplFromJson(json);

  @override
  final UserModel? user;
  @override
  final bool? isPushNotification;
  @override
  final bool? isEmailNotification;
  @override
  @JsonKey(fromJson: _parseNotifications, toJson: _convertToJson)
  final NotificationsPreferenceInputType? inappNotifications;
  @override
  @JsonKey(fromJson: _parseNotifications, toJson: _convertToJson)
  final NotificationsPreferenceInputType? emailNotifications;

  @override
  String toString() {
    return 'NotificationPreference(user: $user, isPushNotification: $isPushNotification, isEmailNotification: $isEmailNotification, inappNotifications: $inappNotifications, emailNotifications: $emailNotifications)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationPreferenceImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.isPushNotification, isPushNotification) ||
                other.isPushNotification == isPushNotification) &&
            (identical(other.isEmailNotification, isEmailNotification) ||
                other.isEmailNotification == isEmailNotification) &&
            (identical(other.inappNotifications, inappNotifications) ||
                other.inappNotifications == inappNotifications) &&
            (identical(other.emailNotifications, emailNotifications) ||
                other.emailNotifications == emailNotifications));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, user, isPushNotification,
      isEmailNotification, inappNotifications, emailNotifications);

  /// Create a copy of NotificationPreference
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationPreferenceImplCopyWith<_$NotificationPreferenceImpl>
      get copyWith => __$$NotificationPreferenceImplCopyWithImpl<
          _$NotificationPreferenceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationPreferenceImplToJson(
      this,
    );
  }
}

abstract class _NotificationPreference implements NotificationPreference {
  const factory _NotificationPreference(
          {final UserModel? user,
          final bool? isPushNotification,
          final bool? isEmailNotification,
          @JsonKey(fromJson: _parseNotifications, toJson: _convertToJson)
          final NotificationsPreferenceInputType? inappNotifications,
          @JsonKey(fromJson: _parseNotifications, toJson: _convertToJson)
          final NotificationsPreferenceInputType? emailNotifications}) =
      _$NotificationPreferenceImpl;

  factory _NotificationPreference.fromJson(Map<String, dynamic> json) =
      _$NotificationPreferenceImpl.fromJson;

  @override
  UserModel? get user;
  @override
  bool? get isPushNotification;
  @override
  bool? get isEmailNotification;
  @override
  @JsonKey(fromJson: _parseNotifications, toJson: _convertToJson)
  NotificationsPreferenceInputType? get inappNotifications;
  @override
  @JsonKey(fromJson: _parseNotifications, toJson: _convertToJson)
  NotificationsPreferenceInputType? get emailNotifications;

  /// Create a copy of NotificationPreference
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationPreferenceImplCopyWith<_$NotificationPreferenceImpl>
      get copyWith => throw _privateConstructorUsedError;
}

NotificationsPreferenceInputType _$NotificationsPreferenceInputTypeFromJson(
    Map<String, dynamic> json) {
  return _NotificationsPreferenceInputType.fromJson(json);
}

/// @nodoc
mixin _$NotificationsPreferenceInputType {
  bool? get likes => throw _privateConstructorUsedError;
  bool? get newFollowers => throw _privateConstructorUsedError;
  bool? get profileView => throw _privateConstructorUsedError;
  bool? get messages => throw _privateConstructorUsedError;

  /// Serializes this NotificationsPreferenceInputType to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NotificationsPreferenceInputType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NotificationsPreferenceInputTypeCopyWith<NotificationsPreferenceInputType>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationsPreferenceInputTypeCopyWith<$Res> {
  factory $NotificationsPreferenceInputTypeCopyWith(
          NotificationsPreferenceInputType value,
          $Res Function(NotificationsPreferenceInputType) then) =
      _$NotificationsPreferenceInputTypeCopyWithImpl<$Res,
          NotificationsPreferenceInputType>;
  @useResult
  $Res call(
      {bool? likes, bool? newFollowers, bool? profileView, bool? messages});
}

/// @nodoc
class _$NotificationsPreferenceInputTypeCopyWithImpl<$Res,
        $Val extends NotificationsPreferenceInputType>
    implements $NotificationsPreferenceInputTypeCopyWith<$Res> {
  _$NotificationsPreferenceInputTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationsPreferenceInputType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? likes = freezed,
    Object? newFollowers = freezed,
    Object? profileView = freezed,
    Object? messages = freezed,
  }) {
    return _then(_value.copyWith(
      likes: freezed == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as bool?,
      newFollowers: freezed == newFollowers
          ? _value.newFollowers
          : newFollowers // ignore: cast_nullable_to_non_nullable
              as bool?,
      profileView: freezed == profileView
          ? _value.profileView
          : profileView // ignore: cast_nullable_to_non_nullable
              as bool?,
      messages: freezed == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificationsPreferenceInputTypeImplCopyWith<$Res>
    implements $NotificationsPreferenceInputTypeCopyWith<$Res> {
  factory _$$NotificationsPreferenceInputTypeImplCopyWith(
          _$NotificationsPreferenceInputTypeImpl value,
          $Res Function(_$NotificationsPreferenceInputTypeImpl) then) =
      __$$NotificationsPreferenceInputTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? likes, bool? newFollowers, bool? profileView, bool? messages});
}

/// @nodoc
class __$$NotificationsPreferenceInputTypeImplCopyWithImpl<$Res>
    extends _$NotificationsPreferenceInputTypeCopyWithImpl<$Res,
        _$NotificationsPreferenceInputTypeImpl>
    implements _$$NotificationsPreferenceInputTypeImplCopyWith<$Res> {
  __$$NotificationsPreferenceInputTypeImplCopyWithImpl(
      _$NotificationsPreferenceInputTypeImpl _value,
      $Res Function(_$NotificationsPreferenceInputTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationsPreferenceInputType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? likes = freezed,
    Object? newFollowers = freezed,
    Object? profileView = freezed,
    Object? messages = freezed,
  }) {
    return _then(_$NotificationsPreferenceInputTypeImpl(
      likes: freezed == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as bool?,
      newFollowers: freezed == newFollowers
          ? _value.newFollowers
          : newFollowers // ignore: cast_nullable_to_non_nullable
              as bool?,
      profileView: freezed == profileView
          ? _value.profileView
          : profileView // ignore: cast_nullable_to_non_nullable
              as bool?,
      messages: freezed == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NotificationsPreferenceInputTypeImpl
    implements _NotificationsPreferenceInputType {
  const _$NotificationsPreferenceInputTypeImpl(
      {this.likes, this.newFollowers, this.profileView, this.messages});

  factory _$NotificationsPreferenceInputTypeImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$NotificationsPreferenceInputTypeImplFromJson(json);

  @override
  final bool? likes;
  @override
  final bool? newFollowers;
  @override
  final bool? profileView;
  @override
  final bool? messages;

  @override
  String toString() {
    return 'NotificationsPreferenceInputType(likes: $likes, newFollowers: $newFollowers, profileView: $profileView, messages: $messages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationsPreferenceInputTypeImpl &&
            (identical(other.likes, likes) || other.likes == likes) &&
            (identical(other.newFollowers, newFollowers) ||
                other.newFollowers == newFollowers) &&
            (identical(other.profileView, profileView) ||
                other.profileView == profileView) &&
            (identical(other.messages, messages) ||
                other.messages == messages));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, likes, newFollowers, profileView, messages);

  /// Create a copy of NotificationsPreferenceInputType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationsPreferenceInputTypeImplCopyWith<
          _$NotificationsPreferenceInputTypeImpl>
      get copyWith => __$$NotificationsPreferenceInputTypeImplCopyWithImpl<
          _$NotificationsPreferenceInputTypeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationsPreferenceInputTypeImplToJson(
      this,
    );
  }
}

abstract class _NotificationsPreferenceInputType
    implements NotificationsPreferenceInputType {
  const factory _NotificationsPreferenceInputType(
      {final bool? likes,
      final bool? newFollowers,
      final bool? profileView,
      final bool? messages}) = _$NotificationsPreferenceInputTypeImpl;

  factory _NotificationsPreferenceInputType.fromJson(
          Map<String, dynamic> json) =
      _$NotificationsPreferenceInputTypeImpl.fromJson;

  @override
  bool? get likes;
  @override
  bool? get newFollowers;
  @override
  bool? get profileView;
  @override
  bool? get messages;

  /// Create a copy of NotificationsPreferenceInputType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NotificationsPreferenceInputTypeImplCopyWith<
          _$NotificationsPreferenceInputTypeImpl>
      get copyWith => throw _privateConstructorUsedError;
}
