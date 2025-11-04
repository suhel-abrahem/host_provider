// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_my_service_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetMyServiceModel {

 String? get Authorization; String? get acceptLanguage;
/// Create a copy of GetMyServiceModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetMyServiceModelCopyWith<GetMyServiceModel> get copyWith => _$GetMyServiceModelCopyWithImpl<GetMyServiceModel>(this as GetMyServiceModel, _$identity);

  /// Serializes this GetMyServiceModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetMyServiceModel&&(identical(other.Authorization, Authorization) || other.Authorization == Authorization)&&(identical(other.acceptLanguage, acceptLanguage) || other.acceptLanguage == acceptLanguage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,Authorization,acceptLanguage);

@override
String toString() {
  return 'GetMyServiceModel(Authorization: $Authorization, acceptLanguage: $acceptLanguage)';
}


}

/// @nodoc
abstract mixin class $GetMyServiceModelCopyWith<$Res>  {
  factory $GetMyServiceModelCopyWith(GetMyServiceModel value, $Res Function(GetMyServiceModel) _then) = _$GetMyServiceModelCopyWithImpl;
@useResult
$Res call({
 String? Authorization, String? acceptLanguage
});




}
/// @nodoc
class _$GetMyServiceModelCopyWithImpl<$Res>
    implements $GetMyServiceModelCopyWith<$Res> {
  _$GetMyServiceModelCopyWithImpl(this._self, this._then);

  final GetMyServiceModel _self;
  final $Res Function(GetMyServiceModel) _then;

/// Create a copy of GetMyServiceModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? Authorization = freezed,Object? acceptLanguage = freezed,}) {
  return _then(_self.copyWith(
Authorization: freezed == Authorization ? _self.Authorization : Authorization // ignore: cast_nullable_to_non_nullable
as String?,acceptLanguage: freezed == acceptLanguage ? _self.acceptLanguage : acceptLanguage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [GetMyServiceModel].
extension GetMyServiceModelPatterns on GetMyServiceModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetMyServiceModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetMyServiceModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetMyServiceModel value)  $default,){
final _that = this;
switch (_that) {
case _GetMyServiceModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetMyServiceModel value)?  $default,){
final _that = this;
switch (_that) {
case _GetMyServiceModel() when $default != null:
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
case _GetMyServiceModel() when $default != null:
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
case _GetMyServiceModel():
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
case _GetMyServiceModel() when $default != null:
return $default(_that.Authorization,_that.acceptLanguage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetMyServiceModel implements GetMyServiceModel {
  const _GetMyServiceModel({this.Authorization = "", this.acceptLanguage = ""});
  factory _GetMyServiceModel.fromJson(Map<String, dynamic> json) => _$GetMyServiceModelFromJson(json);

@override@JsonKey() final  String? Authorization;
@override@JsonKey() final  String? acceptLanguage;

/// Create a copy of GetMyServiceModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetMyServiceModelCopyWith<_GetMyServiceModel> get copyWith => __$GetMyServiceModelCopyWithImpl<_GetMyServiceModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetMyServiceModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetMyServiceModel&&(identical(other.Authorization, Authorization) || other.Authorization == Authorization)&&(identical(other.acceptLanguage, acceptLanguage) || other.acceptLanguage == acceptLanguage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,Authorization,acceptLanguage);

@override
String toString() {
  return 'GetMyServiceModel(Authorization: $Authorization, acceptLanguage: $acceptLanguage)';
}


}

/// @nodoc
abstract mixin class _$GetMyServiceModelCopyWith<$Res> implements $GetMyServiceModelCopyWith<$Res> {
  factory _$GetMyServiceModelCopyWith(_GetMyServiceModel value, $Res Function(_GetMyServiceModel) _then) = __$GetMyServiceModelCopyWithImpl;
@override @useResult
$Res call({
 String? Authorization, String? acceptLanguage
});




}
/// @nodoc
class __$GetMyServiceModelCopyWithImpl<$Res>
    implements _$GetMyServiceModelCopyWith<$Res> {
  __$GetMyServiceModelCopyWithImpl(this._self, this._then);

  final _GetMyServiceModel _self;
  final $Res Function(_GetMyServiceModel) _then;

/// Create a copy of GetMyServiceModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? Authorization = freezed,Object? acceptLanguage = freezed,}) {
  return _then(_GetMyServiceModel(
Authorization: freezed == Authorization ? _self.Authorization : Authorization // ignore: cast_nullable_to_non_nullable
as String?,acceptLanguage: freezed == acceptLanguage ? _self.acceptLanguage : acceptLanguage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
