// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_reset_password_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RequestResetPasswordModel {

 String? get identifier; String? get restVia; String? get acceptLanguage;
/// Create a copy of RequestResetPasswordModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RequestResetPasswordModelCopyWith<RequestResetPasswordModel> get copyWith => _$RequestResetPasswordModelCopyWithImpl<RequestResetPasswordModel>(this as RequestResetPasswordModel, _$identity);

  /// Serializes this RequestResetPasswordModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RequestResetPasswordModel&&(identical(other.identifier, identifier) || other.identifier == identifier)&&(identical(other.restVia, restVia) || other.restVia == restVia)&&(identical(other.acceptLanguage, acceptLanguage) || other.acceptLanguage == acceptLanguage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,identifier,restVia,acceptLanguage);

@override
String toString() {
  return 'RequestResetPasswordModel(identifier: $identifier, restVia: $restVia, acceptLanguage: $acceptLanguage)';
}


}

/// @nodoc
abstract mixin class $RequestResetPasswordModelCopyWith<$Res>  {
  factory $RequestResetPasswordModelCopyWith(RequestResetPasswordModel value, $Res Function(RequestResetPasswordModel) _then) = _$RequestResetPasswordModelCopyWithImpl;
@useResult
$Res call({
 String? identifier, String? restVia, String? acceptLanguage
});




}
/// @nodoc
class _$RequestResetPasswordModelCopyWithImpl<$Res>
    implements $RequestResetPasswordModelCopyWith<$Res> {
  _$RequestResetPasswordModelCopyWithImpl(this._self, this._then);

  final RequestResetPasswordModel _self;
  final $Res Function(RequestResetPasswordModel) _then;

/// Create a copy of RequestResetPasswordModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? identifier = freezed,Object? restVia = freezed,Object? acceptLanguage = freezed,}) {
  return _then(_self.copyWith(
identifier: freezed == identifier ? _self.identifier : identifier // ignore: cast_nullable_to_non_nullable
as String?,restVia: freezed == restVia ? _self.restVia : restVia // ignore: cast_nullable_to_non_nullable
as String?,acceptLanguage: freezed == acceptLanguage ? _self.acceptLanguage : acceptLanguage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [RequestResetPasswordModel].
extension RequestResetPasswordModelPatterns on RequestResetPasswordModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RequestResetPasswordModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RequestResetPasswordModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RequestResetPasswordModel value)  $default,){
final _that = this;
switch (_that) {
case _RequestResetPasswordModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RequestResetPasswordModel value)?  $default,){
final _that = this;
switch (_that) {
case _RequestResetPasswordModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? identifier,  String? restVia,  String? acceptLanguage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RequestResetPasswordModel() when $default != null:
return $default(_that.identifier,_that.restVia,_that.acceptLanguage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? identifier,  String? restVia,  String? acceptLanguage)  $default,) {final _that = this;
switch (_that) {
case _RequestResetPasswordModel():
return $default(_that.identifier,_that.restVia,_that.acceptLanguage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? identifier,  String? restVia,  String? acceptLanguage)?  $default,) {final _that = this;
switch (_that) {
case _RequestResetPasswordModel() when $default != null:
return $default(_that.identifier,_that.restVia,_that.acceptLanguage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RequestResetPasswordModel implements RequestResetPasswordModel {
  const _RequestResetPasswordModel({this.identifier = "", this.restVia = "", this.acceptLanguage = ""});
  factory _RequestResetPasswordModel.fromJson(Map<String, dynamic> json) => _$RequestResetPasswordModelFromJson(json);

@override@JsonKey() final  String? identifier;
@override@JsonKey() final  String? restVia;
@override@JsonKey() final  String? acceptLanguage;

/// Create a copy of RequestResetPasswordModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RequestResetPasswordModelCopyWith<_RequestResetPasswordModel> get copyWith => __$RequestResetPasswordModelCopyWithImpl<_RequestResetPasswordModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RequestResetPasswordModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RequestResetPasswordModel&&(identical(other.identifier, identifier) || other.identifier == identifier)&&(identical(other.restVia, restVia) || other.restVia == restVia)&&(identical(other.acceptLanguage, acceptLanguage) || other.acceptLanguage == acceptLanguage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,identifier,restVia,acceptLanguage);

@override
String toString() {
  return 'RequestResetPasswordModel(identifier: $identifier, restVia: $restVia, acceptLanguage: $acceptLanguage)';
}


}

/// @nodoc
abstract mixin class _$RequestResetPasswordModelCopyWith<$Res> implements $RequestResetPasswordModelCopyWith<$Res> {
  factory _$RequestResetPasswordModelCopyWith(_RequestResetPasswordModel value, $Res Function(_RequestResetPasswordModel) _then) = __$RequestResetPasswordModelCopyWithImpl;
@override @useResult
$Res call({
 String? identifier, String? restVia, String? acceptLanguage
});




}
/// @nodoc
class __$RequestResetPasswordModelCopyWithImpl<$Res>
    implements _$RequestResetPasswordModelCopyWith<$Res> {
  __$RequestResetPasswordModelCopyWithImpl(this._self, this._then);

  final _RequestResetPasswordModel _self;
  final $Res Function(_RequestResetPasswordModel) _then;

/// Create a copy of RequestResetPasswordModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? identifier = freezed,Object? restVia = freezed,Object? acceptLanguage = freezed,}) {
  return _then(_RequestResetPasswordModel(
identifier: freezed == identifier ? _self.identifier : identifier // ignore: cast_nullable_to_non_nullable
as String?,restVia: freezed == restVia ? _self.restVia : restVia // ignore: cast_nullable_to_non_nullable
as String?,acceptLanguage: freezed == acceptLanguage ? _self.acceptLanguage : acceptLanguage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
