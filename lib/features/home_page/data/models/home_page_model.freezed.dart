// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_page_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HomePageModel {

 String? get token; String? get acceptLanguage;
/// Create a copy of HomePageModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomePageModelCopyWith<HomePageModel> get copyWith => _$HomePageModelCopyWithImpl<HomePageModel>(this as HomePageModel, _$identity);

  /// Serializes this HomePageModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomePageModel&&(identical(other.token, token) || other.token == token)&&(identical(other.acceptLanguage, acceptLanguage) || other.acceptLanguage == acceptLanguage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token,acceptLanguage);

@override
String toString() {
  return 'HomePageModel(token: $token, acceptLanguage: $acceptLanguage)';
}


}

/// @nodoc
abstract mixin class $HomePageModelCopyWith<$Res>  {
  factory $HomePageModelCopyWith(HomePageModel value, $Res Function(HomePageModel) _then) = _$HomePageModelCopyWithImpl;
@useResult
$Res call({
 String? token, String? acceptLanguage
});




}
/// @nodoc
class _$HomePageModelCopyWithImpl<$Res>
    implements $HomePageModelCopyWith<$Res> {
  _$HomePageModelCopyWithImpl(this._self, this._then);

  final HomePageModel _self;
  final $Res Function(HomePageModel) _then;

/// Create a copy of HomePageModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? token = freezed,Object? acceptLanguage = freezed,}) {
  return _then(_self.copyWith(
token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,acceptLanguage: freezed == acceptLanguage ? _self.acceptLanguage : acceptLanguage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [HomePageModel].
extension HomePageModelPatterns on HomePageModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomePageModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomePageModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomePageModel value)  $default,){
final _that = this;
switch (_that) {
case _HomePageModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomePageModel value)?  $default,){
final _that = this;
switch (_that) {
case _HomePageModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? token,  String? acceptLanguage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomePageModel() when $default != null:
return $default(_that.token,_that.acceptLanguage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? token,  String? acceptLanguage)  $default,) {final _that = this;
switch (_that) {
case _HomePageModel():
return $default(_that.token,_that.acceptLanguage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? token,  String? acceptLanguage)?  $default,) {final _that = this;
switch (_that) {
case _HomePageModel() when $default != null:
return $default(_that.token,_that.acceptLanguage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HomePageModel implements HomePageModel {
  const _HomePageModel({this.token = "", this.acceptLanguage = ""});
  factory _HomePageModel.fromJson(Map<String, dynamic> json) => _$HomePageModelFromJson(json);

@override@JsonKey() final  String? token;
@override@JsonKey() final  String? acceptLanguage;

/// Create a copy of HomePageModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomePageModelCopyWith<_HomePageModel> get copyWith => __$HomePageModelCopyWithImpl<_HomePageModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HomePageModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomePageModel&&(identical(other.token, token) || other.token == token)&&(identical(other.acceptLanguage, acceptLanguage) || other.acceptLanguage == acceptLanguage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token,acceptLanguage);

@override
String toString() {
  return 'HomePageModel(token: $token, acceptLanguage: $acceptLanguage)';
}


}

/// @nodoc
abstract mixin class _$HomePageModelCopyWith<$Res> implements $HomePageModelCopyWith<$Res> {
  factory _$HomePageModelCopyWith(_HomePageModel value, $Res Function(_HomePageModel) _then) = __$HomePageModelCopyWithImpl;
@override @useResult
$Res call({
 String? token, String? acceptLanguage
});




}
/// @nodoc
class __$HomePageModelCopyWithImpl<$Res>
    implements _$HomePageModelCopyWith<$Res> {
  __$HomePageModelCopyWithImpl(this._self, this._then);

  final _HomePageModel _self;
  final $Res Function(_HomePageModel) _then;

/// Create a copy of HomePageModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? token = freezed,Object? acceptLanguage = freezed,}) {
  return _then(_HomePageModel(
token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,acceptLanguage: freezed == acceptLanguage ? _self.acceptLanguage : acceptLanguage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
