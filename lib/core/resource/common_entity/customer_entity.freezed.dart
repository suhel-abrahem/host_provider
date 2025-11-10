// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CustomerEntity {

 int? get id; String? get name; String? get email; String? get phone; List<AddressesEntity>? get addresses; String? get avatar;
/// Create a copy of CustomerEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CustomerEntityCopyWith<CustomerEntity> get copyWith => _$CustomerEntityCopyWithImpl<CustomerEntity>(this as CustomerEntity, _$identity);

  /// Serializes this CustomerEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CustomerEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&const DeepCollectionEquality().equals(other.addresses, addresses)&&(identical(other.avatar, avatar) || other.avatar == avatar));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,email,phone,const DeepCollectionEquality().hash(addresses),avatar);

@override
String toString() {
  return 'CustomerEntity(id: $id, name: $name, email: $email, phone: $phone, addresses: $addresses, avatar: $avatar)';
}


}

/// @nodoc
abstract mixin class $CustomerEntityCopyWith<$Res>  {
  factory $CustomerEntityCopyWith(CustomerEntity value, $Res Function(CustomerEntity) _then) = _$CustomerEntityCopyWithImpl;
@useResult
$Res call({
 int? id, String? name, String? email, String? phone, List<AddressesEntity>? addresses, String? avatar
});




}
/// @nodoc
class _$CustomerEntityCopyWithImpl<$Res>
    implements $CustomerEntityCopyWith<$Res> {
  _$CustomerEntityCopyWithImpl(this._self, this._then);

  final CustomerEntity _self;
  final $Res Function(CustomerEntity) _then;

/// Create a copy of CustomerEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? email = freezed,Object? phone = freezed,Object? addresses = freezed,Object? avatar = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,addresses: freezed == addresses ? _self.addresses : addresses // ignore: cast_nullable_to_non_nullable
as List<AddressesEntity>?,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CustomerEntity].
extension CustomerEntityPatterns on CustomerEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CustomerEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CustomerEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CustomerEntity value)  $default,){
final _that = this;
switch (_that) {
case _CustomerEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CustomerEntity value)?  $default,){
final _that = this;
switch (_that) {
case _CustomerEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? name,  String? email,  String? phone,  List<AddressesEntity>? addresses,  String? avatar)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CustomerEntity() when $default != null:
return $default(_that.id,_that.name,_that.email,_that.phone,_that.addresses,_that.avatar);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? name,  String? email,  String? phone,  List<AddressesEntity>? addresses,  String? avatar)  $default,) {final _that = this;
switch (_that) {
case _CustomerEntity():
return $default(_that.id,_that.name,_that.email,_that.phone,_that.addresses,_that.avatar);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? name,  String? email,  String? phone,  List<AddressesEntity>? addresses,  String? avatar)?  $default,) {final _that = this;
switch (_that) {
case _CustomerEntity() when $default != null:
return $default(_that.id,_that.name,_that.email,_that.phone,_that.addresses,_that.avatar);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CustomerEntity implements CustomerEntity {
  const _CustomerEntity({this.id = 0, this.name = "", this.email = "", this.phone = "", final  List<AddressesEntity>? addresses = const [], this.avatar = ""}): _addresses = addresses;
  factory _CustomerEntity.fromJson(Map<String, dynamic> json) => _$CustomerEntityFromJson(json);

@override@JsonKey() final  int? id;
@override@JsonKey() final  String? name;
@override@JsonKey() final  String? email;
@override@JsonKey() final  String? phone;
 final  List<AddressesEntity>? _addresses;
@override@JsonKey() List<AddressesEntity>? get addresses {
  final value = _addresses;
  if (value == null) return null;
  if (_addresses is EqualUnmodifiableListView) return _addresses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey() final  String? avatar;

/// Create a copy of CustomerEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CustomerEntityCopyWith<_CustomerEntity> get copyWith => __$CustomerEntityCopyWithImpl<_CustomerEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CustomerEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CustomerEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&const DeepCollectionEquality().equals(other._addresses, _addresses)&&(identical(other.avatar, avatar) || other.avatar == avatar));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,email,phone,const DeepCollectionEquality().hash(_addresses),avatar);

@override
String toString() {
  return 'CustomerEntity(id: $id, name: $name, email: $email, phone: $phone, addresses: $addresses, avatar: $avatar)';
}


}

/// @nodoc
abstract mixin class _$CustomerEntityCopyWith<$Res> implements $CustomerEntityCopyWith<$Res> {
  factory _$CustomerEntityCopyWith(_CustomerEntity value, $Res Function(_CustomerEntity) _then) = __$CustomerEntityCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? name, String? email, String? phone, List<AddressesEntity>? addresses, String? avatar
});




}
/// @nodoc
class __$CustomerEntityCopyWithImpl<$Res>
    implements _$CustomerEntityCopyWith<$Res> {
  __$CustomerEntityCopyWithImpl(this._self, this._then);

  final _CustomerEntity _self;
  final $Res Function(_CustomerEntity) _then;

/// Create a copy of CustomerEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? email = freezed,Object? phone = freezed,Object? addresses = freezed,Object? avatar = freezed,}) {
  return _then(_CustomerEntity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,addresses: freezed == addresses ? _self._addresses : addresses // ignore: cast_nullable_to_non_nullable
as List<AddressesEntity>?,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
