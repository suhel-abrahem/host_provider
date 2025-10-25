// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ServiceEntity implements DiagnosticableTreeMixin {

 int? get id; String? get ar_name; String? get en_name; String? get kr_name; bool? get is_active; String? get image; int? get category_id; String? get created_at; String? get updated_at;
/// Create a copy of ServiceEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServiceEntityCopyWith<ServiceEntity> get copyWith => _$ServiceEntityCopyWithImpl<ServiceEntity>(this as ServiceEntity, _$identity);

  /// Serializes this ServiceEntity to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ServiceEntity'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('ar_name', ar_name))..add(DiagnosticsProperty('en_name', en_name))..add(DiagnosticsProperty('kr_name', kr_name))..add(DiagnosticsProperty('is_active', is_active))..add(DiagnosticsProperty('image', image))..add(DiagnosticsProperty('category_id', category_id))..add(DiagnosticsProperty('created_at', created_at))..add(DiagnosticsProperty('updated_at', updated_at));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServiceEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.ar_name, ar_name) || other.ar_name == ar_name)&&(identical(other.en_name, en_name) || other.en_name == en_name)&&(identical(other.kr_name, kr_name) || other.kr_name == kr_name)&&(identical(other.is_active, is_active) || other.is_active == is_active)&&(identical(other.image, image) || other.image == image)&&(identical(other.category_id, category_id) || other.category_id == category_id)&&(identical(other.created_at, created_at) || other.created_at == created_at)&&(identical(other.updated_at, updated_at) || other.updated_at == updated_at));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,ar_name,en_name,kr_name,is_active,image,category_id,created_at,updated_at);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ServiceEntity(id: $id, ar_name: $ar_name, en_name: $en_name, kr_name: $kr_name, is_active: $is_active, image: $image, category_id: $category_id, created_at: $created_at, updated_at: $updated_at)';
}


}

/// @nodoc
abstract mixin class $ServiceEntityCopyWith<$Res>  {
  factory $ServiceEntityCopyWith(ServiceEntity value, $Res Function(ServiceEntity) _then) = _$ServiceEntityCopyWithImpl;
@useResult
$Res call({
 int? id, String? ar_name, String? en_name, String? kr_name, bool? is_active, String? image, int? category_id, String? created_at, String? updated_at
});




}
/// @nodoc
class _$ServiceEntityCopyWithImpl<$Res>
    implements $ServiceEntityCopyWith<$Res> {
  _$ServiceEntityCopyWithImpl(this._self, this._then);

  final ServiceEntity _self;
  final $Res Function(ServiceEntity) _then;

/// Create a copy of ServiceEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? ar_name = freezed,Object? en_name = freezed,Object? kr_name = freezed,Object? is_active = freezed,Object? image = freezed,Object? category_id = freezed,Object? created_at = freezed,Object? updated_at = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,ar_name: freezed == ar_name ? _self.ar_name : ar_name // ignore: cast_nullable_to_non_nullable
as String?,en_name: freezed == en_name ? _self.en_name : en_name // ignore: cast_nullable_to_non_nullable
as String?,kr_name: freezed == kr_name ? _self.kr_name : kr_name // ignore: cast_nullable_to_non_nullable
as String?,is_active: freezed == is_active ? _self.is_active : is_active // ignore: cast_nullable_to_non_nullable
as bool?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,category_id: freezed == category_id ? _self.category_id : category_id // ignore: cast_nullable_to_non_nullable
as int?,created_at: freezed == created_at ? _self.created_at : created_at // ignore: cast_nullable_to_non_nullable
as String?,updated_at: freezed == updated_at ? _self.updated_at : updated_at // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ServiceEntity].
extension ServiceEntityPatterns on ServiceEntity {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ServiceEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ServiceEntity() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ServiceEntity value)  $default,){
final _that = this;
switch (_that) {
case _ServiceEntity():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ServiceEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ServiceEntity() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? ar_name,  String? en_name,  String? kr_name,  bool? is_active,  String? image,  int? category_id,  String? created_at,  String? updated_at)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ServiceEntity() when $default != null:
return $default(_that.id,_that.ar_name,_that.en_name,_that.kr_name,_that.is_active,_that.image,_that.category_id,_that.created_at,_that.updated_at);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? ar_name,  String? en_name,  String? kr_name,  bool? is_active,  String? image,  int? category_id,  String? created_at,  String? updated_at)  $default,) {final _that = this;
switch (_that) {
case _ServiceEntity():
return $default(_that.id,_that.ar_name,_that.en_name,_that.kr_name,_that.is_active,_that.image,_that.category_id,_that.created_at,_that.updated_at);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? ar_name,  String? en_name,  String? kr_name,  bool? is_active,  String? image,  int? category_id,  String? created_at,  String? updated_at)?  $default,) {final _that = this;
switch (_that) {
case _ServiceEntity() when $default != null:
return $default(_that.id,_that.ar_name,_that.en_name,_that.kr_name,_that.is_active,_that.image,_that.category_id,_that.created_at,_that.updated_at);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ServiceEntity with DiagnosticableTreeMixin implements ServiceEntity {
  const _ServiceEntity({this.id = 0, this.ar_name = "", this.en_name = "", this.kr_name = "", this.is_active = false, this.image = "", this.category_id = 0, this.created_at = "", this.updated_at = ""});
  factory _ServiceEntity.fromJson(Map<String, dynamic> json) => _$ServiceEntityFromJson(json);

@override@JsonKey() final  int? id;
@override@JsonKey() final  String? ar_name;
@override@JsonKey() final  String? en_name;
@override@JsonKey() final  String? kr_name;
@override@JsonKey() final  bool? is_active;
@override@JsonKey() final  String? image;
@override@JsonKey() final  int? category_id;
@override@JsonKey() final  String? created_at;
@override@JsonKey() final  String? updated_at;

/// Create a copy of ServiceEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ServiceEntityCopyWith<_ServiceEntity> get copyWith => __$ServiceEntityCopyWithImpl<_ServiceEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ServiceEntityToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ServiceEntity'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('ar_name', ar_name))..add(DiagnosticsProperty('en_name', en_name))..add(DiagnosticsProperty('kr_name', kr_name))..add(DiagnosticsProperty('is_active', is_active))..add(DiagnosticsProperty('image', image))..add(DiagnosticsProperty('category_id', category_id))..add(DiagnosticsProperty('created_at', created_at))..add(DiagnosticsProperty('updated_at', updated_at));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ServiceEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.ar_name, ar_name) || other.ar_name == ar_name)&&(identical(other.en_name, en_name) || other.en_name == en_name)&&(identical(other.kr_name, kr_name) || other.kr_name == kr_name)&&(identical(other.is_active, is_active) || other.is_active == is_active)&&(identical(other.image, image) || other.image == image)&&(identical(other.category_id, category_id) || other.category_id == category_id)&&(identical(other.created_at, created_at) || other.created_at == created_at)&&(identical(other.updated_at, updated_at) || other.updated_at == updated_at));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,ar_name,en_name,kr_name,is_active,image,category_id,created_at,updated_at);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ServiceEntity(id: $id, ar_name: $ar_name, en_name: $en_name, kr_name: $kr_name, is_active: $is_active, image: $image, category_id: $category_id, created_at: $created_at, updated_at: $updated_at)';
}


}

/// @nodoc
abstract mixin class _$ServiceEntityCopyWith<$Res> implements $ServiceEntityCopyWith<$Res> {
  factory _$ServiceEntityCopyWith(_ServiceEntity value, $Res Function(_ServiceEntity) _then) = __$ServiceEntityCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? ar_name, String? en_name, String? kr_name, bool? is_active, String? image, int? category_id, String? created_at, String? updated_at
});




}
/// @nodoc
class __$ServiceEntityCopyWithImpl<$Res>
    implements _$ServiceEntityCopyWith<$Res> {
  __$ServiceEntityCopyWithImpl(this._self, this._then);

  final _ServiceEntity _self;
  final $Res Function(_ServiceEntity) _then;

/// Create a copy of ServiceEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? ar_name = freezed,Object? en_name = freezed,Object? kr_name = freezed,Object? is_active = freezed,Object? image = freezed,Object? category_id = freezed,Object? created_at = freezed,Object? updated_at = freezed,}) {
  return _then(_ServiceEntity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,ar_name: freezed == ar_name ? _self.ar_name : ar_name // ignore: cast_nullable_to_non_nullable
as String?,en_name: freezed == en_name ? _self.en_name : en_name // ignore: cast_nullable_to_non_nullable
as String?,kr_name: freezed == kr_name ? _self.kr_name : kr_name // ignore: cast_nullable_to_non_nullable
as String?,is_active: freezed == is_active ? _self.is_active : is_active // ignore: cast_nullable_to_non_nullable
as bool?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,category_id: freezed == category_id ? _self.category_id : category_id // ignore: cast_nullable_to_non_nullable
as int?,created_at: freezed == created_at ? _self.created_at : created_at // ignore: cast_nullable_to_non_nullable
as String?,updated_at: freezed == updated_at ? _self.updated_at : updated_at // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
