// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_from_websocet_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MessageFromWebSocketEntity {

 int? get conversation_id; String get booking_number; MessageEntity? get message;
/// Create a copy of MessageFromWebSocketEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MessageFromWebSocketEntityCopyWith<MessageFromWebSocketEntity> get copyWith => _$MessageFromWebSocketEntityCopyWithImpl<MessageFromWebSocketEntity>(this as MessageFromWebSocketEntity, _$identity);

  /// Serializes this MessageFromWebSocketEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MessageFromWebSocketEntity&&(identical(other.conversation_id, conversation_id) || other.conversation_id == conversation_id)&&(identical(other.booking_number, booking_number) || other.booking_number == booking_number)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,conversation_id,booking_number,message);

@override
String toString() {
  return 'MessageFromWebSocketEntity(conversation_id: $conversation_id, booking_number: $booking_number, message: $message)';
}


}

/// @nodoc
abstract mixin class $MessageFromWebSocketEntityCopyWith<$Res>  {
  factory $MessageFromWebSocketEntityCopyWith(MessageFromWebSocketEntity value, $Res Function(MessageFromWebSocketEntity) _then) = _$MessageFromWebSocketEntityCopyWithImpl;
@useResult
$Res call({
 int? conversation_id, String booking_number, MessageEntity? message
});


$MessageEntityCopyWith<$Res>? get message;

}
/// @nodoc
class _$MessageFromWebSocketEntityCopyWithImpl<$Res>
    implements $MessageFromWebSocketEntityCopyWith<$Res> {
  _$MessageFromWebSocketEntityCopyWithImpl(this._self, this._then);

  final MessageFromWebSocketEntity _self;
  final $Res Function(MessageFromWebSocketEntity) _then;

/// Create a copy of MessageFromWebSocketEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? conversation_id = freezed,Object? booking_number = null,Object? message = freezed,}) {
  return _then(_self.copyWith(
conversation_id: freezed == conversation_id ? _self.conversation_id : conversation_id // ignore: cast_nullable_to_non_nullable
as int?,booking_number: null == booking_number ? _self.booking_number : booking_number // ignore: cast_nullable_to_non_nullable
as String,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as MessageEntity?,
  ));
}
/// Create a copy of MessageFromWebSocketEntity
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


/// Adds pattern-matching-related methods to [MessageFromWebSocketEntity].
extension MessageFromWebSocketEntityPatterns on MessageFromWebSocketEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MessageFromWebSocketEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MessageFromWebSocketEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MessageFromWebSocketEntity value)  $default,){
final _that = this;
switch (_that) {
case _MessageFromWebSocketEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MessageFromWebSocketEntity value)?  $default,){
final _that = this;
switch (_that) {
case _MessageFromWebSocketEntity() when $default != null:
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
case _MessageFromWebSocketEntity() when $default != null:
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
case _MessageFromWebSocketEntity():
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
case _MessageFromWebSocketEntity() when $default != null:
return $default(_that.conversation_id,_that.booking_number,_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MessageFromWebSocketEntity implements MessageFromWebSocketEntity {
  const _MessageFromWebSocketEntity({this.conversation_id = 0, this.booking_number = "", this.message = const MessageEntity()});
  factory _MessageFromWebSocketEntity.fromJson(Map<String, dynamic> json) => _$MessageFromWebSocketEntityFromJson(json);

@override@JsonKey() final  int? conversation_id;
@override@JsonKey() final  String booking_number;
@override@JsonKey() final  MessageEntity? message;

/// Create a copy of MessageFromWebSocketEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MessageFromWebSocketEntityCopyWith<_MessageFromWebSocketEntity> get copyWith => __$MessageFromWebSocketEntityCopyWithImpl<_MessageFromWebSocketEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MessageFromWebSocketEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MessageFromWebSocketEntity&&(identical(other.conversation_id, conversation_id) || other.conversation_id == conversation_id)&&(identical(other.booking_number, booking_number) || other.booking_number == booking_number)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,conversation_id,booking_number,message);

@override
String toString() {
  return 'MessageFromWebSocketEntity(conversation_id: $conversation_id, booking_number: $booking_number, message: $message)';
}


}

/// @nodoc
abstract mixin class _$MessageFromWebSocketEntityCopyWith<$Res> implements $MessageFromWebSocketEntityCopyWith<$Res> {
  factory _$MessageFromWebSocketEntityCopyWith(_MessageFromWebSocketEntity value, $Res Function(_MessageFromWebSocketEntity) _then) = __$MessageFromWebSocketEntityCopyWithImpl;
@override @useResult
$Res call({
 int? conversation_id, String booking_number, MessageEntity? message
});


@override $MessageEntityCopyWith<$Res>? get message;

}
/// @nodoc
class __$MessageFromWebSocketEntityCopyWithImpl<$Res>
    implements _$MessageFromWebSocketEntityCopyWith<$Res> {
  __$MessageFromWebSocketEntityCopyWithImpl(this._self, this._then);

  final _MessageFromWebSocketEntity _self;
  final $Res Function(_MessageFromWebSocketEntity) _then;

/// Create a copy of MessageFromWebSocketEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? conversation_id = freezed,Object? booking_number = null,Object? message = freezed,}) {
  return _then(_MessageFromWebSocketEntity(
conversation_id: freezed == conversation_id ? _self.conversation_id : conversation_id // ignore: cast_nullable_to_non_nullable
as int?,booking_number: null == booking_number ? _self.booking_number : booking_number // ignore: cast_nullable_to_non_nullable
as String,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as MessageEntity?,
  ));
}

/// Create a copy of MessageFromWebSocketEntity
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
