// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'set_profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SetProfileModel {

 String? get name; String? get email; String? get phone; String? get dob;@FileJsonConverter() File? get avatar; String? get address; int? get city_id; int? get country_id; String? get lat; String? get lng;
/// Create a copy of SetProfileModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SetProfileModelCopyWith<SetProfileModel> get copyWith => _$SetProfileModelCopyWithImpl<SetProfileModel>(this as SetProfileModel, _$identity);

  /// Serializes this SetProfileModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SetProfileModel&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.dob, dob) || other.dob == dob)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.address, address) || other.address == address)&&(identical(other.city_id, city_id) || other.city_id == city_id)&&(identical(other.country_id, country_id) || other.country_id == country_id)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lng, lng) || other.lng == lng));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,email,phone,dob,avatar,address,city_id,country_id,lat,lng);

@override
String toString() {
  return 'SetProfileModel(name: $name, email: $email, phone: $phone, dob: $dob, avatar: $avatar, address: $address, city_id: $city_id, country_id: $country_id, lat: $lat, lng: $lng)';
}


}

/// @nodoc
abstract mixin class $SetProfileModelCopyWith<$Res>  {
  factory $SetProfileModelCopyWith(SetProfileModel value, $Res Function(SetProfileModel) _then) = _$SetProfileModelCopyWithImpl;
@useResult
$Res call({
 String? name, String? email, String? phone, String? dob,@FileJsonConverter() File? avatar, String? address, int? city_id, int? country_id, String? lat, String? lng
});




}
/// @nodoc
class _$SetProfileModelCopyWithImpl<$Res>
    implements $SetProfileModelCopyWith<$Res> {
  _$SetProfileModelCopyWithImpl(this._self, this._then);

  final SetProfileModel _self;
  final $Res Function(SetProfileModel) _then;

/// Create a copy of SetProfileModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? email = freezed,Object? phone = freezed,Object? dob = freezed,Object? avatar = freezed,Object? address = freezed,Object? city_id = freezed,Object? country_id = freezed,Object? lat = freezed,Object? lng = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,dob: freezed == dob ? _self.dob : dob // ignore: cast_nullable_to_non_nullable
as String?,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as File?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,city_id: freezed == city_id ? _self.city_id : city_id // ignore: cast_nullable_to_non_nullable
as int?,country_id: freezed == country_id ? _self.country_id : country_id // ignore: cast_nullable_to_non_nullable
as int?,lat: freezed == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as String?,lng: freezed == lng ? _self.lng : lng // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SetProfileModel].
extension SetProfileModelPatterns on SetProfileModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SetProfileModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SetProfileModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SetProfileModel value)  $default,){
final _that = this;
switch (_that) {
case _SetProfileModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SetProfileModel value)?  $default,){
final _that = this;
switch (_that) {
case _SetProfileModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name,  String? email,  String? phone,  String? dob, @FileJsonConverter()  File? avatar,  String? address,  int? city_id,  int? country_id,  String? lat,  String? lng)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SetProfileModel() when $default != null:
return $default(_that.name,_that.email,_that.phone,_that.dob,_that.avatar,_that.address,_that.city_id,_that.country_id,_that.lat,_that.lng);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name,  String? email,  String? phone,  String? dob, @FileJsonConverter()  File? avatar,  String? address,  int? city_id,  int? country_id,  String? lat,  String? lng)  $default,) {final _that = this;
switch (_that) {
case _SetProfileModel():
return $default(_that.name,_that.email,_that.phone,_that.dob,_that.avatar,_that.address,_that.city_id,_that.country_id,_that.lat,_that.lng);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name,  String? email,  String? phone,  String? dob, @FileJsonConverter()  File? avatar,  String? address,  int? city_id,  int? country_id,  String? lat,  String? lng)?  $default,) {final _that = this;
switch (_that) {
case _SetProfileModel() when $default != null:
return $default(_that.name,_that.email,_that.phone,_that.dob,_that.avatar,_that.address,_that.city_id,_that.country_id,_that.lat,_that.lng);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SetProfileModel implements SetProfileModel {
  const _SetProfileModel({this.name = "", this.email = "", this.phone = "", this.dob = "", @FileJsonConverter() this.avatar, this.address = "", this.city_id = 1, this.country_id = 1, this.lat = "", this.lng = ""});
  factory _SetProfileModel.fromJson(Map<String, dynamic> json) => _$SetProfileModelFromJson(json);

@override@JsonKey() final  String? name;
@override@JsonKey() final  String? email;
@override@JsonKey() final  String? phone;
@override@JsonKey() final  String? dob;
@override@FileJsonConverter() final  File? avatar;
@override@JsonKey() final  String? address;
@override@JsonKey() final  int? city_id;
@override@JsonKey() final  int? country_id;
@override@JsonKey() final  String? lat;
@override@JsonKey() final  String? lng;

/// Create a copy of SetProfileModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SetProfileModelCopyWith<_SetProfileModel> get copyWith => __$SetProfileModelCopyWithImpl<_SetProfileModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SetProfileModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SetProfileModel&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.dob, dob) || other.dob == dob)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.address, address) || other.address == address)&&(identical(other.city_id, city_id) || other.city_id == city_id)&&(identical(other.country_id, country_id) || other.country_id == country_id)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lng, lng) || other.lng == lng));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,email,phone,dob,avatar,address,city_id,country_id,lat,lng);

@override
String toString() {
  return 'SetProfileModel(name: $name, email: $email, phone: $phone, dob: $dob, avatar: $avatar, address: $address, city_id: $city_id, country_id: $country_id, lat: $lat, lng: $lng)';
}


}

/// @nodoc
abstract mixin class _$SetProfileModelCopyWith<$Res> implements $SetProfileModelCopyWith<$Res> {
  factory _$SetProfileModelCopyWith(_SetProfileModel value, $Res Function(_SetProfileModel) _then) = __$SetProfileModelCopyWithImpl;
@override @useResult
$Res call({
 String? name, String? email, String? phone, String? dob,@FileJsonConverter() File? avatar, String? address, int? city_id, int? country_id, String? lat, String? lng
});




}
/// @nodoc
class __$SetProfileModelCopyWithImpl<$Res>
    implements _$SetProfileModelCopyWith<$Res> {
  __$SetProfileModelCopyWithImpl(this._self, this._then);

  final _SetProfileModel _self;
  final $Res Function(_SetProfileModel) _then;

/// Create a copy of SetProfileModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? email = freezed,Object? phone = freezed,Object? dob = freezed,Object? avatar = freezed,Object? address = freezed,Object? city_id = freezed,Object? country_id = freezed,Object? lat = freezed,Object? lng = freezed,}) {
  return _then(_SetProfileModel(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,dob: freezed == dob ? _self.dob : dob // ignore: cast_nullable_to_non_nullable
as String?,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as File?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,city_id: freezed == city_id ? _self.city_id : city_id // ignore: cast_nullable_to_non_nullable
as int?,country_id: freezed == country_id ? _self.country_id : country_id // ignore: cast_nullable_to_non_nullable
as int?,lat: freezed == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as String?,lng: freezed == lng ? _self.lng : lng // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
