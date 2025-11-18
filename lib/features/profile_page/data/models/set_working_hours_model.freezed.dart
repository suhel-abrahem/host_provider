// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'set_working_hours_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SetWorkingHoursModel {

 List<WorkingTimeModel?>? get workingTime; String? get authToken; String? get acceptLanguage;
/// Create a copy of SetWorkingHoursModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SetWorkingHoursModelCopyWith<SetWorkingHoursModel> get copyWith => _$SetWorkingHoursModelCopyWithImpl<SetWorkingHoursModel>(this as SetWorkingHoursModel, _$identity);

  /// Serializes this SetWorkingHoursModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SetWorkingHoursModel&&const DeepCollectionEquality().equals(other.workingTime, workingTime)&&(identical(other.authToken, authToken) || other.authToken == authToken)&&(identical(other.acceptLanguage, acceptLanguage) || other.acceptLanguage == acceptLanguage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(workingTime),authToken,acceptLanguage);

@override
String toString() {
  return 'SetWorkingHoursModel(workingTime: $workingTime, authToken: $authToken, acceptLanguage: $acceptLanguage)';
}


}

/// @nodoc
abstract mixin class $SetWorkingHoursModelCopyWith<$Res>  {
  factory $SetWorkingHoursModelCopyWith(SetWorkingHoursModel value, $Res Function(SetWorkingHoursModel) _then) = _$SetWorkingHoursModelCopyWithImpl;
@useResult
$Res call({
 List<WorkingTimeModel?>? workingTime, String? authToken, String? acceptLanguage
});




}
/// @nodoc
class _$SetWorkingHoursModelCopyWithImpl<$Res>
    implements $SetWorkingHoursModelCopyWith<$Res> {
  _$SetWorkingHoursModelCopyWithImpl(this._self, this._then);

  final SetWorkingHoursModel _self;
  final $Res Function(SetWorkingHoursModel) _then;

/// Create a copy of SetWorkingHoursModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? workingTime = freezed,Object? authToken = freezed,Object? acceptLanguage = freezed,}) {
  return _then(_self.copyWith(
workingTime: freezed == workingTime ? _self.workingTime : workingTime // ignore: cast_nullable_to_non_nullable
as List<WorkingTimeModel?>?,authToken: freezed == authToken ? _self.authToken : authToken // ignore: cast_nullable_to_non_nullable
as String?,acceptLanguage: freezed == acceptLanguage ? _self.acceptLanguage : acceptLanguage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SetWorkingHoursModel].
extension SetWorkingHoursModelPatterns on SetWorkingHoursModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SetWorkingHoursModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SetWorkingHoursModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SetWorkingHoursModel value)  $default,){
final _that = this;
switch (_that) {
case _SetWorkingHoursModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SetWorkingHoursModel value)?  $default,){
final _that = this;
switch (_that) {
case _SetWorkingHoursModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<WorkingTimeModel?>? workingTime,  String? authToken,  String? acceptLanguage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SetWorkingHoursModel() when $default != null:
return $default(_that.workingTime,_that.authToken,_that.acceptLanguage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<WorkingTimeModel?>? workingTime,  String? authToken,  String? acceptLanguage)  $default,) {final _that = this;
switch (_that) {
case _SetWorkingHoursModel():
return $default(_that.workingTime,_that.authToken,_that.acceptLanguage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<WorkingTimeModel?>? workingTime,  String? authToken,  String? acceptLanguage)?  $default,) {final _that = this;
switch (_that) {
case _SetWorkingHoursModel() when $default != null:
return $default(_that.workingTime,_that.authToken,_that.acceptLanguage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SetWorkingHoursModel implements SetWorkingHoursModel {
  const _SetWorkingHoursModel({final  List<WorkingTimeModel?>? workingTime = const [], this.authToken = "", this.acceptLanguage = ""}): _workingTime = workingTime;
  factory _SetWorkingHoursModel.fromJson(Map<String, dynamic> json) => _$SetWorkingHoursModelFromJson(json);

 final  List<WorkingTimeModel?>? _workingTime;
@override@JsonKey() List<WorkingTimeModel?>? get workingTime {
  final value = _workingTime;
  if (value == null) return null;
  if (_workingTime is EqualUnmodifiableListView) return _workingTime;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey() final  String? authToken;
@override@JsonKey() final  String? acceptLanguage;

/// Create a copy of SetWorkingHoursModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SetWorkingHoursModelCopyWith<_SetWorkingHoursModel> get copyWith => __$SetWorkingHoursModelCopyWithImpl<_SetWorkingHoursModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SetWorkingHoursModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SetWorkingHoursModel&&const DeepCollectionEquality().equals(other._workingTime, _workingTime)&&(identical(other.authToken, authToken) || other.authToken == authToken)&&(identical(other.acceptLanguage, acceptLanguage) || other.acceptLanguage == acceptLanguage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_workingTime),authToken,acceptLanguage);

@override
String toString() {
  return 'SetWorkingHoursModel(workingTime: $workingTime, authToken: $authToken, acceptLanguage: $acceptLanguage)';
}


}

/// @nodoc
abstract mixin class _$SetWorkingHoursModelCopyWith<$Res> implements $SetWorkingHoursModelCopyWith<$Res> {
  factory _$SetWorkingHoursModelCopyWith(_SetWorkingHoursModel value, $Res Function(_SetWorkingHoursModel) _then) = __$SetWorkingHoursModelCopyWithImpl;
@override @useResult
$Res call({
 List<WorkingTimeModel?>? workingTime, String? authToken, String? acceptLanguage
});




}
/// @nodoc
class __$SetWorkingHoursModelCopyWithImpl<$Res>
    implements _$SetWorkingHoursModelCopyWith<$Res> {
  __$SetWorkingHoursModelCopyWithImpl(this._self, this._then);

  final _SetWorkingHoursModel _self;
  final $Res Function(_SetWorkingHoursModel) _then;

/// Create a copy of SetWorkingHoursModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? workingTime = freezed,Object? authToken = freezed,Object? acceptLanguage = freezed,}) {
  return _then(_SetWorkingHoursModel(
workingTime: freezed == workingTime ? _self._workingTime : workingTime // ignore: cast_nullable_to_non_nullable
as List<WorkingTimeModel?>?,authToken: freezed == authToken ? _self.authToken : authToken // ignore: cast_nullable_to_non_nullable
as String?,acceptLanguage: freezed == acceptLanguage ? _self.acceptLanguage : acceptLanguage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
