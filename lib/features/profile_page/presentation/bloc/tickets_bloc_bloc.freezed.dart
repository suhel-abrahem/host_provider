// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tickets_bloc_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TicketsBlocEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TicketsBlocEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TicketsBlocEvent()';
}


}

/// @nodoc
class $TicketsBlocEventCopyWith<$Res>  {
$TicketsBlocEventCopyWith(TicketsBlocEvent _, $Res Function(TicketsBlocEvent) __);
}


/// Adds pattern-matching-related methods to [TicketsBlocEvent].
extension TicketsBlocEventPatterns on TicketsBlocEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( TicketsBlocEventStarted value)?  started,TResult Function( TicketsBlocEventGetTickets value)?  getTickets,TResult Function( TicketsBlocEventCreateTicket value)?  createTicket,TResult Function( TicketsBlocEventGetTicketDetails value)?  getTicketDetails,TResult Function( TicketsBlocEventSendTicketMessage value)?  sendTicketMessage,required TResult orElse(),}){
final _that = this;
switch (_that) {
case TicketsBlocEventStarted() when started != null:
return started(_that);case TicketsBlocEventGetTickets() when getTickets != null:
return getTickets(_that);case TicketsBlocEventCreateTicket() when createTicket != null:
return createTicket(_that);case TicketsBlocEventGetTicketDetails() when getTicketDetails != null:
return getTicketDetails(_that);case TicketsBlocEventSendTicketMessage() when sendTicketMessage != null:
return sendTicketMessage(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( TicketsBlocEventStarted value)  started,required TResult Function( TicketsBlocEventGetTickets value)  getTickets,required TResult Function( TicketsBlocEventCreateTicket value)  createTicket,required TResult Function( TicketsBlocEventGetTicketDetails value)  getTicketDetails,required TResult Function( TicketsBlocEventSendTicketMessage value)  sendTicketMessage,}){
final _that = this;
switch (_that) {
case TicketsBlocEventStarted():
return started(_that);case TicketsBlocEventGetTickets():
return getTickets(_that);case TicketsBlocEventCreateTicket():
return createTicket(_that);case TicketsBlocEventGetTicketDetails():
return getTicketDetails(_that);case TicketsBlocEventSendTicketMessage():
return sendTicketMessage(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( TicketsBlocEventStarted value)?  started,TResult? Function( TicketsBlocEventGetTickets value)?  getTickets,TResult? Function( TicketsBlocEventCreateTicket value)?  createTicket,TResult? Function( TicketsBlocEventGetTicketDetails value)?  getTicketDetails,TResult? Function( TicketsBlocEventSendTicketMessage value)?  sendTicketMessage,}){
final _that = this;
switch (_that) {
case TicketsBlocEventStarted() when started != null:
return started(_that);case TicketsBlocEventGetTickets() when getTickets != null:
return getTickets(_that);case TicketsBlocEventCreateTicket() when createTicket != null:
return createTicket(_that);case TicketsBlocEventGetTicketDetails() when getTicketDetails != null:
return getTicketDetails(_that);case TicketsBlocEventSendTicketMessage() when sendTicketMessage != null:
return sendTicketMessage(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( GetTicketsModel? model)?  getTickets,TResult Function( CreateTicketModel? model)?  createTicket,TResult Function( GetTicketsModel? model)?  getTicketDetails,TResult Function( SendTicketMessageModel? model)?  sendTicketMessage,required TResult orElse(),}) {final _that = this;
switch (_that) {
case TicketsBlocEventStarted() when started != null:
return started();case TicketsBlocEventGetTickets() when getTickets != null:
return getTickets(_that.model);case TicketsBlocEventCreateTicket() when createTicket != null:
return createTicket(_that.model);case TicketsBlocEventGetTicketDetails() when getTicketDetails != null:
return getTicketDetails(_that.model);case TicketsBlocEventSendTicketMessage() when sendTicketMessage != null:
return sendTicketMessage(_that.model);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( GetTicketsModel? model)  getTickets,required TResult Function( CreateTicketModel? model)  createTicket,required TResult Function( GetTicketsModel? model)  getTicketDetails,required TResult Function( SendTicketMessageModel? model)  sendTicketMessage,}) {final _that = this;
switch (_that) {
case TicketsBlocEventStarted():
return started();case TicketsBlocEventGetTickets():
return getTickets(_that.model);case TicketsBlocEventCreateTicket():
return createTicket(_that.model);case TicketsBlocEventGetTicketDetails():
return getTicketDetails(_that.model);case TicketsBlocEventSendTicketMessage():
return sendTicketMessage(_that.model);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( GetTicketsModel? model)?  getTickets,TResult? Function( CreateTicketModel? model)?  createTicket,TResult? Function( GetTicketsModel? model)?  getTicketDetails,TResult? Function( SendTicketMessageModel? model)?  sendTicketMessage,}) {final _that = this;
switch (_that) {
case TicketsBlocEventStarted() when started != null:
return started();case TicketsBlocEventGetTickets() when getTickets != null:
return getTickets(_that.model);case TicketsBlocEventCreateTicket() when createTicket != null:
return createTicket(_that.model);case TicketsBlocEventGetTicketDetails() when getTicketDetails != null:
return getTicketDetails(_that.model);case TicketsBlocEventSendTicketMessage() when sendTicketMessage != null:
return sendTicketMessage(_that.model);case _:
  return null;

}
}

}

/// @nodoc


class TicketsBlocEventStarted implements TicketsBlocEvent {
  const TicketsBlocEventStarted();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TicketsBlocEventStarted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TicketsBlocEvent.started()';
}


}




/// @nodoc


class TicketsBlocEventGetTickets implements TicketsBlocEvent {
  const TicketsBlocEventGetTickets({required this.model});
  

 final  GetTicketsModel? model;

/// Create a copy of TicketsBlocEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TicketsBlocEventGetTicketsCopyWith<TicketsBlocEventGetTickets> get copyWith => _$TicketsBlocEventGetTicketsCopyWithImpl<TicketsBlocEventGetTickets>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TicketsBlocEventGetTickets&&(identical(other.model, model) || other.model == model));
}


@override
int get hashCode => Object.hash(runtimeType,model);

@override
String toString() {
  return 'TicketsBlocEvent.getTickets(model: $model)';
}


}

/// @nodoc
abstract mixin class $TicketsBlocEventGetTicketsCopyWith<$Res> implements $TicketsBlocEventCopyWith<$Res> {
  factory $TicketsBlocEventGetTicketsCopyWith(TicketsBlocEventGetTickets value, $Res Function(TicketsBlocEventGetTickets) _then) = _$TicketsBlocEventGetTicketsCopyWithImpl;
@useResult
$Res call({
 GetTicketsModel? model
});


$GetTicketsModelCopyWith<$Res>? get model;

}
/// @nodoc
class _$TicketsBlocEventGetTicketsCopyWithImpl<$Res>
    implements $TicketsBlocEventGetTicketsCopyWith<$Res> {
  _$TicketsBlocEventGetTicketsCopyWithImpl(this._self, this._then);

  final TicketsBlocEventGetTickets _self;
  final $Res Function(TicketsBlocEventGetTickets) _then;

/// Create a copy of TicketsBlocEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? model = freezed,}) {
  return _then(TicketsBlocEventGetTickets(
model: freezed == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as GetTicketsModel?,
  ));
}

/// Create a copy of TicketsBlocEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GetTicketsModelCopyWith<$Res>? get model {
    if (_self.model == null) {
    return null;
  }

  return $GetTicketsModelCopyWith<$Res>(_self.model!, (value) {
    return _then(_self.copyWith(model: value));
  });
}
}

/// @nodoc


class TicketsBlocEventCreateTicket implements TicketsBlocEvent {
  const TicketsBlocEventCreateTicket({required this.model});
  

 final  CreateTicketModel? model;

/// Create a copy of TicketsBlocEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TicketsBlocEventCreateTicketCopyWith<TicketsBlocEventCreateTicket> get copyWith => _$TicketsBlocEventCreateTicketCopyWithImpl<TicketsBlocEventCreateTicket>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TicketsBlocEventCreateTicket&&(identical(other.model, model) || other.model == model));
}


@override
int get hashCode => Object.hash(runtimeType,model);

@override
String toString() {
  return 'TicketsBlocEvent.createTicket(model: $model)';
}


}

/// @nodoc
abstract mixin class $TicketsBlocEventCreateTicketCopyWith<$Res> implements $TicketsBlocEventCopyWith<$Res> {
  factory $TicketsBlocEventCreateTicketCopyWith(TicketsBlocEventCreateTicket value, $Res Function(TicketsBlocEventCreateTicket) _then) = _$TicketsBlocEventCreateTicketCopyWithImpl;
@useResult
$Res call({
 CreateTicketModel? model
});


$CreateTicketModelCopyWith<$Res>? get model;

}
/// @nodoc
class _$TicketsBlocEventCreateTicketCopyWithImpl<$Res>
    implements $TicketsBlocEventCreateTicketCopyWith<$Res> {
  _$TicketsBlocEventCreateTicketCopyWithImpl(this._self, this._then);

  final TicketsBlocEventCreateTicket _self;
  final $Res Function(TicketsBlocEventCreateTicket) _then;

/// Create a copy of TicketsBlocEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? model = freezed,}) {
  return _then(TicketsBlocEventCreateTicket(
model: freezed == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as CreateTicketModel?,
  ));
}

/// Create a copy of TicketsBlocEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreateTicketModelCopyWith<$Res>? get model {
    if (_self.model == null) {
    return null;
  }

  return $CreateTicketModelCopyWith<$Res>(_self.model!, (value) {
    return _then(_self.copyWith(model: value));
  });
}
}

/// @nodoc


class TicketsBlocEventGetTicketDetails implements TicketsBlocEvent {
  const TicketsBlocEventGetTicketDetails({required this.model});
  

 final  GetTicketsModel? model;

/// Create a copy of TicketsBlocEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TicketsBlocEventGetTicketDetailsCopyWith<TicketsBlocEventGetTicketDetails> get copyWith => _$TicketsBlocEventGetTicketDetailsCopyWithImpl<TicketsBlocEventGetTicketDetails>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TicketsBlocEventGetTicketDetails&&(identical(other.model, model) || other.model == model));
}


@override
int get hashCode => Object.hash(runtimeType,model);

@override
String toString() {
  return 'TicketsBlocEvent.getTicketDetails(model: $model)';
}


}

/// @nodoc
abstract mixin class $TicketsBlocEventGetTicketDetailsCopyWith<$Res> implements $TicketsBlocEventCopyWith<$Res> {
  factory $TicketsBlocEventGetTicketDetailsCopyWith(TicketsBlocEventGetTicketDetails value, $Res Function(TicketsBlocEventGetTicketDetails) _then) = _$TicketsBlocEventGetTicketDetailsCopyWithImpl;
@useResult
$Res call({
 GetTicketsModel? model
});


$GetTicketsModelCopyWith<$Res>? get model;

}
/// @nodoc
class _$TicketsBlocEventGetTicketDetailsCopyWithImpl<$Res>
    implements $TicketsBlocEventGetTicketDetailsCopyWith<$Res> {
  _$TicketsBlocEventGetTicketDetailsCopyWithImpl(this._self, this._then);

  final TicketsBlocEventGetTicketDetails _self;
  final $Res Function(TicketsBlocEventGetTicketDetails) _then;

/// Create a copy of TicketsBlocEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? model = freezed,}) {
  return _then(TicketsBlocEventGetTicketDetails(
model: freezed == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as GetTicketsModel?,
  ));
}

/// Create a copy of TicketsBlocEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GetTicketsModelCopyWith<$Res>? get model {
    if (_self.model == null) {
    return null;
  }

  return $GetTicketsModelCopyWith<$Res>(_self.model!, (value) {
    return _then(_self.copyWith(model: value));
  });
}
}

/// @nodoc


class TicketsBlocEventSendTicketMessage implements TicketsBlocEvent {
  const TicketsBlocEventSendTicketMessage({required this.model});
  

 final  SendTicketMessageModel? model;

/// Create a copy of TicketsBlocEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TicketsBlocEventSendTicketMessageCopyWith<TicketsBlocEventSendTicketMessage> get copyWith => _$TicketsBlocEventSendTicketMessageCopyWithImpl<TicketsBlocEventSendTicketMessage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TicketsBlocEventSendTicketMessage&&(identical(other.model, model) || other.model == model));
}


@override
int get hashCode => Object.hash(runtimeType,model);

@override
String toString() {
  return 'TicketsBlocEvent.sendTicketMessage(model: $model)';
}


}

/// @nodoc
abstract mixin class $TicketsBlocEventSendTicketMessageCopyWith<$Res> implements $TicketsBlocEventCopyWith<$Res> {
  factory $TicketsBlocEventSendTicketMessageCopyWith(TicketsBlocEventSendTicketMessage value, $Res Function(TicketsBlocEventSendTicketMessage) _then) = _$TicketsBlocEventSendTicketMessageCopyWithImpl;
@useResult
$Res call({
 SendTicketMessageModel? model
});


$SendTicketMessageModelCopyWith<$Res>? get model;

}
/// @nodoc
class _$TicketsBlocEventSendTicketMessageCopyWithImpl<$Res>
    implements $TicketsBlocEventSendTicketMessageCopyWith<$Res> {
  _$TicketsBlocEventSendTicketMessageCopyWithImpl(this._self, this._then);

  final TicketsBlocEventSendTicketMessage _self;
  final $Res Function(TicketsBlocEventSendTicketMessage) _then;

/// Create a copy of TicketsBlocEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? model = freezed,}) {
  return _then(TicketsBlocEventSendTicketMessage(
model: freezed == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as SendTicketMessageModel?,
  ));
}

/// Create a copy of TicketsBlocEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SendTicketMessageModelCopyWith<$Res>? get model {
    if (_self.model == null) {
    return null;
  }

  return $SendTicketMessageModelCopyWith<$Res>(_self.model!, (value) {
    return _then(_self.copyWith(model: value));
  });
}
}

/// @nodoc
mixin _$TicketsBlocState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TicketsBlocState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TicketsBlocState()';
}


}

/// @nodoc
class $TicketsBlocStateCopyWith<$Res>  {
$TicketsBlocStateCopyWith(TicketsBlocState _, $Res Function(TicketsBlocState) __);
}


/// Adds pattern-matching-related methods to [TicketsBlocState].
extension TicketsBlocStatePatterns on TicketsBlocState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( TicketsBlocStateInitial value)?  initial,TResult Function( TicketsBlocStateLoading value)?  loading,TResult Function( TicketsBlocStateLoadedTickets value)?  loadedTickets,TResult Function( TicketsBlocStateTicketCreated value)?  ticketCreated,TResult Function( TicketsBlocStateError value)?  error,TResult Function( TicketsBlocStateNoData value)?  noData,TResult Function( TicketsBlocStateConnectionError value)?  connectionError,TResult Function( TicketsBlocStateSessionExpired value)?  sessionExpired,TResult Function( TicketsBlocStateTicketDetailsLoaded value)?  ticketDetailsLoaded,TResult Function( TicketsBlocStateMessageSentSuccessfully value)?  messageSentSuccessfully,TResult Function( TicketsBlocStateMessageSendError value)?  messageSendError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case TicketsBlocStateInitial() when initial != null:
return initial(_that);case TicketsBlocStateLoading() when loading != null:
return loading(_that);case TicketsBlocStateLoadedTickets() when loadedTickets != null:
return loadedTickets(_that);case TicketsBlocStateTicketCreated() when ticketCreated != null:
return ticketCreated(_that);case TicketsBlocStateError() when error != null:
return error(_that);case TicketsBlocStateNoData() when noData != null:
return noData(_that);case TicketsBlocStateConnectionError() when connectionError != null:
return connectionError(_that);case TicketsBlocStateSessionExpired() when sessionExpired != null:
return sessionExpired(_that);case TicketsBlocStateTicketDetailsLoaded() when ticketDetailsLoaded != null:
return ticketDetailsLoaded(_that);case TicketsBlocStateMessageSentSuccessfully() when messageSentSuccessfully != null:
return messageSentSuccessfully(_that);case TicketsBlocStateMessageSendError() when messageSendError != null:
return messageSendError(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( TicketsBlocStateInitial value)  initial,required TResult Function( TicketsBlocStateLoading value)  loading,required TResult Function( TicketsBlocStateLoadedTickets value)  loadedTickets,required TResult Function( TicketsBlocStateTicketCreated value)  ticketCreated,required TResult Function( TicketsBlocStateError value)  error,required TResult Function( TicketsBlocStateNoData value)  noData,required TResult Function( TicketsBlocStateConnectionError value)  connectionError,required TResult Function( TicketsBlocStateSessionExpired value)  sessionExpired,required TResult Function( TicketsBlocStateTicketDetailsLoaded value)  ticketDetailsLoaded,required TResult Function( TicketsBlocStateMessageSentSuccessfully value)  messageSentSuccessfully,required TResult Function( TicketsBlocStateMessageSendError value)  messageSendError,}){
final _that = this;
switch (_that) {
case TicketsBlocStateInitial():
return initial(_that);case TicketsBlocStateLoading():
return loading(_that);case TicketsBlocStateLoadedTickets():
return loadedTickets(_that);case TicketsBlocStateTicketCreated():
return ticketCreated(_that);case TicketsBlocStateError():
return error(_that);case TicketsBlocStateNoData():
return noData(_that);case TicketsBlocStateConnectionError():
return connectionError(_that);case TicketsBlocStateSessionExpired():
return sessionExpired(_that);case TicketsBlocStateTicketDetailsLoaded():
return ticketDetailsLoaded(_that);case TicketsBlocStateMessageSentSuccessfully():
return messageSentSuccessfully(_that);case TicketsBlocStateMessageSendError():
return messageSendError(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( TicketsBlocStateInitial value)?  initial,TResult? Function( TicketsBlocStateLoading value)?  loading,TResult? Function( TicketsBlocStateLoadedTickets value)?  loadedTickets,TResult? Function( TicketsBlocStateTicketCreated value)?  ticketCreated,TResult? Function( TicketsBlocStateError value)?  error,TResult? Function( TicketsBlocStateNoData value)?  noData,TResult? Function( TicketsBlocStateConnectionError value)?  connectionError,TResult? Function( TicketsBlocStateSessionExpired value)?  sessionExpired,TResult? Function( TicketsBlocStateTicketDetailsLoaded value)?  ticketDetailsLoaded,TResult? Function( TicketsBlocStateMessageSentSuccessfully value)?  messageSentSuccessfully,TResult? Function( TicketsBlocStateMessageSendError value)?  messageSendError,}){
final _that = this;
switch (_that) {
case TicketsBlocStateInitial() when initial != null:
return initial(_that);case TicketsBlocStateLoading() when loading != null:
return loading(_that);case TicketsBlocStateLoadedTickets() when loadedTickets != null:
return loadedTickets(_that);case TicketsBlocStateTicketCreated() when ticketCreated != null:
return ticketCreated(_that);case TicketsBlocStateError() when error != null:
return error(_that);case TicketsBlocStateNoData() when noData != null:
return noData(_that);case TicketsBlocStateConnectionError() when connectionError != null:
return connectionError(_that);case TicketsBlocStateSessionExpired() when sessionExpired != null:
return sessionExpired(_that);case TicketsBlocStateTicketDetailsLoaded() when ticketDetailsLoaded != null:
return ticketDetailsLoaded(_that);case TicketsBlocStateMessageSentSuccessfully() when messageSentSuccessfully != null:
return messageSentSuccessfully(_that);case TicketsBlocStateMessageSendError() when messageSendError != null:
return messageSendError(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<TicketsEntity?>? tickets)?  loadedTickets,TResult Function( TicketsEntity? ticket)?  ticketCreated,TResult Function( String? message)?  error,TResult Function()?  noData,TResult Function()?  connectionError,TResult Function()?  sessionExpired,TResult Function( TicketEntity? ticketDetails)?  ticketDetailsLoaded,TResult Function( MessageEntity? messageEntity)?  messageSentSuccessfully,TResult Function( String? message)?  messageSendError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case TicketsBlocStateInitial() when initial != null:
return initial();case TicketsBlocStateLoading() when loading != null:
return loading();case TicketsBlocStateLoadedTickets() when loadedTickets != null:
return loadedTickets(_that.tickets);case TicketsBlocStateTicketCreated() when ticketCreated != null:
return ticketCreated(_that.ticket);case TicketsBlocStateError() when error != null:
return error(_that.message);case TicketsBlocStateNoData() when noData != null:
return noData();case TicketsBlocStateConnectionError() when connectionError != null:
return connectionError();case TicketsBlocStateSessionExpired() when sessionExpired != null:
return sessionExpired();case TicketsBlocStateTicketDetailsLoaded() when ticketDetailsLoaded != null:
return ticketDetailsLoaded(_that.ticketDetails);case TicketsBlocStateMessageSentSuccessfully() when messageSentSuccessfully != null:
return messageSentSuccessfully(_that.messageEntity);case TicketsBlocStateMessageSendError() when messageSendError != null:
return messageSendError(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<TicketsEntity?>? tickets)  loadedTickets,required TResult Function( TicketsEntity? ticket)  ticketCreated,required TResult Function( String? message)  error,required TResult Function()  noData,required TResult Function()  connectionError,required TResult Function()  sessionExpired,required TResult Function( TicketEntity? ticketDetails)  ticketDetailsLoaded,required TResult Function( MessageEntity? messageEntity)  messageSentSuccessfully,required TResult Function( String? message)  messageSendError,}) {final _that = this;
switch (_that) {
case TicketsBlocStateInitial():
return initial();case TicketsBlocStateLoading():
return loading();case TicketsBlocStateLoadedTickets():
return loadedTickets(_that.tickets);case TicketsBlocStateTicketCreated():
return ticketCreated(_that.ticket);case TicketsBlocStateError():
return error(_that.message);case TicketsBlocStateNoData():
return noData();case TicketsBlocStateConnectionError():
return connectionError();case TicketsBlocStateSessionExpired():
return sessionExpired();case TicketsBlocStateTicketDetailsLoaded():
return ticketDetailsLoaded(_that.ticketDetails);case TicketsBlocStateMessageSentSuccessfully():
return messageSentSuccessfully(_that.messageEntity);case TicketsBlocStateMessageSendError():
return messageSendError(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<TicketsEntity?>? tickets)?  loadedTickets,TResult? Function( TicketsEntity? ticket)?  ticketCreated,TResult? Function( String? message)?  error,TResult? Function()?  noData,TResult? Function()?  connectionError,TResult? Function()?  sessionExpired,TResult? Function( TicketEntity? ticketDetails)?  ticketDetailsLoaded,TResult? Function( MessageEntity? messageEntity)?  messageSentSuccessfully,TResult? Function( String? message)?  messageSendError,}) {final _that = this;
switch (_that) {
case TicketsBlocStateInitial() when initial != null:
return initial();case TicketsBlocStateLoading() when loading != null:
return loading();case TicketsBlocStateLoadedTickets() when loadedTickets != null:
return loadedTickets(_that.tickets);case TicketsBlocStateTicketCreated() when ticketCreated != null:
return ticketCreated(_that.ticket);case TicketsBlocStateError() when error != null:
return error(_that.message);case TicketsBlocStateNoData() when noData != null:
return noData();case TicketsBlocStateConnectionError() when connectionError != null:
return connectionError();case TicketsBlocStateSessionExpired() when sessionExpired != null:
return sessionExpired();case TicketsBlocStateTicketDetailsLoaded() when ticketDetailsLoaded != null:
return ticketDetailsLoaded(_that.ticketDetails);case TicketsBlocStateMessageSentSuccessfully() when messageSentSuccessfully != null:
return messageSentSuccessfully(_that.messageEntity);case TicketsBlocStateMessageSendError() when messageSendError != null:
return messageSendError(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class TicketsBlocStateInitial implements TicketsBlocState {
  const TicketsBlocStateInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TicketsBlocStateInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TicketsBlocState.initial()';
}


}




/// @nodoc


class TicketsBlocStateLoading implements TicketsBlocState {
  const TicketsBlocStateLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TicketsBlocStateLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TicketsBlocState.loading()';
}


}




/// @nodoc


class TicketsBlocStateLoadedTickets implements TicketsBlocState {
  const TicketsBlocStateLoadedTickets({required final  List<TicketsEntity?>? tickets}): _tickets = tickets;
  

 final  List<TicketsEntity?>? _tickets;
 List<TicketsEntity?>? get tickets {
  final value = _tickets;
  if (value == null) return null;
  if (_tickets is EqualUnmodifiableListView) return _tickets;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of TicketsBlocState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TicketsBlocStateLoadedTicketsCopyWith<TicketsBlocStateLoadedTickets> get copyWith => _$TicketsBlocStateLoadedTicketsCopyWithImpl<TicketsBlocStateLoadedTickets>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TicketsBlocStateLoadedTickets&&const DeepCollectionEquality().equals(other._tickets, _tickets));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_tickets));

@override
String toString() {
  return 'TicketsBlocState.loadedTickets(tickets: $tickets)';
}


}

/// @nodoc
abstract mixin class $TicketsBlocStateLoadedTicketsCopyWith<$Res> implements $TicketsBlocStateCopyWith<$Res> {
  factory $TicketsBlocStateLoadedTicketsCopyWith(TicketsBlocStateLoadedTickets value, $Res Function(TicketsBlocStateLoadedTickets) _then) = _$TicketsBlocStateLoadedTicketsCopyWithImpl;
@useResult
$Res call({
 List<TicketsEntity?>? tickets
});




}
/// @nodoc
class _$TicketsBlocStateLoadedTicketsCopyWithImpl<$Res>
    implements $TicketsBlocStateLoadedTicketsCopyWith<$Res> {
  _$TicketsBlocStateLoadedTicketsCopyWithImpl(this._self, this._then);

  final TicketsBlocStateLoadedTickets _self;
  final $Res Function(TicketsBlocStateLoadedTickets) _then;

/// Create a copy of TicketsBlocState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? tickets = freezed,}) {
  return _then(TicketsBlocStateLoadedTickets(
tickets: freezed == tickets ? _self._tickets : tickets // ignore: cast_nullable_to_non_nullable
as List<TicketsEntity?>?,
  ));
}


}

/// @nodoc


class TicketsBlocStateTicketCreated implements TicketsBlocState {
  const TicketsBlocStateTicketCreated({required this.ticket});
  

 final  TicketsEntity? ticket;

/// Create a copy of TicketsBlocState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TicketsBlocStateTicketCreatedCopyWith<TicketsBlocStateTicketCreated> get copyWith => _$TicketsBlocStateTicketCreatedCopyWithImpl<TicketsBlocStateTicketCreated>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TicketsBlocStateTicketCreated&&(identical(other.ticket, ticket) || other.ticket == ticket));
}


@override
int get hashCode => Object.hash(runtimeType,ticket);

@override
String toString() {
  return 'TicketsBlocState.ticketCreated(ticket: $ticket)';
}


}

/// @nodoc
abstract mixin class $TicketsBlocStateTicketCreatedCopyWith<$Res> implements $TicketsBlocStateCopyWith<$Res> {
  factory $TicketsBlocStateTicketCreatedCopyWith(TicketsBlocStateTicketCreated value, $Res Function(TicketsBlocStateTicketCreated) _then) = _$TicketsBlocStateTicketCreatedCopyWithImpl;
@useResult
$Res call({
 TicketsEntity? ticket
});


$TicketsEntityCopyWith<$Res>? get ticket;

}
/// @nodoc
class _$TicketsBlocStateTicketCreatedCopyWithImpl<$Res>
    implements $TicketsBlocStateTicketCreatedCopyWith<$Res> {
  _$TicketsBlocStateTicketCreatedCopyWithImpl(this._self, this._then);

  final TicketsBlocStateTicketCreated _self;
  final $Res Function(TicketsBlocStateTicketCreated) _then;

/// Create a copy of TicketsBlocState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? ticket = freezed,}) {
  return _then(TicketsBlocStateTicketCreated(
ticket: freezed == ticket ? _self.ticket : ticket // ignore: cast_nullable_to_non_nullable
as TicketsEntity?,
  ));
}

/// Create a copy of TicketsBlocState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TicketsEntityCopyWith<$Res>? get ticket {
    if (_self.ticket == null) {
    return null;
  }

  return $TicketsEntityCopyWith<$Res>(_self.ticket!, (value) {
    return _then(_self.copyWith(ticket: value));
  });
}
}

/// @nodoc


class TicketsBlocStateError implements TicketsBlocState {
  const TicketsBlocStateError({required this.message});
  

 final  String? message;

/// Create a copy of TicketsBlocState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TicketsBlocStateErrorCopyWith<TicketsBlocStateError> get copyWith => _$TicketsBlocStateErrorCopyWithImpl<TicketsBlocStateError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TicketsBlocStateError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'TicketsBlocState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $TicketsBlocStateErrorCopyWith<$Res> implements $TicketsBlocStateCopyWith<$Res> {
  factory $TicketsBlocStateErrorCopyWith(TicketsBlocStateError value, $Res Function(TicketsBlocStateError) _then) = _$TicketsBlocStateErrorCopyWithImpl;
@useResult
$Res call({
 String? message
});




}
/// @nodoc
class _$TicketsBlocStateErrorCopyWithImpl<$Res>
    implements $TicketsBlocStateErrorCopyWith<$Res> {
  _$TicketsBlocStateErrorCopyWithImpl(this._self, this._then);

  final TicketsBlocStateError _self;
  final $Res Function(TicketsBlocStateError) _then;

/// Create a copy of TicketsBlocState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(TicketsBlocStateError(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class TicketsBlocStateNoData implements TicketsBlocState {
  const TicketsBlocStateNoData();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TicketsBlocStateNoData);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TicketsBlocState.noData()';
}


}




/// @nodoc


class TicketsBlocStateConnectionError implements TicketsBlocState {
  const TicketsBlocStateConnectionError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TicketsBlocStateConnectionError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TicketsBlocState.connectionError()';
}


}




/// @nodoc


class TicketsBlocStateSessionExpired implements TicketsBlocState {
  const TicketsBlocStateSessionExpired();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TicketsBlocStateSessionExpired);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TicketsBlocState.sessionExpired()';
}


}




/// @nodoc


class TicketsBlocStateTicketDetailsLoaded implements TicketsBlocState {
  const TicketsBlocStateTicketDetailsLoaded({required this.ticketDetails});
  

 final  TicketEntity? ticketDetails;

/// Create a copy of TicketsBlocState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TicketsBlocStateTicketDetailsLoadedCopyWith<TicketsBlocStateTicketDetailsLoaded> get copyWith => _$TicketsBlocStateTicketDetailsLoadedCopyWithImpl<TicketsBlocStateTicketDetailsLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TicketsBlocStateTicketDetailsLoaded&&(identical(other.ticketDetails, ticketDetails) || other.ticketDetails == ticketDetails));
}


@override
int get hashCode => Object.hash(runtimeType,ticketDetails);

@override
String toString() {
  return 'TicketsBlocState.ticketDetailsLoaded(ticketDetails: $ticketDetails)';
}


}

/// @nodoc
abstract mixin class $TicketsBlocStateTicketDetailsLoadedCopyWith<$Res> implements $TicketsBlocStateCopyWith<$Res> {
  factory $TicketsBlocStateTicketDetailsLoadedCopyWith(TicketsBlocStateTicketDetailsLoaded value, $Res Function(TicketsBlocStateTicketDetailsLoaded) _then) = _$TicketsBlocStateTicketDetailsLoadedCopyWithImpl;
@useResult
$Res call({
 TicketEntity? ticketDetails
});


$TicketEntityCopyWith<$Res>? get ticketDetails;

}
/// @nodoc
class _$TicketsBlocStateTicketDetailsLoadedCopyWithImpl<$Res>
    implements $TicketsBlocStateTicketDetailsLoadedCopyWith<$Res> {
  _$TicketsBlocStateTicketDetailsLoadedCopyWithImpl(this._self, this._then);

  final TicketsBlocStateTicketDetailsLoaded _self;
  final $Res Function(TicketsBlocStateTicketDetailsLoaded) _then;

/// Create a copy of TicketsBlocState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? ticketDetails = freezed,}) {
  return _then(TicketsBlocStateTicketDetailsLoaded(
ticketDetails: freezed == ticketDetails ? _self.ticketDetails : ticketDetails // ignore: cast_nullable_to_non_nullable
as TicketEntity?,
  ));
}

/// Create a copy of TicketsBlocState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TicketEntityCopyWith<$Res>? get ticketDetails {
    if (_self.ticketDetails == null) {
    return null;
  }

  return $TicketEntityCopyWith<$Res>(_self.ticketDetails!, (value) {
    return _then(_self.copyWith(ticketDetails: value));
  });
}
}

/// @nodoc


class TicketsBlocStateMessageSentSuccessfully implements TicketsBlocState {
  const TicketsBlocStateMessageSentSuccessfully({this.messageEntity});
  

 final  MessageEntity? messageEntity;

/// Create a copy of TicketsBlocState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TicketsBlocStateMessageSentSuccessfullyCopyWith<TicketsBlocStateMessageSentSuccessfully> get copyWith => _$TicketsBlocStateMessageSentSuccessfullyCopyWithImpl<TicketsBlocStateMessageSentSuccessfully>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TicketsBlocStateMessageSentSuccessfully&&(identical(other.messageEntity, messageEntity) || other.messageEntity == messageEntity));
}


@override
int get hashCode => Object.hash(runtimeType,messageEntity);

@override
String toString() {
  return 'TicketsBlocState.messageSentSuccessfully(messageEntity: $messageEntity)';
}


}

/// @nodoc
abstract mixin class $TicketsBlocStateMessageSentSuccessfullyCopyWith<$Res> implements $TicketsBlocStateCopyWith<$Res> {
  factory $TicketsBlocStateMessageSentSuccessfullyCopyWith(TicketsBlocStateMessageSentSuccessfully value, $Res Function(TicketsBlocStateMessageSentSuccessfully) _then) = _$TicketsBlocStateMessageSentSuccessfullyCopyWithImpl;
@useResult
$Res call({
 MessageEntity? messageEntity
});


$MessageEntityCopyWith<$Res>? get messageEntity;

}
/// @nodoc
class _$TicketsBlocStateMessageSentSuccessfullyCopyWithImpl<$Res>
    implements $TicketsBlocStateMessageSentSuccessfullyCopyWith<$Res> {
  _$TicketsBlocStateMessageSentSuccessfullyCopyWithImpl(this._self, this._then);

  final TicketsBlocStateMessageSentSuccessfully _self;
  final $Res Function(TicketsBlocStateMessageSentSuccessfully) _then;

/// Create a copy of TicketsBlocState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? messageEntity = freezed,}) {
  return _then(TicketsBlocStateMessageSentSuccessfully(
messageEntity: freezed == messageEntity ? _self.messageEntity : messageEntity // ignore: cast_nullable_to_non_nullable
as MessageEntity?,
  ));
}

/// Create a copy of TicketsBlocState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MessageEntityCopyWith<$Res>? get messageEntity {
    if (_self.messageEntity == null) {
    return null;
  }

  return $MessageEntityCopyWith<$Res>(_self.messageEntity!, (value) {
    return _then(_self.copyWith(messageEntity: value));
  });
}
}

/// @nodoc


class TicketsBlocStateMessageSendError implements TicketsBlocState {
  const TicketsBlocStateMessageSendError({required this.message});
  

 final  String? message;

/// Create a copy of TicketsBlocState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TicketsBlocStateMessageSendErrorCopyWith<TicketsBlocStateMessageSendError> get copyWith => _$TicketsBlocStateMessageSendErrorCopyWithImpl<TicketsBlocStateMessageSendError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TicketsBlocStateMessageSendError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'TicketsBlocState.messageSendError(message: $message)';
}


}

/// @nodoc
abstract mixin class $TicketsBlocStateMessageSendErrorCopyWith<$Res> implements $TicketsBlocStateCopyWith<$Res> {
  factory $TicketsBlocStateMessageSendErrorCopyWith(TicketsBlocStateMessageSendError value, $Res Function(TicketsBlocStateMessageSendError) _then) = _$TicketsBlocStateMessageSendErrorCopyWithImpl;
@useResult
$Res call({
 String? message
});




}
/// @nodoc
class _$TicketsBlocStateMessageSendErrorCopyWithImpl<$Res>
    implements $TicketsBlocStateMessageSendErrorCopyWith<$Res> {
  _$TicketsBlocStateMessageSendErrorCopyWithImpl(this._self, this._then);

  final TicketsBlocStateMessageSendError _self;
  final $Res Function(TicketsBlocStateMessageSendError) _then;

/// Create a copy of TicketsBlocState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(TicketsBlocStateMessageSendError(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
