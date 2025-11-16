// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BookingEntity {

 int? get id; String? get booking_number; Map<String, dynamic>? get customer; Map<String, dynamic>? get provider; Map<String, dynamic>? get service; String? get start_time; String? get end_time; String? get actual_start_time; String? get actual_end_time; int? get total_price; int? get base_price; int? get additional_cost; String? get additional_cost_notes; String? get status; String? get notes; List? get images; String? get created_at; String? get updated_at; String? get image;
/// Create a copy of BookingEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookingEntityCopyWith<BookingEntity> get copyWith => _$BookingEntityCopyWithImpl<BookingEntity>(this as BookingEntity, _$identity);

  /// Serializes this BookingEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookingEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.booking_number, booking_number) || other.booking_number == booking_number)&&const DeepCollectionEquality().equals(other.customer, customer)&&const DeepCollectionEquality().equals(other.provider, provider)&&const DeepCollectionEquality().equals(other.service, service)&&(identical(other.start_time, start_time) || other.start_time == start_time)&&(identical(other.end_time, end_time) || other.end_time == end_time)&&(identical(other.actual_start_time, actual_start_time) || other.actual_start_time == actual_start_time)&&(identical(other.actual_end_time, actual_end_time) || other.actual_end_time == actual_end_time)&&(identical(other.total_price, total_price) || other.total_price == total_price)&&(identical(other.base_price, base_price) || other.base_price == base_price)&&(identical(other.additional_cost, additional_cost) || other.additional_cost == additional_cost)&&(identical(other.additional_cost_notes, additional_cost_notes) || other.additional_cost_notes == additional_cost_notes)&&(identical(other.status, status) || other.status == status)&&(identical(other.notes, notes) || other.notes == notes)&&const DeepCollectionEquality().equals(other.images, images)&&(identical(other.created_at, created_at) || other.created_at == created_at)&&(identical(other.updated_at, updated_at) || other.updated_at == updated_at)&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,booking_number,const DeepCollectionEquality().hash(customer),const DeepCollectionEquality().hash(provider),const DeepCollectionEquality().hash(service),start_time,end_time,actual_start_time,actual_end_time,total_price,base_price,additional_cost,additional_cost_notes,status,notes,const DeepCollectionEquality().hash(images),created_at,updated_at,image]);

@override
String toString() {
  return 'BookingEntity(id: $id, booking_number: $booking_number, customer: $customer, provider: $provider, service: $service, start_time: $start_time, end_time: $end_time, actual_start_time: $actual_start_time, actual_end_time: $actual_end_time, total_price: $total_price, base_price: $base_price, additional_cost: $additional_cost, additional_cost_notes: $additional_cost_notes, status: $status, notes: $notes, images: $images, created_at: $created_at, updated_at: $updated_at, image: $image)';
}


}

/// @nodoc
abstract mixin class $BookingEntityCopyWith<$Res>  {
  factory $BookingEntityCopyWith(BookingEntity value, $Res Function(BookingEntity) _then) = _$BookingEntityCopyWithImpl;
@useResult
$Res call({
 int? id, String? booking_number, Map<String, dynamic>? customer, Map<String, dynamic>? provider, Map<String, dynamic>? service, String? start_time, String? end_time, String? actual_start_time, String? actual_end_time, int? total_price, int? base_price, int? additional_cost, String? additional_cost_notes, String? status, String? notes, List? images, String? created_at, String? updated_at, String? image
});




}
/// @nodoc
class _$BookingEntityCopyWithImpl<$Res>
    implements $BookingEntityCopyWith<$Res> {
  _$BookingEntityCopyWithImpl(this._self, this._then);

  final BookingEntity _self;
  final $Res Function(BookingEntity) _then;

/// Create a copy of BookingEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? booking_number = freezed,Object? customer = freezed,Object? provider = freezed,Object? service = freezed,Object? start_time = freezed,Object? end_time = freezed,Object? actual_start_time = freezed,Object? actual_end_time = freezed,Object? total_price = freezed,Object? base_price = freezed,Object? additional_cost = freezed,Object? additional_cost_notes = freezed,Object? status = freezed,Object? notes = freezed,Object? images = freezed,Object? created_at = freezed,Object? updated_at = freezed,Object? image = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,booking_number: freezed == booking_number ? _self.booking_number : booking_number // ignore: cast_nullable_to_non_nullable
as String?,customer: freezed == customer ? _self.customer : customer // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,provider: freezed == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,service: freezed == service ? _self.service : service // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,start_time: freezed == start_time ? _self.start_time : start_time // ignore: cast_nullable_to_non_nullable
as String?,end_time: freezed == end_time ? _self.end_time : end_time // ignore: cast_nullable_to_non_nullable
as String?,actual_start_time: freezed == actual_start_time ? _self.actual_start_time : actual_start_time // ignore: cast_nullable_to_non_nullable
as String?,actual_end_time: freezed == actual_end_time ? _self.actual_end_time : actual_end_time // ignore: cast_nullable_to_non_nullable
as String?,total_price: freezed == total_price ? _self.total_price : total_price // ignore: cast_nullable_to_non_nullable
as int?,base_price: freezed == base_price ? _self.base_price : base_price // ignore: cast_nullable_to_non_nullable
as int?,additional_cost: freezed == additional_cost ? _self.additional_cost : additional_cost // ignore: cast_nullable_to_non_nullable
as int?,additional_cost_notes: freezed == additional_cost_notes ? _self.additional_cost_notes : additional_cost_notes // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,images: freezed == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as List?,created_at: freezed == created_at ? _self.created_at : created_at // ignore: cast_nullable_to_non_nullable
as String?,updated_at: freezed == updated_at ? _self.updated_at : updated_at // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [BookingEntity].
extension BookingEntityPatterns on BookingEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BookingEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BookingEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BookingEntity value)  $default,){
final _that = this;
switch (_that) {
case _BookingEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BookingEntity value)?  $default,){
final _that = this;
switch (_that) {
case _BookingEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? booking_number,  Map<String, dynamic>? customer,  Map<String, dynamic>? provider,  Map<String, dynamic>? service,  String? start_time,  String? end_time,  String? actual_start_time,  String? actual_end_time,  int? total_price,  int? base_price,  int? additional_cost,  String? additional_cost_notes,  String? status,  String? notes,  List? images,  String? created_at,  String? updated_at,  String? image)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BookingEntity() when $default != null:
return $default(_that.id,_that.booking_number,_that.customer,_that.provider,_that.service,_that.start_time,_that.end_time,_that.actual_start_time,_that.actual_end_time,_that.total_price,_that.base_price,_that.additional_cost,_that.additional_cost_notes,_that.status,_that.notes,_that.images,_that.created_at,_that.updated_at,_that.image);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? booking_number,  Map<String, dynamic>? customer,  Map<String, dynamic>? provider,  Map<String, dynamic>? service,  String? start_time,  String? end_time,  String? actual_start_time,  String? actual_end_time,  int? total_price,  int? base_price,  int? additional_cost,  String? additional_cost_notes,  String? status,  String? notes,  List? images,  String? created_at,  String? updated_at,  String? image)  $default,) {final _that = this;
switch (_that) {
case _BookingEntity():
return $default(_that.id,_that.booking_number,_that.customer,_that.provider,_that.service,_that.start_time,_that.end_time,_that.actual_start_time,_that.actual_end_time,_that.total_price,_that.base_price,_that.additional_cost,_that.additional_cost_notes,_that.status,_that.notes,_that.images,_that.created_at,_that.updated_at,_that.image);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? booking_number,  Map<String, dynamic>? customer,  Map<String, dynamic>? provider,  Map<String, dynamic>? service,  String? start_time,  String? end_time,  String? actual_start_time,  String? actual_end_time,  int? total_price,  int? base_price,  int? additional_cost,  String? additional_cost_notes,  String? status,  String? notes,  List? images,  String? created_at,  String? updated_at,  String? image)?  $default,) {final _that = this;
switch (_that) {
case _BookingEntity() when $default != null:
return $default(_that.id,_that.booking_number,_that.customer,_that.provider,_that.service,_that.start_time,_that.end_time,_that.actual_start_time,_that.actual_end_time,_that.total_price,_that.base_price,_that.additional_cost,_that.additional_cost_notes,_that.status,_that.notes,_that.images,_that.created_at,_that.updated_at,_that.image);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BookingEntity implements BookingEntity {
  const _BookingEntity({this.id = 0, this.booking_number = "", final  Map<String, dynamic>? customer = const {}, final  Map<String, dynamic>? provider = const {}, final  Map<String, dynamic>? service = const {}, this.start_time = "", this.end_time = "", this.actual_start_time = "", this.actual_end_time = "", this.total_price = 0, this.base_price = 0, this.additional_cost = 0, this.additional_cost_notes = "", this.status = "", this.notes = "", final  List? images = const [], this.created_at = "", this.updated_at = "", this.image = ""}): _customer = customer,_provider = provider,_service = service,_images = images;
  factory _BookingEntity.fromJson(Map<String, dynamic> json) => _$BookingEntityFromJson(json);

@override@JsonKey() final  int? id;
@override@JsonKey() final  String? booking_number;
 final  Map<String, dynamic>? _customer;
@override@JsonKey() Map<String, dynamic>? get customer {
  final value = _customer;
  if (value == null) return null;
  if (_customer is EqualUnmodifiableMapView) return _customer;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

 final  Map<String, dynamic>? _provider;
@override@JsonKey() Map<String, dynamic>? get provider {
  final value = _provider;
  if (value == null) return null;
  if (_provider is EqualUnmodifiableMapView) return _provider;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

 final  Map<String, dynamic>? _service;
@override@JsonKey() Map<String, dynamic>? get service {
  final value = _service;
  if (value == null) return null;
  if (_service is EqualUnmodifiableMapView) return _service;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override@JsonKey() final  String? start_time;
@override@JsonKey() final  String? end_time;
@override@JsonKey() final  String? actual_start_time;
@override@JsonKey() final  String? actual_end_time;
@override@JsonKey() final  int? total_price;
@override@JsonKey() final  int? base_price;
@override@JsonKey() final  int? additional_cost;
@override@JsonKey() final  String? additional_cost_notes;
@override@JsonKey() final  String? status;
@override@JsonKey() final  String? notes;
 final  List? _images;
@override@JsonKey() List? get images {
  final value = _images;
  if (value == null) return null;
  if (_images is EqualUnmodifiableListView) return _images;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey() final  String? created_at;
@override@JsonKey() final  String? updated_at;
@override@JsonKey() final  String? image;

/// Create a copy of BookingEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BookingEntityCopyWith<_BookingEntity> get copyWith => __$BookingEntityCopyWithImpl<_BookingEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BookingEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BookingEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.booking_number, booking_number) || other.booking_number == booking_number)&&const DeepCollectionEquality().equals(other._customer, _customer)&&const DeepCollectionEquality().equals(other._provider, _provider)&&const DeepCollectionEquality().equals(other._service, _service)&&(identical(other.start_time, start_time) || other.start_time == start_time)&&(identical(other.end_time, end_time) || other.end_time == end_time)&&(identical(other.actual_start_time, actual_start_time) || other.actual_start_time == actual_start_time)&&(identical(other.actual_end_time, actual_end_time) || other.actual_end_time == actual_end_time)&&(identical(other.total_price, total_price) || other.total_price == total_price)&&(identical(other.base_price, base_price) || other.base_price == base_price)&&(identical(other.additional_cost, additional_cost) || other.additional_cost == additional_cost)&&(identical(other.additional_cost_notes, additional_cost_notes) || other.additional_cost_notes == additional_cost_notes)&&(identical(other.status, status) || other.status == status)&&(identical(other.notes, notes) || other.notes == notes)&&const DeepCollectionEquality().equals(other._images, _images)&&(identical(other.created_at, created_at) || other.created_at == created_at)&&(identical(other.updated_at, updated_at) || other.updated_at == updated_at)&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,booking_number,const DeepCollectionEquality().hash(_customer),const DeepCollectionEquality().hash(_provider),const DeepCollectionEquality().hash(_service),start_time,end_time,actual_start_time,actual_end_time,total_price,base_price,additional_cost,additional_cost_notes,status,notes,const DeepCollectionEquality().hash(_images),created_at,updated_at,image]);

@override
String toString() {
  return 'BookingEntity(id: $id, booking_number: $booking_number, customer: $customer, provider: $provider, service: $service, start_time: $start_time, end_time: $end_time, actual_start_time: $actual_start_time, actual_end_time: $actual_end_time, total_price: $total_price, base_price: $base_price, additional_cost: $additional_cost, additional_cost_notes: $additional_cost_notes, status: $status, notes: $notes, images: $images, created_at: $created_at, updated_at: $updated_at, image: $image)';
}


}

/// @nodoc
abstract mixin class _$BookingEntityCopyWith<$Res> implements $BookingEntityCopyWith<$Res> {
  factory _$BookingEntityCopyWith(_BookingEntity value, $Res Function(_BookingEntity) _then) = __$BookingEntityCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? booking_number, Map<String, dynamic>? customer, Map<String, dynamic>? provider, Map<String, dynamic>? service, String? start_time, String? end_time, String? actual_start_time, String? actual_end_time, int? total_price, int? base_price, int? additional_cost, String? additional_cost_notes, String? status, String? notes, List? images, String? created_at, String? updated_at, String? image
});




}
/// @nodoc
class __$BookingEntityCopyWithImpl<$Res>
    implements _$BookingEntityCopyWith<$Res> {
  __$BookingEntityCopyWithImpl(this._self, this._then);

  final _BookingEntity _self;
  final $Res Function(_BookingEntity) _then;

/// Create a copy of BookingEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? booking_number = freezed,Object? customer = freezed,Object? provider = freezed,Object? service = freezed,Object? start_time = freezed,Object? end_time = freezed,Object? actual_start_time = freezed,Object? actual_end_time = freezed,Object? total_price = freezed,Object? base_price = freezed,Object? additional_cost = freezed,Object? additional_cost_notes = freezed,Object? status = freezed,Object? notes = freezed,Object? images = freezed,Object? created_at = freezed,Object? updated_at = freezed,Object? image = freezed,}) {
  return _then(_BookingEntity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,booking_number: freezed == booking_number ? _self.booking_number : booking_number // ignore: cast_nullable_to_non_nullable
as String?,customer: freezed == customer ? _self._customer : customer // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,provider: freezed == provider ? _self._provider : provider // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,service: freezed == service ? _self._service : service // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,start_time: freezed == start_time ? _self.start_time : start_time // ignore: cast_nullable_to_non_nullable
as String?,end_time: freezed == end_time ? _self.end_time : end_time // ignore: cast_nullable_to_non_nullable
as String?,actual_start_time: freezed == actual_start_time ? _self.actual_start_time : actual_start_time // ignore: cast_nullable_to_non_nullable
as String?,actual_end_time: freezed == actual_end_time ? _self.actual_end_time : actual_end_time // ignore: cast_nullable_to_non_nullable
as String?,total_price: freezed == total_price ? _self.total_price : total_price // ignore: cast_nullable_to_non_nullable
as int?,base_price: freezed == base_price ? _self.base_price : base_price // ignore: cast_nullable_to_non_nullable
as int?,additional_cost: freezed == additional_cost ? _self.additional_cost : additional_cost // ignore: cast_nullable_to_non_nullable
as int?,additional_cost_notes: freezed == additional_cost_notes ? _self.additional_cost_notes : additional_cost_notes // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,images: freezed == images ? _self._images : images // ignore: cast_nullable_to_non_nullable
as List?,created_at: freezed == created_at ? _self.created_at : created_at // ignore: cast_nullable_to_non_nullable
as String?,updated_at: freezed == updated_at ? _self.updated_at : updated_at // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
