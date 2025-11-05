// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_service_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetServiceModel {

 String? get Authorization; String? get acceptLanguage; int? get category_id; int? get service_id;
/// Create a copy of GetServiceModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetServiceModelCopyWith<GetServiceModel> get copyWith => _$GetServiceModelCopyWithImpl<GetServiceModel>(this as GetServiceModel, _$identity);

  /// Serializes this GetServiceModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetServiceModel&&(identical(other.Authorization, Authorization) || other.Authorization == Authorization)&&(identical(other.acceptLanguage, acceptLanguage) || other.acceptLanguage == acceptLanguage)&&(identical(other.category_id, category_id) || other.category_id == category_id)&&(identical(other.service_id, service_id) || other.service_id == service_id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,Authorization,acceptLanguage,category_id,service_id);

@override
String toString() {
  return 'GetServiceModel(Authorization: $Authorization, acceptLanguage: $acceptLanguage, category_id: $category_id, service_id: $service_id)';
}


}

/// @nodoc
abstract mixin class $GetServiceModelCopyWith<$Res>  {
  factory $GetServiceModelCopyWith(GetServiceModel value, $Res Function(GetServiceModel) _then) = _$GetServiceModelCopyWithImpl;
@useResult
$Res call({
 String? Authorization, String? acceptLanguage, int? category_id, int? service_id
});




}
/// @nodoc
class _$GetServiceModelCopyWithImpl<$Res>
    implements $GetServiceModelCopyWith<$Res> {
  _$GetServiceModelCopyWithImpl(this._self, this._then);

  final GetServiceModel _self;
  final $Res Function(GetServiceModel) _then;

/// Create a copy of GetServiceModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? Authorization = freezed,Object? acceptLanguage = freezed,Object? category_id = freezed,Object? service_id = freezed,}) {
  return _then(_self.copyWith(
Authorization: freezed == Authorization ? _self.Authorization : Authorization // ignore: cast_nullable_to_non_nullable
as String?,acceptLanguage: freezed == acceptLanguage ? _self.acceptLanguage : acceptLanguage // ignore: cast_nullable_to_non_nullable
as String?,category_id: freezed == category_id ? _self.category_id : category_id // ignore: cast_nullable_to_non_nullable
as int?,service_id: freezed == service_id ? _self.service_id : service_id // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [GetServiceModel].
extension GetServiceModelPatterns on GetServiceModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetServiceModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetServiceModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetServiceModel value)  $default,){
final _that = this;
switch (_that) {
case _GetServiceModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetServiceModel value)?  $default,){
final _that = this;
switch (_that) {
case _GetServiceModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? Authorization,  String? acceptLanguage,  int? category_id,  int? service_id)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetServiceModel() when $default != null:
return $default(_that.Authorization,_that.acceptLanguage,_that.category_id,_that.service_id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? Authorization,  String? acceptLanguage,  int? category_id,  int? service_id)  $default,) {final _that = this;
switch (_that) {
case _GetServiceModel():
return $default(_that.Authorization,_that.acceptLanguage,_that.category_id,_that.service_id);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? Authorization,  String? acceptLanguage,  int? category_id,  int? service_id)?  $default,) {final _that = this;
switch (_that) {
case _GetServiceModel() when $default != null:
return $default(_that.Authorization,_that.acceptLanguage,_that.category_id,_that.service_id);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetServiceModel implements GetServiceModel {
  const _GetServiceModel({this.Authorization = "", this.acceptLanguage = "", this.category_id = null, this.service_id = null});
  factory _GetServiceModel.fromJson(Map<String, dynamic> json) => _$GetServiceModelFromJson(json);

@override@JsonKey() final  String? Authorization;
@override@JsonKey() final  String? acceptLanguage;
@override@JsonKey() final  int? category_id;
@override@JsonKey() final  int? service_id;

/// Create a copy of GetServiceModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetServiceModelCopyWith<_GetServiceModel> get copyWith => __$GetServiceModelCopyWithImpl<_GetServiceModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetServiceModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetServiceModel&&(identical(other.Authorization, Authorization) || other.Authorization == Authorization)&&(identical(other.acceptLanguage, acceptLanguage) || other.acceptLanguage == acceptLanguage)&&(identical(other.category_id, category_id) || other.category_id == category_id)&&(identical(other.service_id, service_id) || other.service_id == service_id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,Authorization,acceptLanguage,category_id,service_id);

@override
String toString() {
  return 'GetServiceModel(Authorization: $Authorization, acceptLanguage: $acceptLanguage, category_id: $category_id, service_id: $service_id)';
}


}

/// @nodoc
abstract mixin class _$GetServiceModelCopyWith<$Res> implements $GetServiceModelCopyWith<$Res> {
  factory _$GetServiceModelCopyWith(_GetServiceModel value, $Res Function(_GetServiceModel) _then) = __$GetServiceModelCopyWithImpl;
@override @useResult
$Res call({
 String? Authorization, String? acceptLanguage, int? category_id, int? service_id
});




}
/// @nodoc
class __$GetServiceModelCopyWithImpl<$Res>
    implements _$GetServiceModelCopyWith<$Res> {
  __$GetServiceModelCopyWithImpl(this._self, this._then);

  final _GetServiceModel _self;
  final $Res Function(_GetServiceModel) _then;

/// Create a copy of GetServiceModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? Authorization = freezed,Object? acceptLanguage = freezed,Object? category_id = freezed,Object? service_id = freezed,}) {
  return _then(_GetServiceModel(
Authorization: freezed == Authorization ? _self.Authorization : Authorization // ignore: cast_nullable_to_non_nullable
as String?,acceptLanguage: freezed == acceptLanguage ? _self.acceptLanguage : acceptLanguage // ignore: cast_nullable_to_non_nullable
as String?,category_id: freezed == category_id ? _self.category_id : category_id // ignore: cast_nullable_to_non_nullable
as int?,service_id: freezed == service_id ? _self.service_id : service_id // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
