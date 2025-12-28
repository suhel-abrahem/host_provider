// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'send_chat_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SendChatEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SendChatEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SendChatEvent()';
}


}

/// @nodoc
class $SendChatEventCopyWith<$Res>  {
$SendChatEventCopyWith(SendChatEvent _, $Res Function(SendChatEvent) __);
}


/// Adds pattern-matching-related methods to [SendChatEvent].
extension SendChatEventPatterns on SendChatEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SendChatEventStarted value)?  started,TResult Function( SendChatEventSendChat value)?  sendChat,TResult Function( SendChatEventTypingStatus value)?  typingStatus,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SendChatEventStarted() when started != null:
return started(_that);case SendChatEventSendChat() when sendChat != null:
return sendChat(_that);case SendChatEventTypingStatus() when typingStatus != null:
return typingStatus(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SendChatEventStarted value)  started,required TResult Function( SendChatEventSendChat value)  sendChat,required TResult Function( SendChatEventTypingStatus value)  typingStatus,}){
final _that = this;
switch (_that) {
case SendChatEventStarted():
return started(_that);case SendChatEventSendChat():
return sendChat(_that);case SendChatEventTypingStatus():
return typingStatus(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SendChatEventStarted value)?  started,TResult? Function( SendChatEventSendChat value)?  sendChat,TResult? Function( SendChatEventTypingStatus value)?  typingStatus,}){
final _that = this;
switch (_that) {
case SendChatEventStarted() when started != null:
return started(_that);case SendChatEventSendChat() when sendChat != null:
return sendChat(_that);case SendChatEventTypingStatus() when typingStatus != null:
return typingStatus(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( ChatModel? chatModel)?  sendChat,TResult Function( ChatModel? chatModel)?  typingStatus,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SendChatEventStarted() when started != null:
return started();case SendChatEventSendChat() when sendChat != null:
return sendChat(_that.chatModel);case SendChatEventTypingStatus() when typingStatus != null:
return typingStatus(_that.chatModel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( ChatModel? chatModel)  sendChat,required TResult Function( ChatModel? chatModel)  typingStatus,}) {final _that = this;
switch (_that) {
case SendChatEventStarted():
return started();case SendChatEventSendChat():
return sendChat(_that.chatModel);case SendChatEventTypingStatus():
return typingStatus(_that.chatModel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( ChatModel? chatModel)?  sendChat,TResult? Function( ChatModel? chatModel)?  typingStatus,}) {final _that = this;
switch (_that) {
case SendChatEventStarted() when started != null:
return started();case SendChatEventSendChat() when sendChat != null:
return sendChat(_that.chatModel);case SendChatEventTypingStatus() when typingStatus != null:
return typingStatus(_that.chatModel);case _:
  return null;

}
}

}

/// @nodoc


class SendChatEventStarted implements SendChatEvent {
  const SendChatEventStarted();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SendChatEventStarted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SendChatEvent.started()';
}


}




/// @nodoc


class SendChatEventSendChat implements SendChatEvent {
  const SendChatEventSendChat({required this.chatModel});
  

 final  ChatModel? chatModel;

/// Create a copy of SendChatEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SendChatEventSendChatCopyWith<SendChatEventSendChat> get copyWith => _$SendChatEventSendChatCopyWithImpl<SendChatEventSendChat>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SendChatEventSendChat&&(identical(other.chatModel, chatModel) || other.chatModel == chatModel));
}


@override
int get hashCode => Object.hash(runtimeType,chatModel);

@override
String toString() {
  return 'SendChatEvent.sendChat(chatModel: $chatModel)';
}


}

/// @nodoc
abstract mixin class $SendChatEventSendChatCopyWith<$Res> implements $SendChatEventCopyWith<$Res> {
  factory $SendChatEventSendChatCopyWith(SendChatEventSendChat value, $Res Function(SendChatEventSendChat) _then) = _$SendChatEventSendChatCopyWithImpl;
@useResult
$Res call({
 ChatModel? chatModel
});


$ChatModelCopyWith<$Res>? get chatModel;

}
/// @nodoc
class _$SendChatEventSendChatCopyWithImpl<$Res>
    implements $SendChatEventSendChatCopyWith<$Res> {
  _$SendChatEventSendChatCopyWithImpl(this._self, this._then);

  final SendChatEventSendChat _self;
  final $Res Function(SendChatEventSendChat) _then;

/// Create a copy of SendChatEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? chatModel = freezed,}) {
  return _then(SendChatEventSendChat(
chatModel: freezed == chatModel ? _self.chatModel : chatModel // ignore: cast_nullable_to_non_nullable
as ChatModel?,
  ));
}

/// Create a copy of SendChatEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChatModelCopyWith<$Res>? get chatModel {
    if (_self.chatModel == null) {
    return null;
  }

  return $ChatModelCopyWith<$Res>(_self.chatModel!, (value) {
    return _then(_self.copyWith(chatModel: value));
  });
}
}

/// @nodoc


class SendChatEventTypingStatus implements SendChatEvent {
  const SendChatEventTypingStatus({required this.chatModel});
  

 final  ChatModel? chatModel;

/// Create a copy of SendChatEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SendChatEventTypingStatusCopyWith<SendChatEventTypingStatus> get copyWith => _$SendChatEventTypingStatusCopyWithImpl<SendChatEventTypingStatus>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SendChatEventTypingStatus&&(identical(other.chatModel, chatModel) || other.chatModel == chatModel));
}


@override
int get hashCode => Object.hash(runtimeType,chatModel);

@override
String toString() {
  return 'SendChatEvent.typingStatus(chatModel: $chatModel)';
}


}

/// @nodoc
abstract mixin class $SendChatEventTypingStatusCopyWith<$Res> implements $SendChatEventCopyWith<$Res> {
  factory $SendChatEventTypingStatusCopyWith(SendChatEventTypingStatus value, $Res Function(SendChatEventTypingStatus) _then) = _$SendChatEventTypingStatusCopyWithImpl;
@useResult
$Res call({
 ChatModel? chatModel
});


$ChatModelCopyWith<$Res>? get chatModel;

}
/// @nodoc
class _$SendChatEventTypingStatusCopyWithImpl<$Res>
    implements $SendChatEventTypingStatusCopyWith<$Res> {
  _$SendChatEventTypingStatusCopyWithImpl(this._self, this._then);

  final SendChatEventTypingStatus _self;
  final $Res Function(SendChatEventTypingStatus) _then;

/// Create a copy of SendChatEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? chatModel = freezed,}) {
  return _then(SendChatEventTypingStatus(
chatModel: freezed == chatModel ? _self.chatModel : chatModel // ignore: cast_nullable_to_non_nullable
as ChatModel?,
  ));
}

/// Create a copy of SendChatEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChatModelCopyWith<$Res>? get chatModel {
    if (_self.chatModel == null) {
    return null;
  }

  return $ChatModelCopyWith<$Res>(_self.chatModel!, (value) {
    return _then(_self.copyWith(chatModel: value));
  });
}
}

/// @nodoc
mixin _$SendChatState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SendChatState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SendChatState()';
}


}

/// @nodoc
class $SendChatStateCopyWith<$Res>  {
$SendChatStateCopyWith(SendChatState _, $Res Function(SendChatState) __);
}


/// Adds pattern-matching-related methods to [SendChatState].
extension SendChatStatePatterns on SendChatState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SendChatStateInitial value)?  initial,TResult Function( SendChatStateLoading value)?  loading,TResult Function( SendChatStateSent value)?  sent,TResult Function( SendChatStateError value)?  error,TResult Function( SendChatStateUnAuthenticated value)?  unAuthenticated,TResult Function( SendChatStateNoInternet value)?  noInternet,TResult Function( SendChatStateTypingStatusUpdated value)?  typingStatusUpdated,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SendChatStateInitial() when initial != null:
return initial(_that);case SendChatStateLoading() when loading != null:
return loading(_that);case SendChatStateSent() when sent != null:
return sent(_that);case SendChatStateError() when error != null:
return error(_that);case SendChatStateUnAuthenticated() when unAuthenticated != null:
return unAuthenticated(_that);case SendChatStateNoInternet() when noInternet != null:
return noInternet(_that);case SendChatStateTypingStatusUpdated() when typingStatusUpdated != null:
return typingStatusUpdated(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SendChatStateInitial value)  initial,required TResult Function( SendChatStateLoading value)  loading,required TResult Function( SendChatStateSent value)  sent,required TResult Function( SendChatStateError value)  error,required TResult Function( SendChatStateUnAuthenticated value)  unAuthenticated,required TResult Function( SendChatStateNoInternet value)  noInternet,required TResult Function( SendChatStateTypingStatusUpdated value)  typingStatusUpdated,}){
final _that = this;
switch (_that) {
case SendChatStateInitial():
return initial(_that);case SendChatStateLoading():
return loading(_that);case SendChatStateSent():
return sent(_that);case SendChatStateError():
return error(_that);case SendChatStateUnAuthenticated():
return unAuthenticated(_that);case SendChatStateNoInternet():
return noInternet(_that);case SendChatStateTypingStatusUpdated():
return typingStatusUpdated(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SendChatStateInitial value)?  initial,TResult? Function( SendChatStateLoading value)?  loading,TResult? Function( SendChatStateSent value)?  sent,TResult? Function( SendChatStateError value)?  error,TResult? Function( SendChatStateUnAuthenticated value)?  unAuthenticated,TResult? Function( SendChatStateNoInternet value)?  noInternet,TResult? Function( SendChatStateTypingStatusUpdated value)?  typingStatusUpdated,}){
final _that = this;
switch (_that) {
case SendChatStateInitial() when initial != null:
return initial(_that);case SendChatStateLoading() when loading != null:
return loading(_that);case SendChatStateSent() when sent != null:
return sent(_that);case SendChatStateError() when error != null:
return error(_that);case SendChatStateUnAuthenticated() when unAuthenticated != null:
return unAuthenticated(_that);case SendChatStateNoInternet() when noInternet != null:
return noInternet(_that);case SendChatStateTypingStatusUpdated() when typingStatusUpdated != null:
return typingStatusUpdated(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( MessageEntity? messageEntity)?  sent,TResult Function( String? message)?  error,TResult Function()?  unAuthenticated,TResult Function()?  noInternet,TResult Function( bool? isTyping)?  typingStatusUpdated,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SendChatStateInitial() when initial != null:
return initial();case SendChatStateLoading() when loading != null:
return loading();case SendChatStateSent() when sent != null:
return sent(_that.messageEntity);case SendChatStateError() when error != null:
return error(_that.message);case SendChatStateUnAuthenticated() when unAuthenticated != null:
return unAuthenticated();case SendChatStateNoInternet() when noInternet != null:
return noInternet();case SendChatStateTypingStatusUpdated() when typingStatusUpdated != null:
return typingStatusUpdated(_that.isTyping);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( MessageEntity? messageEntity)  sent,required TResult Function( String? message)  error,required TResult Function()  unAuthenticated,required TResult Function()  noInternet,required TResult Function( bool? isTyping)  typingStatusUpdated,}) {final _that = this;
switch (_that) {
case SendChatStateInitial():
return initial();case SendChatStateLoading():
return loading();case SendChatStateSent():
return sent(_that.messageEntity);case SendChatStateError():
return error(_that.message);case SendChatStateUnAuthenticated():
return unAuthenticated();case SendChatStateNoInternet():
return noInternet();case SendChatStateTypingStatusUpdated():
return typingStatusUpdated(_that.isTyping);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( MessageEntity? messageEntity)?  sent,TResult? Function( String? message)?  error,TResult? Function()?  unAuthenticated,TResult? Function()?  noInternet,TResult? Function( bool? isTyping)?  typingStatusUpdated,}) {final _that = this;
switch (_that) {
case SendChatStateInitial() when initial != null:
return initial();case SendChatStateLoading() when loading != null:
return loading();case SendChatStateSent() when sent != null:
return sent(_that.messageEntity);case SendChatStateError() when error != null:
return error(_that.message);case SendChatStateUnAuthenticated() when unAuthenticated != null:
return unAuthenticated();case SendChatStateNoInternet() when noInternet != null:
return noInternet();case SendChatStateTypingStatusUpdated() when typingStatusUpdated != null:
return typingStatusUpdated(_that.isTyping);case _:
  return null;

}
}

}

/// @nodoc


class SendChatStateInitial implements SendChatState {
  const SendChatStateInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SendChatStateInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SendChatState.initial()';
}


}




/// @nodoc


class SendChatStateLoading implements SendChatState {
  const SendChatStateLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SendChatStateLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SendChatState.loading()';
}


}




/// @nodoc


class SendChatStateSent implements SendChatState {
  const SendChatStateSent(this.messageEntity);
  

 final  MessageEntity? messageEntity;

/// Create a copy of SendChatState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SendChatStateSentCopyWith<SendChatStateSent> get copyWith => _$SendChatStateSentCopyWithImpl<SendChatStateSent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SendChatStateSent&&(identical(other.messageEntity, messageEntity) || other.messageEntity == messageEntity));
}


@override
int get hashCode => Object.hash(runtimeType,messageEntity);

@override
String toString() {
  return 'SendChatState.sent(messageEntity: $messageEntity)';
}


}

/// @nodoc
abstract mixin class $SendChatStateSentCopyWith<$Res> implements $SendChatStateCopyWith<$Res> {
  factory $SendChatStateSentCopyWith(SendChatStateSent value, $Res Function(SendChatStateSent) _then) = _$SendChatStateSentCopyWithImpl;
@useResult
$Res call({
 MessageEntity? messageEntity
});


$MessageEntityCopyWith<$Res>? get messageEntity;

}
/// @nodoc
class _$SendChatStateSentCopyWithImpl<$Res>
    implements $SendChatStateSentCopyWith<$Res> {
  _$SendChatStateSentCopyWithImpl(this._self, this._then);

  final SendChatStateSent _self;
  final $Res Function(SendChatStateSent) _then;

/// Create a copy of SendChatState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? messageEntity = freezed,}) {
  return _then(SendChatStateSent(
freezed == messageEntity ? _self.messageEntity : messageEntity // ignore: cast_nullable_to_non_nullable
as MessageEntity?,
  ));
}

/// Create a copy of SendChatState
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


class SendChatStateError implements SendChatState {
  const SendChatStateError({required this.message});
  

 final  String? message;

/// Create a copy of SendChatState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SendChatStateErrorCopyWith<SendChatStateError> get copyWith => _$SendChatStateErrorCopyWithImpl<SendChatStateError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SendChatStateError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'SendChatState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $SendChatStateErrorCopyWith<$Res> implements $SendChatStateCopyWith<$Res> {
  factory $SendChatStateErrorCopyWith(SendChatStateError value, $Res Function(SendChatStateError) _then) = _$SendChatStateErrorCopyWithImpl;
@useResult
$Res call({
 String? message
});




}
/// @nodoc
class _$SendChatStateErrorCopyWithImpl<$Res>
    implements $SendChatStateErrorCopyWith<$Res> {
  _$SendChatStateErrorCopyWithImpl(this._self, this._then);

  final SendChatStateError _self;
  final $Res Function(SendChatStateError) _then;

/// Create a copy of SendChatState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(SendChatStateError(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class SendChatStateUnAuthenticated implements SendChatState {
  const SendChatStateUnAuthenticated();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SendChatStateUnAuthenticated);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SendChatState.unAuthenticated()';
}


}




/// @nodoc


class SendChatStateNoInternet implements SendChatState {
  const SendChatStateNoInternet();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SendChatStateNoInternet);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SendChatState.noInternet()';
}


}




/// @nodoc


class SendChatStateTypingStatusUpdated implements SendChatState {
  const SendChatStateTypingStatusUpdated({required this.isTyping});
  

 final  bool? isTyping;

/// Create a copy of SendChatState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SendChatStateTypingStatusUpdatedCopyWith<SendChatStateTypingStatusUpdated> get copyWith => _$SendChatStateTypingStatusUpdatedCopyWithImpl<SendChatStateTypingStatusUpdated>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SendChatStateTypingStatusUpdated&&(identical(other.isTyping, isTyping) || other.isTyping == isTyping));
}


@override
int get hashCode => Object.hash(runtimeType,isTyping);

@override
String toString() {
  return 'SendChatState.typingStatusUpdated(isTyping: $isTyping)';
}


}

/// @nodoc
abstract mixin class $SendChatStateTypingStatusUpdatedCopyWith<$Res> implements $SendChatStateCopyWith<$Res> {
  factory $SendChatStateTypingStatusUpdatedCopyWith(SendChatStateTypingStatusUpdated value, $Res Function(SendChatStateTypingStatusUpdated) _then) = _$SendChatStateTypingStatusUpdatedCopyWithImpl;
@useResult
$Res call({
 bool? isTyping
});




}
/// @nodoc
class _$SendChatStateTypingStatusUpdatedCopyWithImpl<$Res>
    implements $SendChatStateTypingStatusUpdatedCopyWith<$Res> {
  _$SendChatStateTypingStatusUpdatedCopyWithImpl(this._self, this._then);

  final SendChatStateTypingStatusUpdated _self;
  final $Res Function(SendChatStateTypingStatusUpdated) _then;

/// Create a copy of SendChatState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isTyping = freezed,}) {
  return _then(SendChatStateTypingStatusUpdated(
isTyping: freezed == isTyping ? _self.isTyping : isTyping // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
