// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'language_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LanguageEntity {

 int? get id; String? get language; String? get language_name; bool? get isSelected;
/// Create a copy of LanguageEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LanguageEntityCopyWith<LanguageEntity> get copyWith => _$LanguageEntityCopyWithImpl<LanguageEntity>(this as LanguageEntity, _$identity);

  /// Serializes this LanguageEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LanguageEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.language, language) || other.language == language)&&(identical(other.language_name, language_name) || other.language_name == language_name)&&(identical(other.isSelected, isSelected) || other.isSelected == isSelected));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,language,language_name,isSelected);

@override
String toString() {
  return 'LanguageEntity(id: $id, language: $language, language_name: $language_name, isSelected: $isSelected)';
}


}

/// @nodoc
abstract mixin class $LanguageEntityCopyWith<$Res>  {
  factory $LanguageEntityCopyWith(LanguageEntity value, $Res Function(LanguageEntity) _then) = _$LanguageEntityCopyWithImpl;
@useResult
$Res call({
 int? id, String? language, String? language_name, bool? isSelected
});




}
/// @nodoc
class _$LanguageEntityCopyWithImpl<$Res>
    implements $LanguageEntityCopyWith<$Res> {
  _$LanguageEntityCopyWithImpl(this._self, this._then);

  final LanguageEntity _self;
  final $Res Function(LanguageEntity) _then;

/// Create a copy of LanguageEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? language = freezed,Object? language_name = freezed,Object? isSelected = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,language: freezed == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String?,language_name: freezed == language_name ? _self.language_name : language_name // ignore: cast_nullable_to_non_nullable
as String?,isSelected: freezed == isSelected ? _self.isSelected : isSelected // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [LanguageEntity].
extension LanguageEntityPatterns on LanguageEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LanguageEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LanguageEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LanguageEntity value)  $default,){
final _that = this;
switch (_that) {
case _LanguageEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LanguageEntity value)?  $default,){
final _that = this;
switch (_that) {
case _LanguageEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? language,  String? language_name,  bool? isSelected)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LanguageEntity() when $default != null:
return $default(_that.id,_that.language,_that.language_name,_that.isSelected);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? language,  String? language_name,  bool? isSelected)  $default,) {final _that = this;
switch (_that) {
case _LanguageEntity():
return $default(_that.id,_that.language,_that.language_name,_that.isSelected);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? language,  String? language_name,  bool? isSelected)?  $default,) {final _that = this;
switch (_that) {
case _LanguageEntity() when $default != null:
return $default(_that.id,_that.language,_that.language_name,_that.isSelected);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LanguageEntity implements LanguageEntity {
  const _LanguageEntity({this.id = 0, this.language = '', this.language_name = '', this.isSelected = false});
  factory _LanguageEntity.fromJson(Map<String, dynamic> json) => _$LanguageEntityFromJson(json);

@override@JsonKey() final  int? id;
@override@JsonKey() final  String? language;
@override@JsonKey() final  String? language_name;
@override@JsonKey() final  bool? isSelected;

/// Create a copy of LanguageEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LanguageEntityCopyWith<_LanguageEntity> get copyWith => __$LanguageEntityCopyWithImpl<_LanguageEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LanguageEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LanguageEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.language, language) || other.language == language)&&(identical(other.language_name, language_name) || other.language_name == language_name)&&(identical(other.isSelected, isSelected) || other.isSelected == isSelected));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,language,language_name,isSelected);

@override
String toString() {
  return 'LanguageEntity(id: $id, language: $language, language_name: $language_name, isSelected: $isSelected)';
}


}

/// @nodoc
abstract mixin class _$LanguageEntityCopyWith<$Res> implements $LanguageEntityCopyWith<$Res> {
  factory _$LanguageEntityCopyWith(_LanguageEntity value, $Res Function(_LanguageEntity) _then) = __$LanguageEntityCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? language, String? language_name, bool? isSelected
});




}
/// @nodoc
class __$LanguageEntityCopyWithImpl<$Res>
    implements _$LanguageEntityCopyWith<$Res> {
  __$LanguageEntityCopyWithImpl(this._self, this._then);

  final _LanguageEntity _self;
  final $Res Function(_LanguageEntity) _then;

/// Create a copy of LanguageEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? language = freezed,Object? language_name = freezed,Object? isSelected = freezed,}) {
  return _then(_LanguageEntity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,language: freezed == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String?,language_name: freezed == language_name ? _self.language_name : language_name // ignore: cast_nullable_to_non_nullable
as String?,isSelected: freezed == isSelected ? _self.isSelected : isSelected // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
