// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'set_service_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SetServiceModel {

 ServiceModel? get serviceModel; String? get acceptedLanguage; String? get authorization;
/// Create a copy of SetServiceModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SetServiceModelCopyWith<SetServiceModel> get copyWith => _$SetServiceModelCopyWithImpl<SetServiceModel>(this as SetServiceModel, _$identity);

  /// Serializes this SetServiceModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SetServiceModel&&(identical(other.serviceModel, serviceModel) || other.serviceModel == serviceModel)&&(identical(other.acceptedLanguage, acceptedLanguage) || other.acceptedLanguage == acceptedLanguage)&&(identical(other.authorization, authorization) || other.authorization == authorization));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,serviceModel,acceptedLanguage,authorization);

@override
String toString() {
  return 'SetServiceModel(serviceModel: $serviceModel, acceptedLanguage: $acceptedLanguage, authorization: $authorization)';
}


}

/// @nodoc
abstract mixin class $SetServiceModelCopyWith<$Res>  {
  factory $SetServiceModelCopyWith(SetServiceModel value, $Res Function(SetServiceModel) _then) = _$SetServiceModelCopyWithImpl;
@useResult
$Res call({
 ServiceModel? serviceModel, String? acceptedLanguage, String? authorization
});


$ServiceModelCopyWith<$Res>? get serviceModel;

}
/// @nodoc
class _$SetServiceModelCopyWithImpl<$Res>
    implements $SetServiceModelCopyWith<$Res> {
  _$SetServiceModelCopyWithImpl(this._self, this._then);

  final SetServiceModel _self;
  final $Res Function(SetServiceModel) _then;

/// Create a copy of SetServiceModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? serviceModel = freezed,Object? acceptedLanguage = freezed,Object? authorization = freezed,}) {
  return _then(_self.copyWith(
serviceModel: freezed == serviceModel ? _self.serviceModel : serviceModel // ignore: cast_nullable_to_non_nullable
as ServiceModel?,acceptedLanguage: freezed == acceptedLanguage ? _self.acceptedLanguage : acceptedLanguage // ignore: cast_nullable_to_non_nullable
as String?,authorization: freezed == authorization ? _self.authorization : authorization // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of SetServiceModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ServiceModelCopyWith<$Res>? get serviceModel {
    if (_self.serviceModel == null) {
    return null;
  }

  return $ServiceModelCopyWith<$Res>(_self.serviceModel!, (value) {
    return _then(_self.copyWith(serviceModel: value));
  });
}
}


/// Adds pattern-matching-related methods to [SetServiceModel].
extension SetServiceModelPatterns on SetServiceModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SetServiceModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SetServiceModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SetServiceModel value)  $default,){
final _that = this;
switch (_that) {
case _SetServiceModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SetServiceModel value)?  $default,){
final _that = this;
switch (_that) {
case _SetServiceModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ServiceModel? serviceModel,  String? acceptedLanguage,  String? authorization)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SetServiceModel() when $default != null:
return $default(_that.serviceModel,_that.acceptedLanguage,_that.authorization);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ServiceModel? serviceModel,  String? acceptedLanguage,  String? authorization)  $default,) {final _that = this;
switch (_that) {
case _SetServiceModel():
return $default(_that.serviceModel,_that.acceptedLanguage,_that.authorization);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ServiceModel? serviceModel,  String? acceptedLanguage,  String? authorization)?  $default,) {final _that = this;
switch (_that) {
case _SetServiceModel() when $default != null:
return $default(_that.serviceModel,_that.acceptedLanguage,_that.authorization);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SetServiceModel implements SetServiceModel {
  const _SetServiceModel({this.serviceModel = const ServiceModel(), this.acceptedLanguage = "", this.authorization = ""});
  factory _SetServiceModel.fromJson(Map<String, dynamic> json) => _$SetServiceModelFromJson(json);

@override@JsonKey() final  ServiceModel? serviceModel;
@override@JsonKey() final  String? acceptedLanguage;
@override@JsonKey() final  String? authorization;

/// Create a copy of SetServiceModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SetServiceModelCopyWith<_SetServiceModel> get copyWith => __$SetServiceModelCopyWithImpl<_SetServiceModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SetServiceModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SetServiceModel&&(identical(other.serviceModel, serviceModel) || other.serviceModel == serviceModel)&&(identical(other.acceptedLanguage, acceptedLanguage) || other.acceptedLanguage == acceptedLanguage)&&(identical(other.authorization, authorization) || other.authorization == authorization));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,serviceModel,acceptedLanguage,authorization);

@override
String toString() {
  return 'SetServiceModel(serviceModel: $serviceModel, acceptedLanguage: $acceptedLanguage, authorization: $authorization)';
}


}

/// @nodoc
abstract mixin class _$SetServiceModelCopyWith<$Res> implements $SetServiceModelCopyWith<$Res> {
  factory _$SetServiceModelCopyWith(_SetServiceModel value, $Res Function(_SetServiceModel) _then) = __$SetServiceModelCopyWithImpl;
@override @useResult
$Res call({
 ServiceModel? serviceModel, String? acceptedLanguage, String? authorization
});


@override $ServiceModelCopyWith<$Res>? get serviceModel;

}
/// @nodoc
class __$SetServiceModelCopyWithImpl<$Res>
    implements _$SetServiceModelCopyWith<$Res> {
  __$SetServiceModelCopyWithImpl(this._self, this._then);

  final _SetServiceModel _self;
  final $Res Function(_SetServiceModel) _then;

/// Create a copy of SetServiceModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? serviceModel = freezed,Object? acceptedLanguage = freezed,Object? authorization = freezed,}) {
  return _then(_SetServiceModel(
serviceModel: freezed == serviceModel ? _self.serviceModel : serviceModel // ignore: cast_nullable_to_non_nullable
as ServiceModel?,acceptedLanguage: freezed == acceptedLanguage ? _self.acceptedLanguage : acceptedLanguage // ignore: cast_nullable_to_non_nullable
as String?,authorization: freezed == authorization ? _self.authorization : authorization // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of SetServiceModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ServiceModelCopyWith<$Res>? get serviceModel {
    if (_self.serviceModel == null) {
    return null;
  }

  return $ServiceModelCopyWith<$Res>(_self.serviceModel!, (value) {
    return _then(_self.copyWith(serviceModel: value));
  });
}
}

// dart format on
