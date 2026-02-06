// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'unread_count_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UnreadCountEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnreadCountEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UnreadCountEvent()';
}


}

/// @nodoc
class $UnreadCountEventCopyWith<$Res>  {
$UnreadCountEventCopyWith(UnreadCountEvent _, $Res Function(UnreadCountEvent) __);
}


/// Adds pattern-matching-related methods to [UnreadCountEvent].
extension UnreadCountEventPatterns on UnreadCountEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( UnreadCountEventStarted value)?  started,TResult Function( UnreadCountEventGetNotificationUnreadCount value)?  getNotificationUnreadCount,TResult Function( UnreadCountEventGetMessageUnreadCount value)?  getMessageUnreadCount,TResult Function( UnreadCountEventGetTicketUnreadCount value)?  getTicketUnreadCount,required TResult orElse(),}){
final _that = this;
switch (_that) {
case UnreadCountEventStarted() when started != null:
return started(_that);case UnreadCountEventGetNotificationUnreadCount() when getNotificationUnreadCount != null:
return getNotificationUnreadCount(_that);case UnreadCountEventGetMessageUnreadCount() when getMessageUnreadCount != null:
return getMessageUnreadCount(_that);case UnreadCountEventGetTicketUnreadCount() when getTicketUnreadCount != null:
return getTicketUnreadCount(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( UnreadCountEventStarted value)  started,required TResult Function( UnreadCountEventGetNotificationUnreadCount value)  getNotificationUnreadCount,required TResult Function( UnreadCountEventGetMessageUnreadCount value)  getMessageUnreadCount,required TResult Function( UnreadCountEventGetTicketUnreadCount value)  getTicketUnreadCount,}){
final _that = this;
switch (_that) {
case UnreadCountEventStarted():
return started(_that);case UnreadCountEventGetNotificationUnreadCount():
return getNotificationUnreadCount(_that);case UnreadCountEventGetMessageUnreadCount():
return getMessageUnreadCount(_that);case UnreadCountEventGetTicketUnreadCount():
return getTicketUnreadCount(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( UnreadCountEventStarted value)?  started,TResult? Function( UnreadCountEventGetNotificationUnreadCount value)?  getNotificationUnreadCount,TResult? Function( UnreadCountEventGetMessageUnreadCount value)?  getMessageUnreadCount,TResult? Function( UnreadCountEventGetTicketUnreadCount value)?  getTicketUnreadCount,}){
final _that = this;
switch (_that) {
case UnreadCountEventStarted() when started != null:
return started(_that);case UnreadCountEventGetNotificationUnreadCount() when getNotificationUnreadCount != null:
return getNotificationUnreadCount(_that);case UnreadCountEventGetMessageUnreadCount() when getMessageUnreadCount != null:
return getMessageUnreadCount(_that);case UnreadCountEventGetTicketUnreadCount() when getTicketUnreadCount != null:
return getTicketUnreadCount(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function()?  getNotificationUnreadCount,TResult Function()?  getMessageUnreadCount,TResult Function()?  getTicketUnreadCount,required TResult orElse(),}) {final _that = this;
switch (_that) {
case UnreadCountEventStarted() when started != null:
return started();case UnreadCountEventGetNotificationUnreadCount() when getNotificationUnreadCount != null:
return getNotificationUnreadCount();case UnreadCountEventGetMessageUnreadCount() when getMessageUnreadCount != null:
return getMessageUnreadCount();case UnreadCountEventGetTicketUnreadCount() when getTicketUnreadCount != null:
return getTicketUnreadCount();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function()  getNotificationUnreadCount,required TResult Function()  getMessageUnreadCount,required TResult Function()  getTicketUnreadCount,}) {final _that = this;
switch (_that) {
case UnreadCountEventStarted():
return started();case UnreadCountEventGetNotificationUnreadCount():
return getNotificationUnreadCount();case UnreadCountEventGetMessageUnreadCount():
return getMessageUnreadCount();case UnreadCountEventGetTicketUnreadCount():
return getTicketUnreadCount();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function()?  getNotificationUnreadCount,TResult? Function()?  getMessageUnreadCount,TResult? Function()?  getTicketUnreadCount,}) {final _that = this;
switch (_that) {
case UnreadCountEventStarted() when started != null:
return started();case UnreadCountEventGetNotificationUnreadCount() when getNotificationUnreadCount != null:
return getNotificationUnreadCount();case UnreadCountEventGetMessageUnreadCount() when getMessageUnreadCount != null:
return getMessageUnreadCount();case UnreadCountEventGetTicketUnreadCount() when getTicketUnreadCount != null:
return getTicketUnreadCount();case _:
  return null;

}
}

}

/// @nodoc


class UnreadCountEventStarted implements UnreadCountEvent {
  const UnreadCountEventStarted();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnreadCountEventStarted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UnreadCountEvent.started()';
}


}




/// @nodoc


class UnreadCountEventGetNotificationUnreadCount implements UnreadCountEvent {
  const UnreadCountEventGetNotificationUnreadCount();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnreadCountEventGetNotificationUnreadCount);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UnreadCountEvent.getNotificationUnreadCount()';
}


}




/// @nodoc


class UnreadCountEventGetMessageUnreadCount implements UnreadCountEvent {
  const UnreadCountEventGetMessageUnreadCount();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnreadCountEventGetMessageUnreadCount);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UnreadCountEvent.getMessageUnreadCount()';
}


}




/// @nodoc


class UnreadCountEventGetTicketUnreadCount implements UnreadCountEvent {
  const UnreadCountEventGetTicketUnreadCount();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnreadCountEventGetTicketUnreadCount);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UnreadCountEvent.getTicketUnreadCount()';
}


}




/// @nodoc
mixin _$UnreadCountState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnreadCountState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UnreadCountState()';
}


}

/// @nodoc
class $UnreadCountStateCopyWith<$Res>  {
$UnreadCountStateCopyWith(UnreadCountState _, $Res Function(UnreadCountState) __);
}


/// Adds pattern-matching-related methods to [UnreadCountState].
extension UnreadCountStatePatterns on UnreadCountState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( UnreadCountStateInitial value)?  initial,TResult Function( UnreadCountStateLoading value)?  loading,TResult Function( UnreadCountStateNotificationUnreadCountLoaded value)?  notificationUnreadCountLoaded,TResult Function( UnreadCountStateMessageUnreadCountLoaded value)?  messageUnreadCountLoaded,TResult Function( UnreadCountStateTicketUnreadCountLoaded value)?  ticketUnreadCountLoaded,TResult Function( UnreadCountStateError value)?  error,TResult Function( UnreadCountStateUnauthenticated value)?  unauthenticated,TResult Function( UnreadCountStateNoInternet value)?  noInternet,required TResult orElse(),}){
final _that = this;
switch (_that) {
case UnreadCountStateInitial() when initial != null:
return initial(_that);case UnreadCountStateLoading() when loading != null:
return loading(_that);case UnreadCountStateNotificationUnreadCountLoaded() when notificationUnreadCountLoaded != null:
return notificationUnreadCountLoaded(_that);case UnreadCountStateMessageUnreadCountLoaded() when messageUnreadCountLoaded != null:
return messageUnreadCountLoaded(_that);case UnreadCountStateTicketUnreadCountLoaded() when ticketUnreadCountLoaded != null:
return ticketUnreadCountLoaded(_that);case UnreadCountStateError() when error != null:
return error(_that);case UnreadCountStateUnauthenticated() when unauthenticated != null:
return unauthenticated(_that);case UnreadCountStateNoInternet() when noInternet != null:
return noInternet(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( UnreadCountStateInitial value)  initial,required TResult Function( UnreadCountStateLoading value)  loading,required TResult Function( UnreadCountStateNotificationUnreadCountLoaded value)  notificationUnreadCountLoaded,required TResult Function( UnreadCountStateMessageUnreadCountLoaded value)  messageUnreadCountLoaded,required TResult Function( UnreadCountStateTicketUnreadCountLoaded value)  ticketUnreadCountLoaded,required TResult Function( UnreadCountStateError value)  error,required TResult Function( UnreadCountStateUnauthenticated value)  unauthenticated,required TResult Function( UnreadCountStateNoInternet value)  noInternet,}){
final _that = this;
switch (_that) {
case UnreadCountStateInitial():
return initial(_that);case UnreadCountStateLoading():
return loading(_that);case UnreadCountStateNotificationUnreadCountLoaded():
return notificationUnreadCountLoaded(_that);case UnreadCountStateMessageUnreadCountLoaded():
return messageUnreadCountLoaded(_that);case UnreadCountStateTicketUnreadCountLoaded():
return ticketUnreadCountLoaded(_that);case UnreadCountStateError():
return error(_that);case UnreadCountStateUnauthenticated():
return unauthenticated(_that);case UnreadCountStateNoInternet():
return noInternet(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( UnreadCountStateInitial value)?  initial,TResult? Function( UnreadCountStateLoading value)?  loading,TResult? Function( UnreadCountStateNotificationUnreadCountLoaded value)?  notificationUnreadCountLoaded,TResult? Function( UnreadCountStateMessageUnreadCountLoaded value)?  messageUnreadCountLoaded,TResult? Function( UnreadCountStateTicketUnreadCountLoaded value)?  ticketUnreadCountLoaded,TResult? Function( UnreadCountStateError value)?  error,TResult? Function( UnreadCountStateUnauthenticated value)?  unauthenticated,TResult? Function( UnreadCountStateNoInternet value)?  noInternet,}){
final _that = this;
switch (_that) {
case UnreadCountStateInitial() when initial != null:
return initial(_that);case UnreadCountStateLoading() when loading != null:
return loading(_that);case UnreadCountStateNotificationUnreadCountLoaded() when notificationUnreadCountLoaded != null:
return notificationUnreadCountLoaded(_that);case UnreadCountStateMessageUnreadCountLoaded() when messageUnreadCountLoaded != null:
return messageUnreadCountLoaded(_that);case UnreadCountStateTicketUnreadCountLoaded() when ticketUnreadCountLoaded != null:
return ticketUnreadCountLoaded(_that);case UnreadCountStateError() when error != null:
return error(_that);case UnreadCountStateUnauthenticated() when unauthenticated != null:
return unauthenticated(_that);case UnreadCountStateNoInternet() when noInternet != null:
return noInternet(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( int? count)?  notificationUnreadCountLoaded,TResult Function( int? count)?  messageUnreadCountLoaded,TResult Function( int? count)?  ticketUnreadCountLoaded,TResult Function( String error)?  error,TResult Function( String error)?  unauthenticated,TResult Function()?  noInternet,required TResult orElse(),}) {final _that = this;
switch (_that) {
case UnreadCountStateInitial() when initial != null:
return initial();case UnreadCountStateLoading() when loading != null:
return loading();case UnreadCountStateNotificationUnreadCountLoaded() when notificationUnreadCountLoaded != null:
return notificationUnreadCountLoaded(_that.count);case UnreadCountStateMessageUnreadCountLoaded() when messageUnreadCountLoaded != null:
return messageUnreadCountLoaded(_that.count);case UnreadCountStateTicketUnreadCountLoaded() when ticketUnreadCountLoaded != null:
return ticketUnreadCountLoaded(_that.count);case UnreadCountStateError() when error != null:
return error(_that.error);case UnreadCountStateUnauthenticated() when unauthenticated != null:
return unauthenticated(_that.error);case UnreadCountStateNoInternet() when noInternet != null:
return noInternet();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( int? count)  notificationUnreadCountLoaded,required TResult Function( int? count)  messageUnreadCountLoaded,required TResult Function( int? count)  ticketUnreadCountLoaded,required TResult Function( String error)  error,required TResult Function( String error)  unauthenticated,required TResult Function()  noInternet,}) {final _that = this;
switch (_that) {
case UnreadCountStateInitial():
return initial();case UnreadCountStateLoading():
return loading();case UnreadCountStateNotificationUnreadCountLoaded():
return notificationUnreadCountLoaded(_that.count);case UnreadCountStateMessageUnreadCountLoaded():
return messageUnreadCountLoaded(_that.count);case UnreadCountStateTicketUnreadCountLoaded():
return ticketUnreadCountLoaded(_that.count);case UnreadCountStateError():
return error(_that.error);case UnreadCountStateUnauthenticated():
return unauthenticated(_that.error);case UnreadCountStateNoInternet():
return noInternet();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( int? count)?  notificationUnreadCountLoaded,TResult? Function( int? count)?  messageUnreadCountLoaded,TResult? Function( int? count)?  ticketUnreadCountLoaded,TResult? Function( String error)?  error,TResult? Function( String error)?  unauthenticated,TResult? Function()?  noInternet,}) {final _that = this;
switch (_that) {
case UnreadCountStateInitial() when initial != null:
return initial();case UnreadCountStateLoading() when loading != null:
return loading();case UnreadCountStateNotificationUnreadCountLoaded() when notificationUnreadCountLoaded != null:
return notificationUnreadCountLoaded(_that.count);case UnreadCountStateMessageUnreadCountLoaded() when messageUnreadCountLoaded != null:
return messageUnreadCountLoaded(_that.count);case UnreadCountStateTicketUnreadCountLoaded() when ticketUnreadCountLoaded != null:
return ticketUnreadCountLoaded(_that.count);case UnreadCountStateError() when error != null:
return error(_that.error);case UnreadCountStateUnauthenticated() when unauthenticated != null:
return unauthenticated(_that.error);case UnreadCountStateNoInternet() when noInternet != null:
return noInternet();case _:
  return null;

}
}

}

/// @nodoc


class UnreadCountStateInitial implements UnreadCountState {
  const UnreadCountStateInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnreadCountStateInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UnreadCountState.initial()';
}


}




/// @nodoc


class UnreadCountStateLoading implements UnreadCountState {
  const UnreadCountStateLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnreadCountStateLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UnreadCountState.loading()';
}


}




/// @nodoc


class UnreadCountStateNotificationUnreadCountLoaded implements UnreadCountState {
  const UnreadCountStateNotificationUnreadCountLoaded({required this.count});
  

 final  int? count;

/// Create a copy of UnreadCountState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnreadCountStateNotificationUnreadCountLoadedCopyWith<UnreadCountStateNotificationUnreadCountLoaded> get copyWith => _$UnreadCountStateNotificationUnreadCountLoadedCopyWithImpl<UnreadCountStateNotificationUnreadCountLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnreadCountStateNotificationUnreadCountLoaded&&(identical(other.count, count) || other.count == count));
}


@override
int get hashCode => Object.hash(runtimeType,count);

@override
String toString() {
  return 'UnreadCountState.notificationUnreadCountLoaded(count: $count)';
}


}

/// @nodoc
abstract mixin class $UnreadCountStateNotificationUnreadCountLoadedCopyWith<$Res> implements $UnreadCountStateCopyWith<$Res> {
  factory $UnreadCountStateNotificationUnreadCountLoadedCopyWith(UnreadCountStateNotificationUnreadCountLoaded value, $Res Function(UnreadCountStateNotificationUnreadCountLoaded) _then) = _$UnreadCountStateNotificationUnreadCountLoadedCopyWithImpl;
@useResult
$Res call({
 int? count
});




}
/// @nodoc
class _$UnreadCountStateNotificationUnreadCountLoadedCopyWithImpl<$Res>
    implements $UnreadCountStateNotificationUnreadCountLoadedCopyWith<$Res> {
  _$UnreadCountStateNotificationUnreadCountLoadedCopyWithImpl(this._self, this._then);

  final UnreadCountStateNotificationUnreadCountLoaded _self;
  final $Res Function(UnreadCountStateNotificationUnreadCountLoaded) _then;

/// Create a copy of UnreadCountState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? count = freezed,}) {
  return _then(UnreadCountStateNotificationUnreadCountLoaded(
count: freezed == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc


class UnreadCountStateMessageUnreadCountLoaded implements UnreadCountState {
  const UnreadCountStateMessageUnreadCountLoaded({required this.count});
  

 final  int? count;

/// Create a copy of UnreadCountState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnreadCountStateMessageUnreadCountLoadedCopyWith<UnreadCountStateMessageUnreadCountLoaded> get copyWith => _$UnreadCountStateMessageUnreadCountLoadedCopyWithImpl<UnreadCountStateMessageUnreadCountLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnreadCountStateMessageUnreadCountLoaded&&(identical(other.count, count) || other.count == count));
}


@override
int get hashCode => Object.hash(runtimeType,count);

@override
String toString() {
  return 'UnreadCountState.messageUnreadCountLoaded(count: $count)';
}


}

/// @nodoc
abstract mixin class $UnreadCountStateMessageUnreadCountLoadedCopyWith<$Res> implements $UnreadCountStateCopyWith<$Res> {
  factory $UnreadCountStateMessageUnreadCountLoadedCopyWith(UnreadCountStateMessageUnreadCountLoaded value, $Res Function(UnreadCountStateMessageUnreadCountLoaded) _then) = _$UnreadCountStateMessageUnreadCountLoadedCopyWithImpl;
@useResult
$Res call({
 int? count
});




}
/// @nodoc
class _$UnreadCountStateMessageUnreadCountLoadedCopyWithImpl<$Res>
    implements $UnreadCountStateMessageUnreadCountLoadedCopyWith<$Res> {
  _$UnreadCountStateMessageUnreadCountLoadedCopyWithImpl(this._self, this._then);

  final UnreadCountStateMessageUnreadCountLoaded _self;
  final $Res Function(UnreadCountStateMessageUnreadCountLoaded) _then;

/// Create a copy of UnreadCountState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? count = freezed,}) {
  return _then(UnreadCountStateMessageUnreadCountLoaded(
count: freezed == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc


class UnreadCountStateTicketUnreadCountLoaded implements UnreadCountState {
  const UnreadCountStateTicketUnreadCountLoaded({required this.count});
  

 final  int? count;

/// Create a copy of UnreadCountState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnreadCountStateTicketUnreadCountLoadedCopyWith<UnreadCountStateTicketUnreadCountLoaded> get copyWith => _$UnreadCountStateTicketUnreadCountLoadedCopyWithImpl<UnreadCountStateTicketUnreadCountLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnreadCountStateTicketUnreadCountLoaded&&(identical(other.count, count) || other.count == count));
}


@override
int get hashCode => Object.hash(runtimeType,count);

@override
String toString() {
  return 'UnreadCountState.ticketUnreadCountLoaded(count: $count)';
}


}

/// @nodoc
abstract mixin class $UnreadCountStateTicketUnreadCountLoadedCopyWith<$Res> implements $UnreadCountStateCopyWith<$Res> {
  factory $UnreadCountStateTicketUnreadCountLoadedCopyWith(UnreadCountStateTicketUnreadCountLoaded value, $Res Function(UnreadCountStateTicketUnreadCountLoaded) _then) = _$UnreadCountStateTicketUnreadCountLoadedCopyWithImpl;
@useResult
$Res call({
 int? count
});




}
/// @nodoc
class _$UnreadCountStateTicketUnreadCountLoadedCopyWithImpl<$Res>
    implements $UnreadCountStateTicketUnreadCountLoadedCopyWith<$Res> {
  _$UnreadCountStateTicketUnreadCountLoadedCopyWithImpl(this._self, this._then);

  final UnreadCountStateTicketUnreadCountLoaded _self;
  final $Res Function(UnreadCountStateTicketUnreadCountLoaded) _then;

/// Create a copy of UnreadCountState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? count = freezed,}) {
  return _then(UnreadCountStateTicketUnreadCountLoaded(
count: freezed == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc


class UnreadCountStateError implements UnreadCountState {
  const UnreadCountStateError({required this.error});
  

 final  String error;

/// Create a copy of UnreadCountState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnreadCountStateErrorCopyWith<UnreadCountStateError> get copyWith => _$UnreadCountStateErrorCopyWithImpl<UnreadCountStateError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnreadCountStateError&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'UnreadCountState.error(error: $error)';
}


}

/// @nodoc
abstract mixin class $UnreadCountStateErrorCopyWith<$Res> implements $UnreadCountStateCopyWith<$Res> {
  factory $UnreadCountStateErrorCopyWith(UnreadCountStateError value, $Res Function(UnreadCountStateError) _then) = _$UnreadCountStateErrorCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$UnreadCountStateErrorCopyWithImpl<$Res>
    implements $UnreadCountStateErrorCopyWith<$Res> {
  _$UnreadCountStateErrorCopyWithImpl(this._self, this._then);

  final UnreadCountStateError _self;
  final $Res Function(UnreadCountStateError) _then;

/// Create a copy of UnreadCountState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(UnreadCountStateError(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class UnreadCountStateUnauthenticated implements UnreadCountState {
  const UnreadCountStateUnauthenticated({required this.error});
  

 final  String error;

/// Create a copy of UnreadCountState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnreadCountStateUnauthenticatedCopyWith<UnreadCountStateUnauthenticated> get copyWith => _$UnreadCountStateUnauthenticatedCopyWithImpl<UnreadCountStateUnauthenticated>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnreadCountStateUnauthenticated&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'UnreadCountState.unauthenticated(error: $error)';
}


}

/// @nodoc
abstract mixin class $UnreadCountStateUnauthenticatedCopyWith<$Res> implements $UnreadCountStateCopyWith<$Res> {
  factory $UnreadCountStateUnauthenticatedCopyWith(UnreadCountStateUnauthenticated value, $Res Function(UnreadCountStateUnauthenticated) _then) = _$UnreadCountStateUnauthenticatedCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$UnreadCountStateUnauthenticatedCopyWithImpl<$Res>
    implements $UnreadCountStateUnauthenticatedCopyWith<$Res> {
  _$UnreadCountStateUnauthenticatedCopyWithImpl(this._self, this._then);

  final UnreadCountStateUnauthenticated _self;
  final $Res Function(UnreadCountStateUnauthenticated) _then;

/// Create a copy of UnreadCountState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(UnreadCountStateUnauthenticated(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class UnreadCountStateNoInternet implements UnreadCountState {
  const UnreadCountStateNoInternet();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnreadCountStateNoInternet);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UnreadCountState.noInternet()';
}


}




// dart format on
