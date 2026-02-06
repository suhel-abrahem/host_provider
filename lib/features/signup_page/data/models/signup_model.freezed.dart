// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signup_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SignupModel {

 int? get country_id; num? get lng; String? get verify_via; String? get name; String? get phone; int? get city_id; String? get address; String? get role; String? get dob;@FileJsonConverter() File? get avatar; String? get password; String? get password_confirmation; String? get email; num? get lat;
/// Create a copy of SignupModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignupModelCopyWith<SignupModel> get copyWith => _$SignupModelCopyWithImpl<SignupModel>(this as SignupModel, _$identity);

  /// Serializes this SignupModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignupModel&&(identical(other.country_id, country_id) || other.country_id == country_id)&&(identical(other.lng, lng) || other.lng == lng)&&(identical(other.verify_via, verify_via) || other.verify_via == verify_via)&&(identical(other.name, name) || other.name == name)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.city_id, city_id) || other.city_id == city_id)&&(identical(other.address, address) || other.address == address)&&(identical(other.role, role) || other.role == role)&&(identical(other.dob, dob) || other.dob == dob)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.password, password) || other.password == password)&&(identical(other.password_confirmation, password_confirmation) || other.password_confirmation == password_confirmation)&&(identical(other.email, email) || other.email == email)&&(identical(other.lat, lat) || other.lat == lat));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,country_id,lng,verify_via,name,phone,city_id,address,role,dob,avatar,password,password_confirmation,email,lat);

@override
String toString() {
  return 'SignupModel(country_id: $country_id, lng: $lng, verify_via: $verify_via, name: $name, phone: $phone, city_id: $city_id, address: $address, role: $role, dob: $dob, avatar: $avatar, password: $password, password_confirmation: $password_confirmation, email: $email, lat: $lat)';
}


}

/// @nodoc
abstract mixin class $SignupModelCopyWith<$Res>  {
  factory $SignupModelCopyWith(SignupModel value, $Res Function(SignupModel) _then) = _$SignupModelCopyWithImpl;
@useResult
$Res call({
 int? country_id, num? lng, String? verify_via, String? name, String? phone, int? city_id, String? address, String? role, String? dob,@FileJsonConverter() File? avatar, String? password, String? password_confirmation, String? email, num? lat
});




}
/// @nodoc
class _$SignupModelCopyWithImpl<$Res>
    implements $SignupModelCopyWith<$Res> {
  _$SignupModelCopyWithImpl(this._self, this._then);

  final SignupModel _self;
  final $Res Function(SignupModel) _then;

/// Create a copy of SignupModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? country_id = freezed,Object? lng = freezed,Object? verify_via = freezed,Object? name = freezed,Object? phone = freezed,Object? city_id = freezed,Object? address = freezed,Object? role = freezed,Object? dob = freezed,Object? avatar = freezed,Object? password = freezed,Object? password_confirmation = freezed,Object? email = freezed,Object? lat = freezed,}) {
  return _then(_self.copyWith(
country_id: freezed == country_id ? _self.country_id : country_id // ignore: cast_nullable_to_non_nullable
as int?,lng: freezed == lng ? _self.lng : lng // ignore: cast_nullable_to_non_nullable
as num?,verify_via: freezed == verify_via ? _self.verify_via : verify_via // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,city_id: freezed == city_id ? _self.city_id : city_id // ignore: cast_nullable_to_non_nullable
as int?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String?,dob: freezed == dob ? _self.dob : dob // ignore: cast_nullable_to_non_nullable
as String?,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as File?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,password_confirmation: freezed == password_confirmation ? _self.password_confirmation : password_confirmation // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,lat: freezed == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as num?,
  ));
}

}


/// Adds pattern-matching-related methods to [SignupModel].
extension SignupModelPatterns on SignupModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SignupModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SignupModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SignupModel value)  $default,){
final _that = this;
switch (_that) {
case _SignupModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SignupModel value)?  $default,){
final _that = this;
switch (_that) {
case _SignupModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? country_id,  num? lng,  String? verify_via,  String? name,  String? phone,  int? city_id,  String? address,  String? role,  String? dob, @FileJsonConverter()  File? avatar,  String? password,  String? password_confirmation,  String? email,  num? lat)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SignupModel() when $default != null:
return $default(_that.country_id,_that.lng,_that.verify_via,_that.name,_that.phone,_that.city_id,_that.address,_that.role,_that.dob,_that.avatar,_that.password,_that.password_confirmation,_that.email,_that.lat);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? country_id,  num? lng,  String? verify_via,  String? name,  String? phone,  int? city_id,  String? address,  String? role,  String? dob, @FileJsonConverter()  File? avatar,  String? password,  String? password_confirmation,  String? email,  num? lat)  $default,) {final _that = this;
switch (_that) {
case _SignupModel():
return $default(_that.country_id,_that.lng,_that.verify_via,_that.name,_that.phone,_that.city_id,_that.address,_that.role,_that.dob,_that.avatar,_that.password,_that.password_confirmation,_that.email,_that.lat);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? country_id,  num? lng,  String? verify_via,  String? name,  String? phone,  int? city_id,  String? address,  String? role,  String? dob, @FileJsonConverter()  File? avatar,  String? password,  String? password_confirmation,  String? email,  num? lat)?  $default,) {final _that = this;
switch (_that) {
case _SignupModel() when $default != null:
return $default(_that.country_id,_that.lng,_that.verify_via,_that.name,_that.phone,_that.city_id,_that.address,_that.role,_that.dob,_that.avatar,_that.password,_that.password_confirmation,_that.email,_that.lat);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SignupModel implements SignupModel {
   _SignupModel({this.country_id = 0, this.lng = 0.000, this.verify_via = "", this.name = "", this.phone = "", this.city_id = 0, this.address = "", this.role = "", this.dob = "", @FileJsonConverter() this.avatar, this.password = "", this.password_confirmation = "", this.email = "", this.lat = 0.000});
  factory _SignupModel.fromJson(Map<String, dynamic> json) => _$SignupModelFromJson(json);

@override@JsonKey() final  int? country_id;
@override@JsonKey() final  num? lng;
@override@JsonKey() final  String? verify_via;
@override@JsonKey() final  String? name;
@override@JsonKey() final  String? phone;
@override@JsonKey() final  int? city_id;
@override@JsonKey() final  String? address;
@override@JsonKey() final  String? role;
@override@JsonKey() final  String? dob;
@override@FileJsonConverter() final  File? avatar;
@override@JsonKey() final  String? password;
@override@JsonKey() final  String? password_confirmation;
@override@JsonKey() final  String? email;
@override@JsonKey() final  num? lat;

/// Create a copy of SignupModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignupModelCopyWith<_SignupModel> get copyWith => __$SignupModelCopyWithImpl<_SignupModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SignupModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignupModel&&(identical(other.country_id, country_id) || other.country_id == country_id)&&(identical(other.lng, lng) || other.lng == lng)&&(identical(other.verify_via, verify_via) || other.verify_via == verify_via)&&(identical(other.name, name) || other.name == name)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.city_id, city_id) || other.city_id == city_id)&&(identical(other.address, address) || other.address == address)&&(identical(other.role, role) || other.role == role)&&(identical(other.dob, dob) || other.dob == dob)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.password, password) || other.password == password)&&(identical(other.password_confirmation, password_confirmation) || other.password_confirmation == password_confirmation)&&(identical(other.email, email) || other.email == email)&&(identical(other.lat, lat) || other.lat == lat));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,country_id,lng,verify_via,name,phone,city_id,address,role,dob,avatar,password,password_confirmation,email,lat);

@override
String toString() {
  return 'SignupModel(country_id: $country_id, lng: $lng, verify_via: $verify_via, name: $name, phone: $phone, city_id: $city_id, address: $address, role: $role, dob: $dob, avatar: $avatar, password: $password, password_confirmation: $password_confirmation, email: $email, lat: $lat)';
}


}

/// @nodoc
abstract mixin class _$SignupModelCopyWith<$Res> implements $SignupModelCopyWith<$Res> {
  factory _$SignupModelCopyWith(_SignupModel value, $Res Function(_SignupModel) _then) = __$SignupModelCopyWithImpl;
@override @useResult
$Res call({
 int? country_id, num? lng, String? verify_via, String? name, String? phone, int? city_id, String? address, String? role, String? dob,@FileJsonConverter() File? avatar, String? password, String? password_confirmation, String? email, num? lat
});




}
/// @nodoc
class __$SignupModelCopyWithImpl<$Res>
    implements _$SignupModelCopyWith<$Res> {
  __$SignupModelCopyWithImpl(this._self, this._then);

  final _SignupModel _self;
  final $Res Function(_SignupModel) _then;

/// Create a copy of SignupModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? country_id = freezed,Object? lng = freezed,Object? verify_via = freezed,Object? name = freezed,Object? phone = freezed,Object? city_id = freezed,Object? address = freezed,Object? role = freezed,Object? dob = freezed,Object? avatar = freezed,Object? password = freezed,Object? password_confirmation = freezed,Object? email = freezed,Object? lat = freezed,}) {
  return _then(_SignupModel(
country_id: freezed == country_id ? _self.country_id : country_id // ignore: cast_nullable_to_non_nullable
as int?,lng: freezed == lng ? _self.lng : lng // ignore: cast_nullable_to_non_nullable
as num?,verify_via: freezed == verify_via ? _self.verify_via : verify_via // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,city_id: freezed == city_id ? _self.city_id : city_id // ignore: cast_nullable_to_non_nullable
as int?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String?,dob: freezed == dob ? _self.dob : dob // ignore: cast_nullable_to_non_nullable
as String?,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as File?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,password_confirmation: freezed == password_confirmation ? _self.password_confirmation : password_confirmation // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,lat: freezed == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as num?,
  ));
}


}

// dart format on
