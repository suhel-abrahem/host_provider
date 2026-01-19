// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TicketEntity {

 Map<String, dynamic>? get ticket; List<Map<String, dynamic>?> get messages; Map<String, dynamic>? get pagination;
/// Create a copy of TicketEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TicketEntityCopyWith<TicketEntity> get copyWith => _$TicketEntityCopyWithImpl<TicketEntity>(this as TicketEntity, _$identity);

  /// Serializes this TicketEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TicketEntity&&const DeepCollectionEquality().equals(other.ticket, ticket)&&const DeepCollectionEquality().equals(other.messages, messages)&&const DeepCollectionEquality().equals(other.pagination, pagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(ticket),const DeepCollectionEquality().hash(messages),const DeepCollectionEquality().hash(pagination));

@override
String toString() {
  return 'TicketEntity(ticket: $ticket, messages: $messages, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class $TicketEntityCopyWith<$Res>  {
  factory $TicketEntityCopyWith(TicketEntity value, $Res Function(TicketEntity) _then) = _$TicketEntityCopyWithImpl;
@useResult
$Res call({
 Map<String, dynamic>? ticket, List<Map<String, dynamic>?> messages, Map<String, dynamic>? pagination
});




}
/// @nodoc
class _$TicketEntityCopyWithImpl<$Res>
    implements $TicketEntityCopyWith<$Res> {
  _$TicketEntityCopyWithImpl(this._self, this._then);

  final TicketEntity _self;
  final $Res Function(TicketEntity) _then;

/// Create a copy of TicketEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ticket = freezed,Object? messages = null,Object? pagination = freezed,}) {
  return _then(_self.copyWith(
ticket: freezed == ticket ? _self.ticket : ticket // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,messages: null == messages ? _self.messages : messages // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>?>,pagination: freezed == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [TicketEntity].
extension TicketEntityPatterns on TicketEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TicketEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TicketEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TicketEntity value)  $default,){
final _that = this;
switch (_that) {
case _TicketEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TicketEntity value)?  $default,){
final _that = this;
switch (_that) {
case _TicketEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Map<String, dynamic>? ticket,  List<Map<String, dynamic>?> messages,  Map<String, dynamic>? pagination)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TicketEntity() when $default != null:
return $default(_that.ticket,_that.messages,_that.pagination);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Map<String, dynamic>? ticket,  List<Map<String, dynamic>?> messages,  Map<String, dynamic>? pagination)  $default,) {final _that = this;
switch (_that) {
case _TicketEntity():
return $default(_that.ticket,_that.messages,_that.pagination);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Map<String, dynamic>? ticket,  List<Map<String, dynamic>?> messages,  Map<String, dynamic>? pagination)?  $default,) {final _that = this;
switch (_that) {
case _TicketEntity() when $default != null:
return $default(_that.ticket,_that.messages,_that.pagination);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TicketEntity implements TicketEntity {
  const _TicketEntity({final  Map<String, dynamic>? ticket = const {}, final  List<Map<String, dynamic>?> messages = const [{}], final  Map<String, dynamic>? pagination = const {}}): _ticket = ticket,_messages = messages,_pagination = pagination;
  factory _TicketEntity.fromJson(Map<String, dynamic> json) => _$TicketEntityFromJson(json);

 final  Map<String, dynamic>? _ticket;
@override@JsonKey() Map<String, dynamic>? get ticket {
  final value = _ticket;
  if (value == null) return null;
  if (_ticket is EqualUnmodifiableMapView) return _ticket;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

 final  List<Map<String, dynamic>?> _messages;
@override@JsonKey() List<Map<String, dynamic>?> get messages {
  if (_messages is EqualUnmodifiableListView) return _messages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_messages);
}

 final  Map<String, dynamic>? _pagination;
@override@JsonKey() Map<String, dynamic>? get pagination {
  final value = _pagination;
  if (value == null) return null;
  if (_pagination is EqualUnmodifiableMapView) return _pagination;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of TicketEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TicketEntityCopyWith<_TicketEntity> get copyWith => __$TicketEntityCopyWithImpl<_TicketEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TicketEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TicketEntity&&const DeepCollectionEquality().equals(other._ticket, _ticket)&&const DeepCollectionEquality().equals(other._messages, _messages)&&const DeepCollectionEquality().equals(other._pagination, _pagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_ticket),const DeepCollectionEquality().hash(_messages),const DeepCollectionEquality().hash(_pagination));

@override
String toString() {
  return 'TicketEntity(ticket: $ticket, messages: $messages, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class _$TicketEntityCopyWith<$Res> implements $TicketEntityCopyWith<$Res> {
  factory _$TicketEntityCopyWith(_TicketEntity value, $Res Function(_TicketEntity) _then) = __$TicketEntityCopyWithImpl;
@override @useResult
$Res call({
 Map<String, dynamic>? ticket, List<Map<String, dynamic>?> messages, Map<String, dynamic>? pagination
});




}
/// @nodoc
class __$TicketEntityCopyWithImpl<$Res>
    implements _$TicketEntityCopyWith<$Res> {
  __$TicketEntityCopyWithImpl(this._self, this._then);

  final _TicketEntity _self;
  final $Res Function(_TicketEntity) _then;

/// Create a copy of TicketEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ticket = freezed,Object? messages = null,Object? pagination = freezed,}) {
  return _then(_TicketEntity(
ticket: freezed == ticket ? _self._ticket : ticket // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,messages: null == messages ? _self._messages : messages // ignore: cast_nullable_to_non_nullable
as List<Map<String, dynamic>?>,pagination: freezed == pagination ? _self._pagination : pagination // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}

// dart format on
