// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'city_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CityModel {

 int? get country_id; int? get per_page; int? get page; String? get acceptLanguage; bool? get canAccessLocation;
/// Create a copy of CityModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CityModelCopyWith<CityModel> get copyWith => _$CityModelCopyWithImpl<CityModel>(this as CityModel, _$identity);

  /// Serializes this CityModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CityModel&&(identical(other.country_id, country_id) || other.country_id == country_id)&&(identical(other.per_page, per_page) || other.per_page == per_page)&&(identical(other.page, page) || other.page == page)&&(identical(other.acceptLanguage, acceptLanguage) || other.acceptLanguage == acceptLanguage)&&(identical(other.canAccessLocation, canAccessLocation) || other.canAccessLocation == canAccessLocation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,country_id,per_page,page,acceptLanguage,canAccessLocation);

@override
String toString() {
  return 'CityModel(country_id: $country_id, per_page: $per_page, page: $page, acceptLanguage: $acceptLanguage, canAccessLocation: $canAccessLocation)';
}


}

/// @nodoc
abstract mixin class $CityModelCopyWith<$Res>  {
  factory $CityModelCopyWith(CityModel value, $Res Function(CityModel) _then) = _$CityModelCopyWithImpl;
@useResult
$Res call({
 int? country_id, int? per_page, int? page, String? acceptLanguage, bool? canAccessLocation
});




}
/// @nodoc
class _$CityModelCopyWithImpl<$Res>
    implements $CityModelCopyWith<$Res> {
  _$CityModelCopyWithImpl(this._self, this._then);

  final CityModel _self;
  final $Res Function(CityModel) _then;

/// Create a copy of CityModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? country_id = freezed,Object? per_page = freezed,Object? page = freezed,Object? acceptLanguage = freezed,Object? canAccessLocation = freezed,}) {
  return _then(_self.copyWith(
country_id: freezed == country_id ? _self.country_id : country_id // ignore: cast_nullable_to_non_nullable
as int?,per_page: freezed == per_page ? _self.per_page : per_page // ignore: cast_nullable_to_non_nullable
as int?,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,acceptLanguage: freezed == acceptLanguage ? _self.acceptLanguage : acceptLanguage // ignore: cast_nullable_to_non_nullable
as String?,canAccessLocation: freezed == canAccessLocation ? _self.canAccessLocation : canAccessLocation // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [CityModel].
extension CityModelPatterns on CityModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CityModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CityModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CityModel value)  $default,){
final _that = this;
switch (_that) {
case _CityModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CityModel value)?  $default,){
final _that = this;
switch (_that) {
case _CityModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? country_id,  int? per_page,  int? page,  String? acceptLanguage,  bool? canAccessLocation)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CityModel() when $default != null:
return $default(_that.country_id,_that.per_page,_that.page,_that.acceptLanguage,_that.canAccessLocation);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? country_id,  int? per_page,  int? page,  String? acceptLanguage,  bool? canAccessLocation)  $default,) {final _that = this;
switch (_that) {
case _CityModel():
return $default(_that.country_id,_that.per_page,_that.page,_that.acceptLanguage,_that.canAccessLocation);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? country_id,  int? per_page,  int? page,  String? acceptLanguage,  bool? canAccessLocation)?  $default,) {final _that = this;
switch (_that) {
case _CityModel() when $default != null:
return $default(_that.country_id,_that.per_page,_that.page,_that.acceptLanguage,_that.canAccessLocation);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CityModel implements CityModel {
  const _CityModel({this.country_id = 1, this.per_page = null, this.page = null, this.acceptLanguage = "", this.canAccessLocation = false});
  factory _CityModel.fromJson(Map<String, dynamic> json) => _$CityModelFromJson(json);

@override@JsonKey() final  int? country_id;
@override@JsonKey() final  int? per_page;
@override@JsonKey() final  int? page;
@override@JsonKey() final  String? acceptLanguage;
@override@JsonKey() final  bool? canAccessLocation;

/// Create a copy of CityModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CityModelCopyWith<_CityModel> get copyWith => __$CityModelCopyWithImpl<_CityModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CityModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CityModel&&(identical(other.country_id, country_id) || other.country_id == country_id)&&(identical(other.per_page, per_page) || other.per_page == per_page)&&(identical(other.page, page) || other.page == page)&&(identical(other.acceptLanguage, acceptLanguage) || other.acceptLanguage == acceptLanguage)&&(identical(other.canAccessLocation, canAccessLocation) || other.canAccessLocation == canAccessLocation));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,country_id,per_page,page,acceptLanguage,canAccessLocation);

@override
String toString() {
  return 'CityModel(country_id: $country_id, per_page: $per_page, page: $page, acceptLanguage: $acceptLanguage, canAccessLocation: $canAccessLocation)';
}


}

/// @nodoc
abstract mixin class _$CityModelCopyWith<$Res> implements $CityModelCopyWith<$Res> {
  factory _$CityModelCopyWith(_CityModel value, $Res Function(_CityModel) _then) = __$CityModelCopyWithImpl;
@override @useResult
$Res call({
 int? country_id, int? per_page, int? page, String? acceptLanguage, bool? canAccessLocation
});




}
/// @nodoc
class __$CityModelCopyWithImpl<$Res>
    implements _$CityModelCopyWith<$Res> {
  __$CityModelCopyWithImpl(this._self, this._then);

  final _CityModel _self;
  final $Res Function(_CityModel) _then;

/// Create a copy of CityModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? country_id = freezed,Object? per_page = freezed,Object? page = freezed,Object? acceptLanguage = freezed,Object? canAccessLocation = freezed,}) {
  return _then(_CityModel(
country_id: freezed == country_id ? _self.country_id : country_id // ignore: cast_nullable_to_non_nullable
as int?,per_page: freezed == per_page ? _self.per_page : per_page // ignore: cast_nullable_to_non_nullable
as int?,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,acceptLanguage: freezed == acceptLanguage ? _self.acceptLanguage : acceptLanguage // ignore: cast_nullable_to_non_nullable
as String?,canAccessLocation: freezed == canAccessLocation ? _self.canAccessLocation : canAccessLocation // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
