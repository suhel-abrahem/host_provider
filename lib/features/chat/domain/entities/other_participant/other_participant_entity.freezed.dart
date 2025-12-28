// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'other_participant_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OtherParticipantEntity {

 int? get id; String? get name; String? get profile_image;
/// Create a copy of OtherParticipantEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OtherParticipantEntityCopyWith<OtherParticipantEntity> get copyWith => _$OtherParticipantEntityCopyWithImpl<OtherParticipantEntity>(this as OtherParticipantEntity, _$identity);

  /// Serializes this OtherParticipantEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OtherParticipantEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.profile_image, profile_image) || other.profile_image == profile_image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,profile_image);

@override
String toString() {
  return 'OtherParticipantEntity(id: $id, name: $name, profile_image: $profile_image)';
}


}

/// @nodoc
abstract mixin class $OtherParticipantEntityCopyWith<$Res>  {
  factory $OtherParticipantEntityCopyWith(OtherParticipantEntity value, $Res Function(OtherParticipantEntity) _then) = _$OtherParticipantEntityCopyWithImpl;
@useResult
$Res call({
 int? id, String? name, String? profile_image
});




}
/// @nodoc
class _$OtherParticipantEntityCopyWithImpl<$Res>
    implements $OtherParticipantEntityCopyWith<$Res> {
  _$OtherParticipantEntityCopyWithImpl(this._self, this._then);

  final OtherParticipantEntity _self;
  final $Res Function(OtherParticipantEntity) _then;

/// Create a copy of OtherParticipantEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? profile_image = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,profile_image: freezed == profile_image ? _self.profile_image : profile_image // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [OtherParticipantEntity].
extension OtherParticipantEntityPatterns on OtherParticipantEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OtherParticipantEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OtherParticipantEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OtherParticipantEntity value)  $default,){
final _that = this;
switch (_that) {
case _OtherParticipantEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OtherParticipantEntity value)?  $default,){
final _that = this;
switch (_that) {
case _OtherParticipantEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? name,  String? profile_image)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OtherParticipantEntity() when $default != null:
return $default(_that.id,_that.name,_that.profile_image);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? name,  String? profile_image)  $default,) {final _that = this;
switch (_that) {
case _OtherParticipantEntity():
return $default(_that.id,_that.name,_that.profile_image);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? name,  String? profile_image)?  $default,) {final _that = this;
switch (_that) {
case _OtherParticipantEntity() when $default != null:
return $default(_that.id,_that.name,_that.profile_image);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OtherParticipantEntity implements OtherParticipantEntity {
  const _OtherParticipantEntity({this.id = 0, this.name = "", this.profile_image = ""});
  factory _OtherParticipantEntity.fromJson(Map<String, dynamic> json) => _$OtherParticipantEntityFromJson(json);

@override@JsonKey() final  int? id;
@override@JsonKey() final  String? name;
@override@JsonKey() final  String? profile_image;

/// Create a copy of OtherParticipantEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OtherParticipantEntityCopyWith<_OtherParticipantEntity> get copyWith => __$OtherParticipantEntityCopyWithImpl<_OtherParticipantEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OtherParticipantEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OtherParticipantEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.profile_image, profile_image) || other.profile_image == profile_image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,profile_image);

@override
String toString() {
  return 'OtherParticipantEntity(id: $id, name: $name, profile_image: $profile_image)';
}


}

/// @nodoc
abstract mixin class _$OtherParticipantEntityCopyWith<$Res> implements $OtherParticipantEntityCopyWith<$Res> {
  factory _$OtherParticipantEntityCopyWith(_OtherParticipantEntity value, $Res Function(_OtherParticipantEntity) _then) = __$OtherParticipantEntityCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? name, String? profile_image
});




}
/// @nodoc
class __$OtherParticipantEntityCopyWithImpl<$Res>
    implements _$OtherParticipantEntityCopyWith<$Res> {
  __$OtherParticipantEntityCopyWithImpl(this._self, this._then);

  final _OtherParticipantEntity _self;
  final $Res Function(_OtherParticipantEntity) _then;

/// Create a copy of OtherParticipantEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? profile_image = freezed,}) {
  return _then(_OtherParticipantEntity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,profile_image: freezed == profile_image ? _self.profile_image : profile_image // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
