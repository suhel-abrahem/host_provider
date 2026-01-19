// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tickets_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TicketsEntity {

 int? get id; String? get ticket_number; String? get subject; String? get category; String? get priority; Map<String, dynamic>? get user; Map<String, dynamic>? get assigned_admin; Map<String, dynamic>? get last_message; int? get unread_count; String? get last_message_at; String? get created_at; String? get closed_at;
/// Create a copy of TicketsEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TicketsEntityCopyWith<TicketsEntity> get copyWith => _$TicketsEntityCopyWithImpl<TicketsEntity>(this as TicketsEntity, _$identity);

  /// Serializes this TicketsEntity to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TicketsEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.ticket_number, ticket_number) || other.ticket_number == ticket_number)&&(identical(other.subject, subject) || other.subject == subject)&&(identical(other.category, category) || other.category == category)&&(identical(other.priority, priority) || other.priority == priority)&&const DeepCollectionEquality().equals(other.user, user)&&const DeepCollectionEquality().equals(other.assigned_admin, assigned_admin)&&const DeepCollectionEquality().equals(other.last_message, last_message)&&(identical(other.unread_count, unread_count) || other.unread_count == unread_count)&&(identical(other.last_message_at, last_message_at) || other.last_message_at == last_message_at)&&(identical(other.created_at, created_at) || other.created_at == created_at)&&(identical(other.closed_at, closed_at) || other.closed_at == closed_at));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,ticket_number,subject,category,priority,const DeepCollectionEquality().hash(user),const DeepCollectionEquality().hash(assigned_admin),const DeepCollectionEquality().hash(last_message),unread_count,last_message_at,created_at,closed_at);

@override
String toString() {
  return 'TicketsEntity(id: $id, ticket_number: $ticket_number, subject: $subject, category: $category, priority: $priority, user: $user, assigned_admin: $assigned_admin, last_message: $last_message, unread_count: $unread_count, last_message_at: $last_message_at, created_at: $created_at, closed_at: $closed_at)';
}


}

/// @nodoc
abstract mixin class $TicketsEntityCopyWith<$Res>  {
  factory $TicketsEntityCopyWith(TicketsEntity value, $Res Function(TicketsEntity) _then) = _$TicketsEntityCopyWithImpl;
@useResult
$Res call({
 int? id, String? ticket_number, String? subject, String? category, String? priority, Map<String, dynamic>? user, Map<String, dynamic>? assigned_admin, Map<String, dynamic>? last_message, int? unread_count, String? last_message_at, String? created_at, String? closed_at
});




}
/// @nodoc
class _$TicketsEntityCopyWithImpl<$Res>
    implements $TicketsEntityCopyWith<$Res> {
  _$TicketsEntityCopyWithImpl(this._self, this._then);

  final TicketsEntity _self;
  final $Res Function(TicketsEntity) _then;

/// Create a copy of TicketsEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? ticket_number = freezed,Object? subject = freezed,Object? category = freezed,Object? priority = freezed,Object? user = freezed,Object? assigned_admin = freezed,Object? last_message = freezed,Object? unread_count = freezed,Object? last_message_at = freezed,Object? created_at = freezed,Object? closed_at = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,ticket_number: freezed == ticket_number ? _self.ticket_number : ticket_number // ignore: cast_nullable_to_non_nullable
as String?,subject: freezed == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,priority: freezed == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as String?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,assigned_admin: freezed == assigned_admin ? _self.assigned_admin : assigned_admin // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,last_message: freezed == last_message ? _self.last_message : last_message // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,unread_count: freezed == unread_count ? _self.unread_count : unread_count // ignore: cast_nullable_to_non_nullable
as int?,last_message_at: freezed == last_message_at ? _self.last_message_at : last_message_at // ignore: cast_nullable_to_non_nullable
as String?,created_at: freezed == created_at ? _self.created_at : created_at // ignore: cast_nullable_to_non_nullable
as String?,closed_at: freezed == closed_at ? _self.closed_at : closed_at // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [TicketsEntity].
extension TicketsEntityPatterns on TicketsEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TicketsEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TicketsEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TicketsEntity value)  $default,){
final _that = this;
switch (_that) {
case _TicketsEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TicketsEntity value)?  $default,){
final _that = this;
switch (_that) {
case _TicketsEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? ticket_number,  String? subject,  String? category,  String? priority,  Map<String, dynamic>? user,  Map<String, dynamic>? assigned_admin,  Map<String, dynamic>? last_message,  int? unread_count,  String? last_message_at,  String? created_at,  String? closed_at)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TicketsEntity() when $default != null:
return $default(_that.id,_that.ticket_number,_that.subject,_that.category,_that.priority,_that.user,_that.assigned_admin,_that.last_message,_that.unread_count,_that.last_message_at,_that.created_at,_that.closed_at);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? ticket_number,  String? subject,  String? category,  String? priority,  Map<String, dynamic>? user,  Map<String, dynamic>? assigned_admin,  Map<String, dynamic>? last_message,  int? unread_count,  String? last_message_at,  String? created_at,  String? closed_at)  $default,) {final _that = this;
switch (_that) {
case _TicketsEntity():
return $default(_that.id,_that.ticket_number,_that.subject,_that.category,_that.priority,_that.user,_that.assigned_admin,_that.last_message,_that.unread_count,_that.last_message_at,_that.created_at,_that.closed_at);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? ticket_number,  String? subject,  String? category,  String? priority,  Map<String, dynamic>? user,  Map<String, dynamic>? assigned_admin,  Map<String, dynamic>? last_message,  int? unread_count,  String? last_message_at,  String? created_at,  String? closed_at)?  $default,) {final _that = this;
switch (_that) {
case _TicketsEntity() when $default != null:
return $default(_that.id,_that.ticket_number,_that.subject,_that.category,_that.priority,_that.user,_that.assigned_admin,_that.last_message,_that.unread_count,_that.last_message_at,_that.created_at,_that.closed_at);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TicketsEntity implements TicketsEntity {
  const _TicketsEntity({this.id = 0, this.ticket_number = "", this.subject = "", this.category = "", this.priority = "", final  Map<String, dynamic>? user = const {}, final  Map<String, dynamic>? assigned_admin = const {}, final  Map<String, dynamic>? last_message = const {}, this.unread_count = 0, this.last_message_at = "", this.created_at = "", this.closed_at = ""}): _user = user,_assigned_admin = assigned_admin,_last_message = last_message;
  factory _TicketsEntity.fromJson(Map<String, dynamic> json) => _$TicketsEntityFromJson(json);

@override@JsonKey() final  int? id;
@override@JsonKey() final  String? ticket_number;
@override@JsonKey() final  String? subject;
@override@JsonKey() final  String? category;
@override@JsonKey() final  String? priority;
 final  Map<String, dynamic>? _user;
@override@JsonKey() Map<String, dynamic>? get user {
  final value = _user;
  if (value == null) return null;
  if (_user is EqualUnmodifiableMapView) return _user;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

 final  Map<String, dynamic>? _assigned_admin;
@override@JsonKey() Map<String, dynamic>? get assigned_admin {
  final value = _assigned_admin;
  if (value == null) return null;
  if (_assigned_admin is EqualUnmodifiableMapView) return _assigned_admin;
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

@override@JsonKey() final  int? unread_count;
@override@JsonKey() final  String? last_message_at;
@override@JsonKey() final  String? created_at;
@override@JsonKey() final  String? closed_at;

/// Create a copy of TicketsEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TicketsEntityCopyWith<_TicketsEntity> get copyWith => __$TicketsEntityCopyWithImpl<_TicketsEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TicketsEntityToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TicketsEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.ticket_number, ticket_number) || other.ticket_number == ticket_number)&&(identical(other.subject, subject) || other.subject == subject)&&(identical(other.category, category) || other.category == category)&&(identical(other.priority, priority) || other.priority == priority)&&const DeepCollectionEquality().equals(other._user, _user)&&const DeepCollectionEquality().equals(other._assigned_admin, _assigned_admin)&&const DeepCollectionEquality().equals(other._last_message, _last_message)&&(identical(other.unread_count, unread_count) || other.unread_count == unread_count)&&(identical(other.last_message_at, last_message_at) || other.last_message_at == last_message_at)&&(identical(other.created_at, created_at) || other.created_at == created_at)&&(identical(other.closed_at, closed_at) || other.closed_at == closed_at));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,ticket_number,subject,category,priority,const DeepCollectionEquality().hash(_user),const DeepCollectionEquality().hash(_assigned_admin),const DeepCollectionEquality().hash(_last_message),unread_count,last_message_at,created_at,closed_at);

@override
String toString() {
  return 'TicketsEntity(id: $id, ticket_number: $ticket_number, subject: $subject, category: $category, priority: $priority, user: $user, assigned_admin: $assigned_admin, last_message: $last_message, unread_count: $unread_count, last_message_at: $last_message_at, created_at: $created_at, closed_at: $closed_at)';
}


}

/// @nodoc
abstract mixin class _$TicketsEntityCopyWith<$Res> implements $TicketsEntityCopyWith<$Res> {
  factory _$TicketsEntityCopyWith(_TicketsEntity value, $Res Function(_TicketsEntity) _then) = __$TicketsEntityCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? ticket_number, String? subject, String? category, String? priority, Map<String, dynamic>? user, Map<String, dynamic>? assigned_admin, Map<String, dynamic>? last_message, int? unread_count, String? last_message_at, String? created_at, String? closed_at
});




}
/// @nodoc
class __$TicketsEntityCopyWithImpl<$Res>
    implements _$TicketsEntityCopyWith<$Res> {
  __$TicketsEntityCopyWithImpl(this._self, this._then);

  final _TicketsEntity _self;
  final $Res Function(_TicketsEntity) _then;

/// Create a copy of TicketsEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? ticket_number = freezed,Object? subject = freezed,Object? category = freezed,Object? priority = freezed,Object? user = freezed,Object? assigned_admin = freezed,Object? last_message = freezed,Object? unread_count = freezed,Object? last_message_at = freezed,Object? created_at = freezed,Object? closed_at = freezed,}) {
  return _then(_TicketsEntity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,ticket_number: freezed == ticket_number ? _self.ticket_number : ticket_number // ignore: cast_nullable_to_non_nullable
as String?,subject: freezed == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,priority: freezed == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as String?,user: freezed == user ? _self._user : user // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,assigned_admin: freezed == assigned_admin ? _self._assigned_admin : assigned_admin // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,last_message: freezed == last_message ? _self._last_message : last_message // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,unread_count: freezed == unread_count ? _self.unread_count : unread_count // ignore: cast_nullable_to_non_nullable
as int?,last_message_at: freezed == last_message_at ? _self.last_message_at : last_message_at // ignore: cast_nullable_to_non_nullable
as String?,created_at: freezed == created_at ? _self.created_at : created_at // ignore: cast_nullable_to_non_nullable
as String?,closed_at: freezed == closed_at ? _self.closed_at : closed_at // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
