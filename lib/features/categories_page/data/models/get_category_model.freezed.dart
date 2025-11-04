// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetCategoryModel {

 String? get Authorization; String? get acceptLanguage;
/// Create a copy of GetCategoryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetCategoryModelCopyWith<GetCategoryModel> get copyWith => _$GetCategoryModelCopyWithImpl<GetCategoryModel>(this as GetCategoryModel, _$identity);

  /// Serializes this GetCategoryModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetCategoryModel&&(identical(other.Authorization, Authorization) || other.Authorization == Authorization)&&(identical(other.acceptLanguage, acceptLanguage) || other.acceptLanguage == acceptLanguage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,Authorization,acceptLanguage);

@override
String toString() {
  return 'GetCategoryModel(Authorization: $Authorization, acceptLanguage: $acceptLanguage)';
}


}

/// @nodoc
abstract mixin class $GetCategoryModelCopyWith<$Res>  {
  factory $GetCategoryModelCopyWith(GetCategoryModel value, $Res Function(GetCategoryModel) _then) = _$GetCategoryModelCopyWithImpl;
@useResult
$Res call({
 String? Authorization, String? acceptLanguage
});




}
/// @nodoc
class _$GetCategoryModelCopyWithImpl<$Res>
    implements $GetCategoryModelCopyWith<$Res> {
  _$GetCategoryModelCopyWithImpl(this._self, this._then);

  final GetCategoryModel _self;
  final $Res Function(GetCategoryModel) _then;

/// Create a copy of GetCategoryModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? Authorization = freezed,Object? acceptLanguage = freezed,}) {
  return _then(_self.copyWith(
Authorization: freezed == Authorization ? _self.Authorization : Authorization // ignore: cast_nullable_to_non_nullable
as String?,acceptLanguage: freezed == acceptLanguage ? _self.acceptLanguage : acceptLanguage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [GetCategoryModel].
extension GetCategoryModelPatterns on GetCategoryModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetCategoryModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetCategoryModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetCategoryModel value)  $default,){
final _that = this;
switch (_that) {
case _GetCategoryModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetCategoryModel value)?  $default,){
final _that = this;
switch (_that) {
case _GetCategoryModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? Authorization,  String? acceptLanguage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetCategoryModel() when $default != null:
return $default(_that.Authorization,_that.acceptLanguage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? Authorization,  String? acceptLanguage)  $default,) {final _that = this;
switch (_that) {
case _GetCategoryModel():
return $default(_that.Authorization,_that.acceptLanguage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? Authorization,  String? acceptLanguage)?  $default,) {final _that = this;
switch (_that) {
case _GetCategoryModel() when $default != null:
return $default(_that.Authorization,_that.acceptLanguage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetCategoryModel implements GetCategoryModel {
  const _GetCategoryModel({this.Authorization = "", this.acceptLanguage = ""});
  factory _GetCategoryModel.fromJson(Map<String, dynamic> json) => _$GetCategoryModelFromJson(json);

@override@JsonKey() final  String? Authorization;
@override@JsonKey() final  String? acceptLanguage;

/// Create a copy of GetCategoryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetCategoryModelCopyWith<_GetCategoryModel> get copyWith => __$GetCategoryModelCopyWithImpl<_GetCategoryModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetCategoryModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetCategoryModel&&(identical(other.Authorization, Authorization) || other.Authorization == Authorization)&&(identical(other.acceptLanguage, acceptLanguage) || other.acceptLanguage == acceptLanguage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,Authorization,acceptLanguage);

@override
String toString() {
  return 'GetCategoryModel(Authorization: $Authorization, acceptLanguage: $acceptLanguage)';
}


}

/// @nodoc
abstract mixin class _$GetCategoryModelCopyWith<$Res> implements $GetCategoryModelCopyWith<$Res> {
  factory _$GetCategoryModelCopyWith(_GetCategoryModel value, $Res Function(_GetCategoryModel) _then) = __$GetCategoryModelCopyWithImpl;
@override @useResult
$Res call({
 String? Authorization, String? acceptLanguage
});




}
/// @nodoc
class __$GetCategoryModelCopyWithImpl<$Res>
    implements _$GetCategoryModelCopyWith<$Res> {
  __$GetCategoryModelCopyWithImpl(this._self, this._then);

  final _GetCategoryModel _self;
  final $Res Function(_GetCategoryModel) _then;

/// Create a copy of GetCategoryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? Authorization = freezed,Object? acceptLanguage = freezed,}) {
  return _then(_GetCategoryModel(
Authorization: freezed == Authorization ? _self.Authorization : Authorization // ignore: cast_nullable_to_non_nullable
as String?,acceptLanguage: freezed == acceptLanguage ? _self.acceptLanguage : acceptLanguage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
