// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_booking_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetBookingModel {

 String? get auth; String? get reason; String? get acceptLanguage; String? get status; String? get id;
/// Create a copy of GetBookingModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetBookingModelCopyWith<GetBookingModel> get copyWith => _$GetBookingModelCopyWithImpl<GetBookingModel>(this as GetBookingModel, _$identity);

  /// Serializes this GetBookingModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetBookingModel&&(identical(other.auth, auth) || other.auth == auth)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.acceptLanguage, acceptLanguage) || other.acceptLanguage == acceptLanguage)&&(identical(other.status, status) || other.status == status)&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,auth,reason,acceptLanguage,status,id);

@override
String toString() {
  return 'GetBookingModel(auth: $auth, reason: $reason, acceptLanguage: $acceptLanguage, status: $status, id: $id)';
}


}

/// @nodoc
abstract mixin class $GetBookingModelCopyWith<$Res>  {
  factory $GetBookingModelCopyWith(GetBookingModel value, $Res Function(GetBookingModel) _then) = _$GetBookingModelCopyWithImpl;
@useResult
$Res call({
 String? auth, String? reason, String? acceptLanguage, String? status, String? id
});




}
/// @nodoc
class _$GetBookingModelCopyWithImpl<$Res>
    implements $GetBookingModelCopyWith<$Res> {
  _$GetBookingModelCopyWithImpl(this._self, this._then);

  final GetBookingModel _self;
  final $Res Function(GetBookingModel) _then;

/// Create a copy of GetBookingModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? auth = freezed,Object? reason = freezed,Object? acceptLanguage = freezed,Object? status = freezed,Object? id = freezed,}) {
  return _then(_self.copyWith(
auth: freezed == auth ? _self.auth : auth // ignore: cast_nullable_to_non_nullable
as String?,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,acceptLanguage: freezed == acceptLanguage ? _self.acceptLanguage : acceptLanguage // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [GetBookingModel].
extension GetBookingModelPatterns on GetBookingModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetBookingModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetBookingModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetBookingModel value)  $default,){
final _that = this;
switch (_that) {
case _GetBookingModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetBookingModel value)?  $default,){
final _that = this;
switch (_that) {
case _GetBookingModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? auth,  String? reason,  String? acceptLanguage,  String? status,  String? id)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetBookingModel() when $default != null:
return $default(_that.auth,_that.reason,_that.acceptLanguage,_that.status,_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? auth,  String? reason,  String? acceptLanguage,  String? status,  String? id)  $default,) {final _that = this;
switch (_that) {
case _GetBookingModel():
return $default(_that.auth,_that.reason,_that.acceptLanguage,_that.status,_that.id);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? auth,  String? reason,  String? acceptLanguage,  String? status,  String? id)?  $default,) {final _that = this;
switch (_that) {
case _GetBookingModel() when $default != null:
return $default(_that.auth,_that.reason,_that.acceptLanguage,_that.status,_that.id);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetBookingModel implements GetBookingModel {
  const _GetBookingModel({this.auth = "", this.reason = "", this.acceptLanguage = "", this.status = "", this.id = ""});
  factory _GetBookingModel.fromJson(Map<String, dynamic> json) => _$GetBookingModelFromJson(json);

@override@JsonKey() final  String? auth;
@override@JsonKey() final  String? reason;
@override@JsonKey() final  String? acceptLanguage;
@override@JsonKey() final  String? status;
@override@JsonKey() final  String? id;

/// Create a copy of GetBookingModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetBookingModelCopyWith<_GetBookingModel> get copyWith => __$GetBookingModelCopyWithImpl<_GetBookingModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetBookingModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetBookingModel&&(identical(other.auth, auth) || other.auth == auth)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.acceptLanguage, acceptLanguage) || other.acceptLanguage == acceptLanguage)&&(identical(other.status, status) || other.status == status)&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,auth,reason,acceptLanguage,status,id);

@override
String toString() {
  return 'GetBookingModel(auth: $auth, reason: $reason, acceptLanguage: $acceptLanguage, status: $status, id: $id)';
}


}

/// @nodoc
abstract mixin class _$GetBookingModelCopyWith<$Res> implements $GetBookingModelCopyWith<$Res> {
  factory _$GetBookingModelCopyWith(_GetBookingModel value, $Res Function(_GetBookingModel) _then) = __$GetBookingModelCopyWithImpl;
@override @useResult
$Res call({
 String? auth, String? reason, String? acceptLanguage, String? status, String? id
});




}
/// @nodoc
class __$GetBookingModelCopyWithImpl<$Res>
    implements _$GetBookingModelCopyWith<$Res> {
  __$GetBookingModelCopyWithImpl(this._self, this._then);

  final _GetBookingModel _self;
  final $Res Function(_GetBookingModel) _then;

/// Create a copy of GetBookingModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? auth = freezed,Object? reason = freezed,Object? acceptLanguage = freezed,Object? status = freezed,Object? id = freezed,}) {
  return _then(_GetBookingModel(
auth: freezed == auth ? _self.auth : auth // ignore: cast_nullable_to_non_nullable
as String?,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,acceptLanguage: freezed == acceptLanguage ? _self.acceptLanguage : acceptLanguage // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
