// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_tickets_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetTicketsModel {

 String? get token; String? get accepted_language; String? get status; String? get id;
/// Create a copy of GetTicketsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetTicketsModelCopyWith<GetTicketsModel> get copyWith => _$GetTicketsModelCopyWithImpl<GetTicketsModel>(this as GetTicketsModel, _$identity);

  /// Serializes this GetTicketsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetTicketsModel&&(identical(other.token, token) || other.token == token)&&(identical(other.accepted_language, accepted_language) || other.accepted_language == accepted_language)&&(identical(other.status, status) || other.status == status)&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token,accepted_language,status,id);

@override
String toString() {
  return 'GetTicketsModel(token: $token, accepted_language: $accepted_language, status: $status, id: $id)';
}


}

/// @nodoc
abstract mixin class $GetTicketsModelCopyWith<$Res>  {
  factory $GetTicketsModelCopyWith(GetTicketsModel value, $Res Function(GetTicketsModel) _then) = _$GetTicketsModelCopyWithImpl;
@useResult
$Res call({
 String? token, String? accepted_language, String? status, String? id
});




}
/// @nodoc
class _$GetTicketsModelCopyWithImpl<$Res>
    implements $GetTicketsModelCopyWith<$Res> {
  _$GetTicketsModelCopyWithImpl(this._self, this._then);

  final GetTicketsModel _self;
  final $Res Function(GetTicketsModel) _then;

/// Create a copy of GetTicketsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? token = freezed,Object? accepted_language = freezed,Object? status = freezed,Object? id = freezed,}) {
  return _then(_self.copyWith(
token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,accepted_language: freezed == accepted_language ? _self.accepted_language : accepted_language // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [GetTicketsModel].
extension GetTicketsModelPatterns on GetTicketsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetTicketsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetTicketsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetTicketsModel value)  $default,){
final _that = this;
switch (_that) {
case _GetTicketsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetTicketsModel value)?  $default,){
final _that = this;
switch (_that) {
case _GetTicketsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? token,  String? accepted_language,  String? status,  String? id)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetTicketsModel() when $default != null:
return $default(_that.token,_that.accepted_language,_that.status,_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? token,  String? accepted_language,  String? status,  String? id)  $default,) {final _that = this;
switch (_that) {
case _GetTicketsModel():
return $default(_that.token,_that.accepted_language,_that.status,_that.id);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? token,  String? accepted_language,  String? status,  String? id)?  $default,) {final _that = this;
switch (_that) {
case _GetTicketsModel() when $default != null:
return $default(_that.token,_that.accepted_language,_that.status,_that.id);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetTicketsModel implements GetTicketsModel {
  const _GetTicketsModel({this.token = "", this.accepted_language = "", this.status = "", this.id = ""});
  factory _GetTicketsModel.fromJson(Map<String, dynamic> json) => _$GetTicketsModelFromJson(json);

@override@JsonKey() final  String? token;
@override@JsonKey() final  String? accepted_language;
@override@JsonKey() final  String? status;
@override@JsonKey() final  String? id;

/// Create a copy of GetTicketsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetTicketsModelCopyWith<_GetTicketsModel> get copyWith => __$GetTicketsModelCopyWithImpl<_GetTicketsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetTicketsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetTicketsModel&&(identical(other.token, token) || other.token == token)&&(identical(other.accepted_language, accepted_language) || other.accepted_language == accepted_language)&&(identical(other.status, status) || other.status == status)&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token,accepted_language,status,id);

@override
String toString() {
  return 'GetTicketsModel(token: $token, accepted_language: $accepted_language, status: $status, id: $id)';
}


}

/// @nodoc
abstract mixin class _$GetTicketsModelCopyWith<$Res> implements $GetTicketsModelCopyWith<$Res> {
  factory _$GetTicketsModelCopyWith(_GetTicketsModel value, $Res Function(_GetTicketsModel) _then) = __$GetTicketsModelCopyWithImpl;
@override @useResult
$Res call({
 String? token, String? accepted_language, String? status, String? id
});




}
/// @nodoc
class __$GetTicketsModelCopyWithImpl<$Res>
    implements _$GetTicketsModelCopyWith<$Res> {
  __$GetTicketsModelCopyWithImpl(this._self, this._then);

  final _GetTicketsModel _self;
  final $Res Function(_GetTicketsModel) _then;

/// Create a copy of GetTicketsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? token = freezed,Object? accepted_language = freezed,Object? status = freezed,Object? id = freezed,}) {
  return _then(_GetTicketsModel(
token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,accepted_language: freezed == accepted_language ? _self.accepted_language : accepted_language // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
