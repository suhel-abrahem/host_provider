// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_notification_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MessageNotificationEntity {

 int? get conversation_id; String get booking_number; MessageEntity? get message;
/// Create a copy of MessageNotificationEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MessageNotificationEntityCopyWith<MessageNotificationEntity> get copyWith => _$MessageNotificationEntityCopyWithImpl<MessageNotificationEntity>(this as MessageNotificationEntity, _$identity);

  /// Serializes this MessageNotificationEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MessageNotificationEntity&&(identical(other.conversation_id, conversation_id) || other.conversation_id == conversation_id)&&(identical(other.booking_number, booking_number) || other.booking_number == booking_number)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,conversation_id,booking_number,message);

@override
String toString() {
  return 'MessageNotificationEntity(conversation_id: $conversation_id, booking_number: $booking_number, message: $message)';
}


}

/// @nodoc
abstract mixin class $MessageNotificationEntityCopyWith<$Res>  {
  factory $MessageNotificationEntityCopyWith(MessageNotificationEntity value, $Res Function(MessageNotificationEntity) _then) = _$MessageNotificationEntityCopyWithImpl;
@useResult
$Res call({
 int? conversation_id, String booking_number, MessageEntity? message
});


$MessageEntityCopyWith<$Res>? get message;

}
/// @nodoc
class _$MessageNotificationEntityCopyWithImpl<$Res>
    implements $MessageNotificationEntityCopyWith<$Res> {
  _$MessageNotificationEntityCopyWithImpl(this._self, this._then);

  final MessageNotificationEntity _self;
  final $Res Function(MessageNotificationEntity) _then;

/// Create a copy of MessageNotificationEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? conversation_id = freezed,Object? booking_number = null,Object? message = freezed,}) {
  return _then(_self.copyWith(
conversation_id: freezed == conversation_id ? _self.conversation_id : conversation_id // ignore: cast_nullable_to_non_nullable
as int?,booking_number: null == booking_number ? _self.booking_number : booking_number // ignore: cast_nullable_to_non_nullable
as String,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as MessageEntity?,
  ));
}
/// Create a copy of MessageNotificationEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MessageEntityCopyWith<$Res>? get message {
    if (_self.message == null) {
    return null;
  }

  return $MessageEntityCopyWith<$Res>(_self.message!, (value) {
    return _then(_self.copyWith(message: value));
  });
}
}


/// Adds pattern-matching-related methods to [MessageNotificationEntity].
extension MessageNotificationEntityPatterns on MessageNotificationEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MessageNotificationEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MessageNotificationEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MessageNotificationEntity value)  $default,){
final _that = this;
switch (_that) {
case _MessageNotificationEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MessageNotificationEntity value)?  $default,){
final _that = this;
switch (_that) {
case _MessageNotificationEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? conversation_id,  String booking_number,  MessageEntity? message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MessageNotificationEntity() when $default != null:
return $default(_that.conversation_id,_that.booking_number,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? conversation_id,  String booking_number,  MessageEntity? message)  $default,) {final _that = this;
switch (_that) {
case _MessageNotificationEntity():
return $default(_that.conversation_id,_that.booking_number,_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? conversation_id,  String booking_number,  MessageEntity? message)?  $default,) {final _that = this;
switch (_that) {
case _MessageNotificationEntity() when $default != null:
return $default(_that.conversation_id,_that.booking_number,_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MessageNotificationEntity implements MessageNotificationEntity {
  const _MessageNotificationEntity({this.conversation_id = 0, this.booking_number = "", this.message = const MessageEntity()});
  factory _MessageNotificationEntity.fromJson(Map<String, dynamic> json) => _$MessageNotificationEntityFromJson(json);

@override@JsonKey() final  int? conversation_id;
@override@JsonKey() final  String booking_number;
@override@JsonKey() final  MessageEntity? message;

/// Create a copy of MessageNotificationEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MessageNotificationEntityCopyWith<_MessageNotificationEntity> get copyWith => __$MessageNotificationEntityCopyWithImpl<_MessageNotificationEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MessageNotificationEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MessageNotificationEntity&&(identical(other.conversation_id, conversation_id) || other.conversation_id == conversation_id)&&(identical(other.booking_number, booking_number) || other.booking_number == booking_number)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,conversation_id,booking_number,message);

@override
String toString() {
  return 'MessageNotificationEntity(conversation_id: $conversation_id, booking_number: $booking_number, message: $message)';
}


}

/// @nodoc
abstract mixin class _$MessageNotificationEntityCopyWith<$Res> implements $MessageNotificationEntityCopyWith<$Res> {
  factory _$MessageNotificationEntityCopyWith(_MessageNotificationEntity value, $Res Function(_MessageNotificationEntity) _then) = __$MessageNotificationEntityCopyWithImpl;
@override @useResult
$Res call({
 int? conversation_id, String booking_number, MessageEntity? message
});


@override $MessageEntityCopyWith<$Res>? get message;

}
/// @nodoc
class __$MessageNotificationEntityCopyWithImpl<$Res>
    implements _$MessageNotificationEntityCopyWith<$Res> {
  __$MessageNotificationEntityCopyWithImpl(this._self, this._then);

  final _MessageNotificationEntity _self;
  final $Res Function(_MessageNotificationEntity) _then;

/// Create a copy of MessageNotificationEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? conversation_id = freezed,Object? booking_number = null,Object? message = freezed,}) {
  return _then(_MessageNotificationEntity(
conversation_id: freezed == conversation_id ? _self.conversation_id : conversation_id // ignore: cast_nullable_to_non_nullable
as int?,booking_number: null == booking_number ? _self.booking_number : booking_number // ignore: cast_nullable_to_non_nullable
as String,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as MessageEntity?,
  ));
}

/// Create a copy of MessageNotificationEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MessageEntityCopyWith<$Res>? get message {
    if (_self.message == null) {
    return null;
  }

  return $MessageEntityCopyWith<$Res>(_self.message!, (value) {
    return _then(_self.copyWith(message: value));
  });
}
}

// dart format on
