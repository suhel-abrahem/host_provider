// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chats_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChatsEntity {

 int? get id; int? get booking_id; String? get booking_number; String? get booking_status; String? get service_name; Map<String, dynamic>? get other_participant; Map<String, dynamic>? get last_message; String? get last_message_at; int? get unread_count; String? get status;
/// Create a copy of ChatsEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatsEntityCopyWith<ChatsEntity> get copyWith => _$ChatsEntityCopyWithImpl<ChatsEntity>(this as ChatsEntity, _$identity);

  /// Serializes this ChatsEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatsEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.booking_id, booking_id) || other.booking_id == booking_id)&&(identical(other.booking_number, booking_number) || other.booking_number == booking_number)&&(identical(other.booking_status, booking_status) || other.booking_status == booking_status)&&(identical(other.service_name, service_name) || other.service_name == service_name)&&const DeepCollectionEquality().equals(other.other_participant, other_participant)&&const DeepCollectionEquality().equals(other.last_message, last_message)&&(identical(other.last_message_at, last_message_at) || other.last_message_at == last_message_at)&&(identical(other.unread_count, unread_count) || other.unread_count == unread_count)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,booking_id,booking_number,booking_status,service_name,const DeepCollectionEquality().hash(other_participant),const DeepCollectionEquality().hash(last_message),last_message_at,unread_count,status);

@override
String toString() {
  return 'ChatsEntity(id: $id, booking_id: $booking_id, booking_number: $booking_number, booking_status: $booking_status, service_name: $service_name, other_participant: $other_participant, last_message: $last_message, last_message_at: $last_message_at, unread_count: $unread_count, status: $status)';
}


}

/// @nodoc
abstract mixin class $ChatsEntityCopyWith<$Res>  {
  factory $ChatsEntityCopyWith(ChatsEntity value, $Res Function(ChatsEntity) _then) = _$ChatsEntityCopyWithImpl;
@useResult
$Res call({
 int? id, int? booking_id, String? booking_number, String? booking_status, String? service_name, Map<String, dynamic>? other_participant, Map<String, dynamic>? last_message, String? last_message_at, int? unread_count, String? status
});




}
/// @nodoc
class _$ChatsEntityCopyWithImpl<$Res>
    implements $ChatsEntityCopyWith<$Res> {
  _$ChatsEntityCopyWithImpl(this._self, this._then);

  final ChatsEntity _self;
  final $Res Function(ChatsEntity) _then;

/// Create a copy of ChatsEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? booking_id = freezed,Object? booking_number = freezed,Object? booking_status = freezed,Object? service_name = freezed,Object? other_participant = freezed,Object? last_message = freezed,Object? last_message_at = freezed,Object? unread_count = freezed,Object? status = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,booking_id: freezed == booking_id ? _self.booking_id : booking_id // ignore: cast_nullable_to_non_nullable
as int?,booking_number: freezed == booking_number ? _self.booking_number : booking_number // ignore: cast_nullable_to_non_nullable
as String?,booking_status: freezed == booking_status ? _self.booking_status : booking_status // ignore: cast_nullable_to_non_nullable
as String?,service_name: freezed == service_name ? _self.service_name : service_name // ignore: cast_nullable_to_non_nullable
as String?,other_participant: freezed == other_participant ? _self.other_participant : other_participant // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,last_message: freezed == last_message ? _self.last_message : last_message // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,last_message_at: freezed == last_message_at ? _self.last_message_at : last_message_at // ignore: cast_nullable_to_non_nullable
as String?,unread_count: freezed == unread_count ? _self.unread_count : unread_count // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ChatsEntity].
extension ChatsEntityPatterns on ChatsEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatsEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatsEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatsEntity value)  $default,){
final _that = this;
switch (_that) {
case _ChatsEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatsEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ChatsEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  int? booking_id,  String? booking_number,  String? booking_status,  String? service_name,  Map<String, dynamic>? other_participant,  Map<String, dynamic>? last_message,  String? last_message_at,  int? unread_count,  String? status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatsEntity() when $default != null:
return $default(_that.id,_that.booking_id,_that.booking_number,_that.booking_status,_that.service_name,_that.other_participant,_that.last_message,_that.last_message_at,_that.unread_count,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  int? booking_id,  String? booking_number,  String? booking_status,  String? service_name,  Map<String, dynamic>? other_participant,  Map<String, dynamic>? last_message,  String? last_message_at,  int? unread_count,  String? status)  $default,) {final _that = this;
switch (_that) {
case _ChatsEntity():
return $default(_that.id,_that.booking_id,_that.booking_number,_that.booking_status,_that.service_name,_that.other_participant,_that.last_message,_that.last_message_at,_that.unread_count,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  int? booking_id,  String? booking_number,  String? booking_status,  String? service_name,  Map<String, dynamic>? other_participant,  Map<String, dynamic>? last_message,  String? last_message_at,  int? unread_count,  String? status)?  $default,) {final _that = this;
switch (_that) {
case _ChatsEntity() when $default != null:
return $default(_that.id,_that.booking_id,_that.booking_number,_that.booking_status,_that.service_name,_that.other_participant,_that.last_message,_that.last_message_at,_that.unread_count,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChatsEntity implements ChatsEntity {
  const _ChatsEntity({this.id = 0, this.booking_id = 0, this.booking_number = "", this.booking_status = "", this.service_name = "", final  Map<String, dynamic>? other_participant = const {}, final  Map<String, dynamic>? last_message = const {}, this.last_message_at = "", this.unread_count = 0, this.status = ""}): _other_participant = other_participant,_last_message = last_message;
  factory _ChatsEntity.fromJson(Map<String, dynamic> json) => _$ChatsEntityFromJson(json);

@override@JsonKey() final  int? id;
@override@JsonKey() final  int? booking_id;
@override@JsonKey() final  String? booking_number;
@override@JsonKey() final  String? booking_status;
@override@JsonKey() final  String? service_name;
 final  Map<String, dynamic>? _other_participant;
@override@JsonKey() Map<String, dynamic>? get other_participant {
  final value = _other_participant;
  if (value == null) return null;
  if (_other_participant is EqualUnmodifiableMapView) return _other_participant;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

 final  Map<String, dynamic>? _last_message;
@override@JsonKey() Map<String, dynamic>? get last_message {
  final value = _last_message;
  if (value == null) return null;
  if (_last_message is EqualUnmodifiableMapView) return _last_message;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override@JsonKey() final  String? last_message_at;
@override@JsonKey() final  int? unread_count;
@override@JsonKey() final  String? status;

/// Create a copy of ChatsEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatsEntityCopyWith<_ChatsEntity> get copyWith => __$ChatsEntityCopyWithImpl<_ChatsEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChatsEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatsEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.booking_id, booking_id) || other.booking_id == booking_id)&&(identical(other.booking_number, booking_number) || other.booking_number == booking_number)&&(identical(other.booking_status, booking_status) || other.booking_status == booking_status)&&(identical(other.service_name, service_name) || other.service_name == service_name)&&const DeepCollectionEquality().equals(other._other_participant, _other_participant)&&const DeepCollectionEquality().equals(other._last_message, _last_message)&&(identical(other.last_message_at, last_message_at) || other.last_message_at == last_message_at)&&(identical(other.unread_count, unread_count) || other.unread_count == unread_count)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,booking_id,booking_number,booking_status,service_name,const DeepCollectionEquality().hash(_other_participant),const DeepCollectionEquality().hash(_last_message),last_message_at,unread_count,status);

@override
String toString() {
  return 'ChatsEntity(id: $id, booking_id: $booking_id, booking_number: $booking_number, booking_status: $booking_status, service_name: $service_name, other_participant: $other_participant, last_message: $last_message, last_message_at: $last_message_at, unread_count: $unread_count, status: $status)';
}


}

/// @nodoc
abstract mixin class _$ChatsEntityCopyWith<$Res> implements $ChatsEntityCopyWith<$Res> {
  factory _$ChatsEntityCopyWith(_ChatsEntity value, $Res Function(_ChatsEntity) _then) = __$ChatsEntityCopyWithImpl;
@override @useResult
$Res call({
 int? id, int? booking_id, String? booking_number, String? booking_status, String? service_name, Map<String, dynamic>? other_participant, Map<String, dynamic>? last_message, String? last_message_at, int? unread_count, String? status
});




}
/// @nodoc
class __$ChatsEntityCopyWithImpl<$Res>
    implements _$ChatsEntityCopyWith<$Res> {
  __$ChatsEntityCopyWithImpl(this._self, this._then);

  final _ChatsEntity _self;
  final $Res Function(_ChatsEntity) _then;

/// Create a copy of ChatsEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? booking_id = freezed,Object? booking_number = freezed,Object? booking_status = freezed,Object? service_name = freezed,Object? other_participant = freezed,Object? last_message = freezed,Object? last_message_at = freezed,Object? unread_count = freezed,Object? status = freezed,}) {
  return _then(_ChatsEntity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,booking_id: freezed == booking_id ? _self.booking_id : booking_id // ignore: cast_nullable_to_non_nullable
as int?,booking_number: freezed == booking_number ? _self.booking_number : booking_number // ignore: cast_nullable_to_non_nullable
as String?,booking_status: freezed == booking_status ? _self.booking_status : booking_status // ignore: cast_nullable_to_non_nullable
as String?,service_name: freezed == service_name ? _self.service_name : service_name // ignore: cast_nullable_to_non_nullable
as String?,other_participant: freezed == other_participant ? _self._other_participant : other_participant // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,last_message: freezed == last_message ? _self._last_message : last_message // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,last_message_at: freezed == last_message_at ? _self.last_message_at : last_message_at // ignore: cast_nullable_to_non_nullable
as String?,unread_count: freezed == unread_count ? _self.unread_count : unread_count // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
