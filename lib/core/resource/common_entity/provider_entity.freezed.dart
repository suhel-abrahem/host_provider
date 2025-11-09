// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'provider_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProviderEntity {

 int? get id; String? get name; String? get email; String? get phone; String? get image; String? get created_at; String? get updated_at;
/// Create a copy of ProviderEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProviderEntityCopyWith<ProviderEntity> get copyWith => _$ProviderEntityCopyWithImpl<ProviderEntity>(this as ProviderEntity, _$identity);

  /// Serializes this ProviderEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProviderEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.image, image) || other.image == image)&&(identical(other.created_at, created_at) || other.created_at == created_at)&&(identical(other.updated_at, updated_at) || other.updated_at == updated_at));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,email,phone,image,created_at,updated_at);

@override
String toString() {
  return 'ProviderEntity(id: $id, name: $name, email: $email, phone: $phone, image: $image, created_at: $created_at, updated_at: $updated_at)';
}


}

/// @nodoc
abstract mixin class $ProviderEntityCopyWith<$Res>  {
  factory $ProviderEntityCopyWith(ProviderEntity value, $Res Function(ProviderEntity) _then) = _$ProviderEntityCopyWithImpl;
@useResult
$Res call({
 int? id, String? name, String? email, String? phone, String? image, String? created_at, String? updated_at
});




}
/// @nodoc
class _$ProviderEntityCopyWithImpl<$Res>
    implements $ProviderEntityCopyWith<$Res> {
  _$ProviderEntityCopyWithImpl(this._self, this._then);

  final ProviderEntity _self;
  final $Res Function(ProviderEntity) _then;

/// Create a copy of ProviderEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? email = freezed,Object? phone = freezed,Object? image = freezed,Object? created_at = freezed,Object? updated_at = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,created_at: freezed == created_at ? _self.created_at : created_at // ignore: cast_nullable_to_non_nullable
as String?,updated_at: freezed == updated_at ? _self.updated_at : updated_at // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ProviderEntity].
extension ProviderEntityPatterns on ProviderEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProviderEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProviderEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProviderEntity value)  $default,){
final _that = this;
switch (_that) {
case _ProviderEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProviderEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ProviderEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? name,  String? email,  String? phone,  String? image,  String? created_at,  String? updated_at)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProviderEntity() when $default != null:
return $default(_that.id,_that.name,_that.email,_that.phone,_that.image,_that.created_at,_that.updated_at);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? name,  String? email,  String? phone,  String? image,  String? created_at,  String? updated_at)  $default,) {final _that = this;
switch (_that) {
case _ProviderEntity():
return $default(_that.id,_that.name,_that.email,_that.phone,_that.image,_that.created_at,_that.updated_at);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? name,  String? email,  String? phone,  String? image,  String? created_at,  String? updated_at)?  $default,) {final _that = this;
switch (_that) {
case _ProviderEntity() when $default != null:
return $default(_that.id,_that.name,_that.email,_that.phone,_that.image,_that.created_at,_that.updated_at);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProviderEntity implements ProviderEntity {
  const _ProviderEntity({this.id = 0, this.name = "", this.email = "", this.phone = "", this.image = "", this.created_at = "", this.updated_at = ""});
  factory _ProviderEntity.fromJson(Map<String, dynamic> json) => _$ProviderEntityFromJson(json);

@override@JsonKey() final  int? id;
@override@JsonKey() final  String? name;
@override@JsonKey() final  String? email;
@override@JsonKey() final  String? phone;
@override@JsonKey() final  String? image;
@override@JsonKey() final  String? created_at;
@override@JsonKey() final  String? updated_at;

/// Create a copy of ProviderEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProviderEntityCopyWith<_ProviderEntity> get copyWith => __$ProviderEntityCopyWithImpl<_ProviderEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProviderEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProviderEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.image, image) || other.image == image)&&(identical(other.created_at, created_at) || other.created_at == created_at)&&(identical(other.updated_at, updated_at) || other.updated_at == updated_at));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,email,phone,image,created_at,updated_at);

@override
String toString() {
  return 'ProviderEntity(id: $id, name: $name, email: $email, phone: $phone, image: $image, created_at: $created_at, updated_at: $updated_at)';
}


}

/// @nodoc
abstract mixin class _$ProviderEntityCopyWith<$Res> implements $ProviderEntityCopyWith<$Res> {
  factory _$ProviderEntityCopyWith(_ProviderEntity value, $Res Function(_ProviderEntity) _then) = __$ProviderEntityCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? name, String? email, String? phone, String? image, String? created_at, String? updated_at
});




}
/// @nodoc
class __$ProviderEntityCopyWithImpl<$Res>
    implements _$ProviderEntityCopyWith<$Res> {
  __$ProviderEntityCopyWithImpl(this._self, this._then);

  final _ProviderEntity _self;
  final $Res Function(_ProviderEntity) _then;

/// Create a copy of ProviderEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? email = freezed,Object? phone = freezed,Object? image = freezed,Object? created_at = freezed,Object? updated_at = freezed,}) {
  return _then(_ProviderEntity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,created_at: freezed == created_at ? _self.created_at : created_at // ignore: cast_nullable_to_non_nullable
as String?,updated_at: freezed == updated_at ? _self.updated_at : updated_at // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
