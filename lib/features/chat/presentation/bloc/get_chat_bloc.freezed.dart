// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_chat_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GetChatEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetChatEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetChatEvent()';
}


}

/// @nodoc
class $GetChatEventCopyWith<$Res>  {
$GetChatEventCopyWith(GetChatEvent _, $Res Function(GetChatEvent) __);
}


/// Adds pattern-matching-related methods to [GetChatEvent].
extension GetChatEventPatterns on GetChatEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( GetChatEventStarted value)?  started,TResult Function( GetChatEventGetChats value)?  getChats,TResult Function( GetChatEventGetChatDetails value)?  getChatDetails,required TResult orElse(),}){
final _that = this;
switch (_that) {
case GetChatEventStarted() when started != null:
return started(_that);case GetChatEventGetChats() when getChats != null:
return getChats(_that);case GetChatEventGetChatDetails() when getChatDetails != null:
return getChatDetails(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( GetChatEventStarted value)  started,required TResult Function( GetChatEventGetChats value)  getChats,required TResult Function( GetChatEventGetChatDetails value)  getChatDetails,}){
final _that = this;
switch (_that) {
case GetChatEventStarted():
return started(_that);case GetChatEventGetChats():
return getChats(_that);case GetChatEventGetChatDetails():
return getChatDetails(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( GetChatEventStarted value)?  started,TResult? Function( GetChatEventGetChats value)?  getChats,TResult? Function( GetChatEventGetChatDetails value)?  getChatDetails,}){
final _that = this;
switch (_that) {
case GetChatEventStarted() when started != null:
return started(_that);case GetChatEventGetChats() when getChats != null:
return getChats(_that);case GetChatEventGetChatDetails() when getChatDetails != null:
return getChatDetails(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( ChatModel? chatModel)?  getChats,TResult Function( ChatModel? chatModel)?  getChatDetails,required TResult orElse(),}) {final _that = this;
switch (_that) {
case GetChatEventStarted() when started != null:
return started();case GetChatEventGetChats() when getChats != null:
return getChats(_that.chatModel);case GetChatEventGetChatDetails() when getChatDetails != null:
return getChatDetails(_that.chatModel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( ChatModel? chatModel)  getChats,required TResult Function( ChatModel? chatModel)  getChatDetails,}) {final _that = this;
switch (_that) {
case GetChatEventStarted():
return started();case GetChatEventGetChats():
return getChats(_that.chatModel);case GetChatEventGetChatDetails():
return getChatDetails(_that.chatModel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( ChatModel? chatModel)?  getChats,TResult? Function( ChatModel? chatModel)?  getChatDetails,}) {final _that = this;
switch (_that) {
case GetChatEventStarted() when started != null:
return started();case GetChatEventGetChats() when getChats != null:
return getChats(_that.chatModel);case GetChatEventGetChatDetails() when getChatDetails != null:
return getChatDetails(_that.chatModel);case _:
  return null;

}
}

}

/// @nodoc


class GetChatEventStarted implements GetChatEvent {
  const GetChatEventStarted();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetChatEventStarted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetChatEvent.started()';
}


}




/// @nodoc


class GetChatEventGetChats implements GetChatEvent {
  const GetChatEventGetChats({required this.chatModel});
  

 final  ChatModel? chatModel;

/// Create a copy of GetChatEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetChatEventGetChatsCopyWith<GetChatEventGetChats> get copyWith => _$GetChatEventGetChatsCopyWithImpl<GetChatEventGetChats>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetChatEventGetChats&&(identical(other.chatModel, chatModel) || other.chatModel == chatModel));
}


@override
int get hashCode => Object.hash(runtimeType,chatModel);

@override
String toString() {
  return 'GetChatEvent.getChats(chatModel: $chatModel)';
}


}

/// @nodoc
abstract mixin class $GetChatEventGetChatsCopyWith<$Res> implements $GetChatEventCopyWith<$Res> {
  factory $GetChatEventGetChatsCopyWith(GetChatEventGetChats value, $Res Function(GetChatEventGetChats) _then) = _$GetChatEventGetChatsCopyWithImpl;
@useResult
$Res call({
 ChatModel? chatModel
});


$ChatModelCopyWith<$Res>? get chatModel;

}
/// @nodoc
class _$GetChatEventGetChatsCopyWithImpl<$Res>
    implements $GetChatEventGetChatsCopyWith<$Res> {
  _$GetChatEventGetChatsCopyWithImpl(this._self, this._then);

  final GetChatEventGetChats _self;
  final $Res Function(GetChatEventGetChats) _then;

/// Create a copy of GetChatEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? chatModel = freezed,}) {
  return _then(GetChatEventGetChats(
chatModel: freezed == chatModel ? _self.chatModel : chatModel // ignore: cast_nullable_to_non_nullable
as ChatModel?,
  ));
}

/// Create a copy of GetChatEvent
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


class GetChatEventGetChatDetails implements GetChatEvent {
  const GetChatEventGetChatDetails({required this.chatModel});
  

 final  ChatModel? chatModel;

/// Create a copy of GetChatEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetChatEventGetChatDetailsCopyWith<GetChatEventGetChatDetails> get copyWith => _$GetChatEventGetChatDetailsCopyWithImpl<GetChatEventGetChatDetails>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetChatEventGetChatDetails&&(identical(other.chatModel, chatModel) || other.chatModel == chatModel));
}


@override
int get hashCode => Object.hash(runtimeType,chatModel);

@override
String toString() {
  return 'GetChatEvent.getChatDetails(chatModel: $chatModel)';
}


}

/// @nodoc
abstract mixin class $GetChatEventGetChatDetailsCopyWith<$Res> implements $GetChatEventCopyWith<$Res> {
  factory $GetChatEventGetChatDetailsCopyWith(GetChatEventGetChatDetails value, $Res Function(GetChatEventGetChatDetails) _then) = _$GetChatEventGetChatDetailsCopyWithImpl;
@useResult
$Res call({
 ChatModel? chatModel
});


$ChatModelCopyWith<$Res>? get chatModel;

}
/// @nodoc
class _$GetChatEventGetChatDetailsCopyWithImpl<$Res>
    implements $GetChatEventGetChatDetailsCopyWith<$Res> {
  _$GetChatEventGetChatDetailsCopyWithImpl(this._self, this._then);

  final GetChatEventGetChatDetails _self;
  final $Res Function(GetChatEventGetChatDetails) _then;

/// Create a copy of GetChatEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? chatModel = freezed,}) {
  return _then(GetChatEventGetChatDetails(
chatModel: freezed == chatModel ? _self.chatModel : chatModel // ignore: cast_nullable_to_non_nullable
as ChatModel?,
  ));
}

/// Create a copy of GetChatEvent
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
mixin _$GetChatState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetChatState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetChatState()';
}


}

/// @nodoc
class $GetChatStateCopyWith<$Res>  {
$GetChatStateCopyWith(GetChatState _, $Res Function(GetChatState) __);
}


/// Adds pattern-matching-related methods to [GetChatState].
extension GetChatStatePatterns on GetChatState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( GetChatStateInitial value)?  initial,TResult Function( GetChatStateLoading value)?  loading,TResult Function( GetChatStateLoaded value)?  getChatStateLoaded,TResult Function( GetChatStateGetChatDetailsLoaded value)?  getChatDetailsLoaded,TResult Function( GetChatStateError value)?  error,TResult Function( GetChatStateUnAuthenticated value)?  unAuthenticated,TResult Function( GetChatStateNoInternet value)?  noInternet,TResult Function( GetChatStateNoChats value)?  noChats,required TResult orElse(),}){
final _that = this;
switch (_that) {
case GetChatStateInitial() when initial != null:
return initial(_that);case GetChatStateLoading() when loading != null:
return loading(_that);case GetChatStateLoaded() when getChatStateLoaded != null:
return getChatStateLoaded(_that);case GetChatStateGetChatDetailsLoaded() when getChatDetailsLoaded != null:
return getChatDetailsLoaded(_that);case GetChatStateError() when error != null:
return error(_that);case GetChatStateUnAuthenticated() when unAuthenticated != null:
return unAuthenticated(_that);case GetChatStateNoInternet() when noInternet != null:
return noInternet(_that);case GetChatStateNoChats() when noChats != null:
return noChats(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( GetChatStateInitial value)  initial,required TResult Function( GetChatStateLoading value)  loading,required TResult Function( GetChatStateLoaded value)  getChatStateLoaded,required TResult Function( GetChatStateGetChatDetailsLoaded value)  getChatDetailsLoaded,required TResult Function( GetChatStateError value)  error,required TResult Function( GetChatStateUnAuthenticated value)  unAuthenticated,required TResult Function( GetChatStateNoInternet value)  noInternet,required TResult Function( GetChatStateNoChats value)  noChats,}){
final _that = this;
switch (_that) {
case GetChatStateInitial():
return initial(_that);case GetChatStateLoading():
return loading(_that);case GetChatStateLoaded():
return getChatStateLoaded(_that);case GetChatStateGetChatDetailsLoaded():
return getChatDetailsLoaded(_that);case GetChatStateError():
return error(_that);case GetChatStateUnAuthenticated():
return unAuthenticated(_that);case GetChatStateNoInternet():
return noInternet(_that);case GetChatStateNoChats():
return noChats(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( GetChatStateInitial value)?  initial,TResult? Function( GetChatStateLoading value)?  loading,TResult? Function( GetChatStateLoaded value)?  getChatStateLoaded,TResult? Function( GetChatStateGetChatDetailsLoaded value)?  getChatDetailsLoaded,TResult? Function( GetChatStateError value)?  error,TResult? Function( GetChatStateUnAuthenticated value)?  unAuthenticated,TResult? Function( GetChatStateNoInternet value)?  noInternet,TResult? Function( GetChatStateNoChats value)?  noChats,}){
final _that = this;
switch (_that) {
case GetChatStateInitial() when initial != null:
return initial(_that);case GetChatStateLoading() when loading != null:
return loading(_that);case GetChatStateLoaded() when getChatStateLoaded != null:
return getChatStateLoaded(_that);case GetChatStateGetChatDetailsLoaded() when getChatDetailsLoaded != null:
return getChatDetailsLoaded(_that);case GetChatStateError() when error != null:
return error(_that);case GetChatStateUnAuthenticated() when unAuthenticated != null:
return unAuthenticated(_that);case GetChatStateNoInternet() when noInternet != null:
return noInternet(_that);case GetChatStateNoChats() when noChats != null:
return noChats(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<ChatsEntity?>? chatModel)?  getChatStateLoaded,TResult Function( ChatEntity? chatEntity)?  getChatDetailsLoaded,TResult Function( String? message)?  error,TResult Function()?  unAuthenticated,TResult Function()?  noInternet,TResult Function()?  noChats,required TResult orElse(),}) {final _that = this;
switch (_that) {
case GetChatStateInitial() when initial != null:
return initial();case GetChatStateLoading() when loading != null:
return loading();case GetChatStateLoaded() when getChatStateLoaded != null:
return getChatStateLoaded(_that.chatModel);case GetChatStateGetChatDetailsLoaded() when getChatDetailsLoaded != null:
return getChatDetailsLoaded(_that.chatEntity);case GetChatStateError() when error != null:
return error(_that.message);case GetChatStateUnAuthenticated() when unAuthenticated != null:
return unAuthenticated();case GetChatStateNoInternet() when noInternet != null:
return noInternet();case GetChatStateNoChats() when noChats != null:
return noChats();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<ChatsEntity?>? chatModel)  getChatStateLoaded,required TResult Function( ChatEntity? chatEntity)  getChatDetailsLoaded,required TResult Function( String? message)  error,required TResult Function()  unAuthenticated,required TResult Function()  noInternet,required TResult Function()  noChats,}) {final _that = this;
switch (_that) {
case GetChatStateInitial():
return initial();case GetChatStateLoading():
return loading();case GetChatStateLoaded():
return getChatStateLoaded(_that.chatModel);case GetChatStateGetChatDetailsLoaded():
return getChatDetailsLoaded(_that.chatEntity);case GetChatStateError():
return error(_that.message);case GetChatStateUnAuthenticated():
return unAuthenticated();case GetChatStateNoInternet():
return noInternet();case GetChatStateNoChats():
return noChats();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<ChatsEntity?>? chatModel)?  getChatStateLoaded,TResult? Function( ChatEntity? chatEntity)?  getChatDetailsLoaded,TResult? Function( String? message)?  error,TResult? Function()?  unAuthenticated,TResult? Function()?  noInternet,TResult? Function()?  noChats,}) {final _that = this;
switch (_that) {
case GetChatStateInitial() when initial != null:
return initial();case GetChatStateLoading() when loading != null:
return loading();case GetChatStateLoaded() when getChatStateLoaded != null:
return getChatStateLoaded(_that.chatModel);case GetChatStateGetChatDetailsLoaded() when getChatDetailsLoaded != null:
return getChatDetailsLoaded(_that.chatEntity);case GetChatStateError() when error != null:
return error(_that.message);case GetChatStateUnAuthenticated() when unAuthenticated != null:
return unAuthenticated();case GetChatStateNoInternet() when noInternet != null:
return noInternet();case GetChatStateNoChats() when noChats != null:
return noChats();case _:
  return null;

}
}

}

/// @nodoc


class GetChatStateInitial implements GetChatState {
  const GetChatStateInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetChatStateInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetChatState.initial()';
}


}




/// @nodoc


class GetChatStateLoading implements GetChatState {
  const GetChatStateLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetChatStateLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetChatState.loading()';
}


}




/// @nodoc


class GetChatStateLoaded implements GetChatState {
  const GetChatStateLoaded({required final  List<ChatsEntity?>? chatModel}): _chatModel = chatModel;
  

 final  List<ChatsEntity?>? _chatModel;
 List<ChatsEntity?>? get chatModel {
  final value = _chatModel;
  if (value == null) return null;
  if (_chatModel is EqualUnmodifiableListView) return _chatModel;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of GetChatState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetChatStateLoadedCopyWith<GetChatStateLoaded> get copyWith => _$GetChatStateLoadedCopyWithImpl<GetChatStateLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetChatStateLoaded&&const DeepCollectionEquality().equals(other._chatModel, _chatModel));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_chatModel));

@override
String toString() {
  return 'GetChatState.getChatStateLoaded(chatModel: $chatModel)';
}


}

/// @nodoc
abstract mixin class $GetChatStateLoadedCopyWith<$Res> implements $GetChatStateCopyWith<$Res> {
  factory $GetChatStateLoadedCopyWith(GetChatStateLoaded value, $Res Function(GetChatStateLoaded) _then) = _$GetChatStateLoadedCopyWithImpl;
@useResult
$Res call({
 List<ChatsEntity?>? chatModel
});




}
/// @nodoc
class _$GetChatStateLoadedCopyWithImpl<$Res>
    implements $GetChatStateLoadedCopyWith<$Res> {
  _$GetChatStateLoadedCopyWithImpl(this._self, this._then);

  final GetChatStateLoaded _self;
  final $Res Function(GetChatStateLoaded) _then;

/// Create a copy of GetChatState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? chatModel = freezed,}) {
  return _then(GetChatStateLoaded(
chatModel: freezed == chatModel ? _self._chatModel : chatModel // ignore: cast_nullable_to_non_nullable
as List<ChatsEntity?>?,
  ));
}


}

/// @nodoc


class GetChatStateGetChatDetailsLoaded implements GetChatState {
  const GetChatStateGetChatDetailsLoaded({required this.chatEntity});
  

 final  ChatEntity? chatEntity;

/// Create a copy of GetChatState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetChatStateGetChatDetailsLoadedCopyWith<GetChatStateGetChatDetailsLoaded> get copyWith => _$GetChatStateGetChatDetailsLoadedCopyWithImpl<GetChatStateGetChatDetailsLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetChatStateGetChatDetailsLoaded&&(identical(other.chatEntity, chatEntity) || other.chatEntity == chatEntity));
}


@override
int get hashCode => Object.hash(runtimeType,chatEntity);

@override
String toString() {
  return 'GetChatState.getChatDetailsLoaded(chatEntity: $chatEntity)';
}


}

/// @nodoc
abstract mixin class $GetChatStateGetChatDetailsLoadedCopyWith<$Res> implements $GetChatStateCopyWith<$Res> {
  factory $GetChatStateGetChatDetailsLoadedCopyWith(GetChatStateGetChatDetailsLoaded value, $Res Function(GetChatStateGetChatDetailsLoaded) _then) = _$GetChatStateGetChatDetailsLoadedCopyWithImpl;
@useResult
$Res call({
 ChatEntity? chatEntity
});


$ChatEntityCopyWith<$Res>? get chatEntity;

}
/// @nodoc
class _$GetChatStateGetChatDetailsLoadedCopyWithImpl<$Res>
    implements $GetChatStateGetChatDetailsLoadedCopyWith<$Res> {
  _$GetChatStateGetChatDetailsLoadedCopyWithImpl(this._self, this._then);

  final GetChatStateGetChatDetailsLoaded _self;
  final $Res Function(GetChatStateGetChatDetailsLoaded) _then;

/// Create a copy of GetChatState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? chatEntity = freezed,}) {
  return _then(GetChatStateGetChatDetailsLoaded(
chatEntity: freezed == chatEntity ? _self.chatEntity : chatEntity // ignore: cast_nullable_to_non_nullable
as ChatEntity?,
  ));
}

/// Create a copy of GetChatState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChatEntityCopyWith<$Res>? get chatEntity {
    if (_self.chatEntity == null) {
    return null;
  }

  return $ChatEntityCopyWith<$Res>(_self.chatEntity!, (value) {
    return _then(_self.copyWith(chatEntity: value));
  });
}
}

/// @nodoc


class GetChatStateError implements GetChatState {
  const GetChatStateError({required this.message});
  

 final  String? message;

/// Create a copy of GetChatState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetChatStateErrorCopyWith<GetChatStateError> get copyWith => _$GetChatStateErrorCopyWithImpl<GetChatStateError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetChatStateError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'GetChatState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $GetChatStateErrorCopyWith<$Res> implements $GetChatStateCopyWith<$Res> {
  factory $GetChatStateErrorCopyWith(GetChatStateError value, $Res Function(GetChatStateError) _then) = _$GetChatStateErrorCopyWithImpl;
@useResult
$Res call({
 String? message
});




}
/// @nodoc
class _$GetChatStateErrorCopyWithImpl<$Res>
    implements $GetChatStateErrorCopyWith<$Res> {
  _$GetChatStateErrorCopyWithImpl(this._self, this._then);

  final GetChatStateError _self;
  final $Res Function(GetChatStateError) _then;

/// Create a copy of GetChatState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(GetChatStateError(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class GetChatStateUnAuthenticated implements GetChatState {
  const GetChatStateUnAuthenticated();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetChatStateUnAuthenticated);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetChatState.unAuthenticated()';
}


}




/// @nodoc


class GetChatStateNoInternet implements GetChatState {
  const GetChatStateNoInternet();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetChatStateNoInternet);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetChatState.noInternet()';
}


}




/// @nodoc


class GetChatStateNoChats implements GetChatState {
  const GetChatStateNoChats();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetChatStateNoChats);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetChatState.noChats()';
}


}




// dart format on
