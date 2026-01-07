// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_account_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DeleteAccountEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteAccountEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DeleteAccountEvent()';
}


}

/// @nodoc
class $DeleteAccountEventCopyWith<$Res>  {
$DeleteAccountEventCopyWith(DeleteAccountEvent _, $Res Function(DeleteAccountEvent) __);
}


/// Adds pattern-matching-related methods to [DeleteAccountEvent].
extension DeleteAccountEventPatterns on DeleteAccountEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( DeleteAccountEventStarted value)?  started,TResult Function( DeleteAccountEventDeleteAccount value)?  deleteAccount,required TResult orElse(),}){
final _that = this;
switch (_that) {
case DeleteAccountEventStarted() when started != null:
return started(_that);case DeleteAccountEventDeleteAccount() when deleteAccount != null:
return deleteAccount(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( DeleteAccountEventStarted value)  started,required TResult Function( DeleteAccountEventDeleteAccount value)  deleteAccount,}){
final _that = this;
switch (_that) {
case DeleteAccountEventStarted():
return started(_that);case DeleteAccountEventDeleteAccount():
return deleteAccount(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( DeleteAccountEventStarted value)?  started,TResult? Function( DeleteAccountEventDeleteAccount value)?  deleteAccount,}){
final _that = this;
switch (_that) {
case DeleteAccountEventStarted() when started != null:
return started(_that);case DeleteAccountEventDeleteAccount() when deleteAccount != null:
return deleteAccount(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( ProfileModel? profileModel)?  deleteAccount,required TResult orElse(),}) {final _that = this;
switch (_that) {
case DeleteAccountEventStarted() when started != null:
return started();case DeleteAccountEventDeleteAccount() when deleteAccount != null:
return deleteAccount(_that.profileModel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( ProfileModel? profileModel)  deleteAccount,}) {final _that = this;
switch (_that) {
case DeleteAccountEventStarted():
return started();case DeleteAccountEventDeleteAccount():
return deleteAccount(_that.profileModel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( ProfileModel? profileModel)?  deleteAccount,}) {final _that = this;
switch (_that) {
case DeleteAccountEventStarted() when started != null:
return started();case DeleteAccountEventDeleteAccount() when deleteAccount != null:
return deleteAccount(_that.profileModel);case _:
  return null;

}
}

}

/// @nodoc


class DeleteAccountEventStarted implements DeleteAccountEvent {
  const DeleteAccountEventStarted();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteAccountEventStarted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DeleteAccountEvent.started()';
}


}




/// @nodoc


class DeleteAccountEventDeleteAccount implements DeleteAccountEvent {
  const DeleteAccountEventDeleteAccount({required this.profileModel});
  

 final  ProfileModel? profileModel;

/// Create a copy of DeleteAccountEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteAccountEventDeleteAccountCopyWith<DeleteAccountEventDeleteAccount> get copyWith => _$DeleteAccountEventDeleteAccountCopyWithImpl<DeleteAccountEventDeleteAccount>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteAccountEventDeleteAccount&&(identical(other.profileModel, profileModel) || other.profileModel == profileModel));
}


@override
int get hashCode => Object.hash(runtimeType,profileModel);

@override
String toString() {
  return 'DeleteAccountEvent.deleteAccount(profileModel: $profileModel)';
}


}

/// @nodoc
abstract mixin class $DeleteAccountEventDeleteAccountCopyWith<$Res> implements $DeleteAccountEventCopyWith<$Res> {
  factory $DeleteAccountEventDeleteAccountCopyWith(DeleteAccountEventDeleteAccount value, $Res Function(DeleteAccountEventDeleteAccount) _then) = _$DeleteAccountEventDeleteAccountCopyWithImpl;
@useResult
$Res call({
 ProfileModel? profileModel
});


$ProfileModelCopyWith<$Res>? get profileModel;

}
/// @nodoc
class _$DeleteAccountEventDeleteAccountCopyWithImpl<$Res>
    implements $DeleteAccountEventDeleteAccountCopyWith<$Res> {
  _$DeleteAccountEventDeleteAccountCopyWithImpl(this._self, this._then);

  final DeleteAccountEventDeleteAccount _self;
  final $Res Function(DeleteAccountEventDeleteAccount) _then;

/// Create a copy of DeleteAccountEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? profileModel = freezed,}) {
  return _then(DeleteAccountEventDeleteAccount(
profileModel: freezed == profileModel ? _self.profileModel : profileModel // ignore: cast_nullable_to_non_nullable
as ProfileModel?,
  ));
}

/// Create a copy of DeleteAccountEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProfileModelCopyWith<$Res>? get profileModel {
    if (_self.profileModel == null) {
    return null;
  }

  return $ProfileModelCopyWith<$Res>(_self.profileModel!, (value) {
    return _then(_self.copyWith(profileModel: value));
  });
}
}

/// @nodoc
mixin _$DeleteAccountState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteAccountState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DeleteAccountState()';
}


}

/// @nodoc
class $DeleteAccountStateCopyWith<$Res>  {
$DeleteAccountStateCopyWith(DeleteAccountState _, $Res Function(DeleteAccountState) __);
}


/// Adds pattern-matching-related methods to [DeleteAccountState].
extension DeleteAccountStatePatterns on DeleteAccountState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( DeleteAccountStateInitial value)?  initial,TResult Function( DeleteAccountStateLoading value)?  loading,TResult Function( DeleteAccountStateSuccess value)?  success,TResult Function( DeleteAccountStateFailure value)?  failure,TResult Function( DeleteAccountStateUnauthenticated value)?  unauthenticated,TResult Function( DeleteAccountStateNoInternet value)?  noInternet,required TResult orElse(),}){
final _that = this;
switch (_that) {
case DeleteAccountStateInitial() when initial != null:
return initial(_that);case DeleteAccountStateLoading() when loading != null:
return loading(_that);case DeleteAccountStateSuccess() when success != null:
return success(_that);case DeleteAccountStateFailure() when failure != null:
return failure(_that);case DeleteAccountStateUnauthenticated() when unauthenticated != null:
return unauthenticated(_that);case DeleteAccountStateNoInternet() when noInternet != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( DeleteAccountStateInitial value)  initial,required TResult Function( DeleteAccountStateLoading value)  loading,required TResult Function( DeleteAccountStateSuccess value)  success,required TResult Function( DeleteAccountStateFailure value)  failure,required TResult Function( DeleteAccountStateUnauthenticated value)  unauthenticated,required TResult Function( DeleteAccountStateNoInternet value)  noInternet,}){
final _that = this;
switch (_that) {
case DeleteAccountStateInitial():
return initial(_that);case DeleteAccountStateLoading():
return loading(_that);case DeleteAccountStateSuccess():
return success(_that);case DeleteAccountStateFailure():
return failure(_that);case DeleteAccountStateUnauthenticated():
return unauthenticated(_that);case DeleteAccountStateNoInternet():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( DeleteAccountStateInitial value)?  initial,TResult? Function( DeleteAccountStateLoading value)?  loading,TResult? Function( DeleteAccountStateSuccess value)?  success,TResult? Function( DeleteAccountStateFailure value)?  failure,TResult? Function( DeleteAccountStateUnauthenticated value)?  unauthenticated,TResult? Function( DeleteAccountStateNoInternet value)?  noInternet,}){
final _that = this;
switch (_that) {
case DeleteAccountStateInitial() when initial != null:
return initial(_that);case DeleteAccountStateLoading() when loading != null:
return loading(_that);case DeleteAccountStateSuccess() when success != null:
return success(_that);case DeleteAccountStateFailure() when failure != null:
return failure(_that);case DeleteAccountStateUnauthenticated() when unauthenticated != null:
return unauthenticated(_that);case DeleteAccountStateNoInternet() when noInternet != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function()?  success,TResult Function( String errorMessage)?  failure,TResult Function( String errorMessage)?  unauthenticated,TResult Function()?  noInternet,required TResult orElse(),}) {final _that = this;
switch (_that) {
case DeleteAccountStateInitial() when initial != null:
return initial();case DeleteAccountStateLoading() when loading != null:
return loading();case DeleteAccountStateSuccess() when success != null:
return success();case DeleteAccountStateFailure() when failure != null:
return failure(_that.errorMessage);case DeleteAccountStateUnauthenticated() when unauthenticated != null:
return unauthenticated(_that.errorMessage);case DeleteAccountStateNoInternet() when noInternet != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function()  success,required TResult Function( String errorMessage)  failure,required TResult Function( String errorMessage)  unauthenticated,required TResult Function()  noInternet,}) {final _that = this;
switch (_that) {
case DeleteAccountStateInitial():
return initial();case DeleteAccountStateLoading():
return loading();case DeleteAccountStateSuccess():
return success();case DeleteAccountStateFailure():
return failure(_that.errorMessage);case DeleteAccountStateUnauthenticated():
return unauthenticated(_that.errorMessage);case DeleteAccountStateNoInternet():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function()?  success,TResult? Function( String errorMessage)?  failure,TResult? Function( String errorMessage)?  unauthenticated,TResult? Function()?  noInternet,}) {final _that = this;
switch (_that) {
case DeleteAccountStateInitial() when initial != null:
return initial();case DeleteAccountStateLoading() when loading != null:
return loading();case DeleteAccountStateSuccess() when success != null:
return success();case DeleteAccountStateFailure() when failure != null:
return failure(_that.errorMessage);case DeleteAccountStateUnauthenticated() when unauthenticated != null:
return unauthenticated(_that.errorMessage);case DeleteAccountStateNoInternet() when noInternet != null:
return noInternet();case _:
  return null;

}
}

}

/// @nodoc


class DeleteAccountStateInitial implements DeleteAccountState {
  const DeleteAccountStateInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteAccountStateInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DeleteAccountState.initial()';
}


}




/// @nodoc


class DeleteAccountStateLoading implements DeleteAccountState {
  const DeleteAccountStateLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteAccountStateLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DeleteAccountState.loading()';
}


}




/// @nodoc


class DeleteAccountStateSuccess implements DeleteAccountState {
  const DeleteAccountStateSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteAccountStateSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DeleteAccountState.success()';
}


}




/// @nodoc


class DeleteAccountStateFailure implements DeleteAccountState {
  const DeleteAccountStateFailure({required this.errorMessage});
  

 final  String errorMessage;

/// Create a copy of DeleteAccountState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteAccountStateFailureCopyWith<DeleteAccountStateFailure> get copyWith => _$DeleteAccountStateFailureCopyWithImpl<DeleteAccountStateFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteAccountStateFailure&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,errorMessage);

@override
String toString() {
  return 'DeleteAccountState.failure(errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $DeleteAccountStateFailureCopyWith<$Res> implements $DeleteAccountStateCopyWith<$Res> {
  factory $DeleteAccountStateFailureCopyWith(DeleteAccountStateFailure value, $Res Function(DeleteAccountStateFailure) _then) = _$DeleteAccountStateFailureCopyWithImpl;
@useResult
$Res call({
 String errorMessage
});




}
/// @nodoc
class _$DeleteAccountStateFailureCopyWithImpl<$Res>
    implements $DeleteAccountStateFailureCopyWith<$Res> {
  _$DeleteAccountStateFailureCopyWithImpl(this._self, this._then);

  final DeleteAccountStateFailure _self;
  final $Res Function(DeleteAccountStateFailure) _then;

/// Create a copy of DeleteAccountState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorMessage = null,}) {
  return _then(DeleteAccountStateFailure(
errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class DeleteAccountStateUnauthenticated implements DeleteAccountState {
  const DeleteAccountStateUnauthenticated({required this.errorMessage});
  

 final  String errorMessage;

/// Create a copy of DeleteAccountState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteAccountStateUnauthenticatedCopyWith<DeleteAccountStateUnauthenticated> get copyWith => _$DeleteAccountStateUnauthenticatedCopyWithImpl<DeleteAccountStateUnauthenticated>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteAccountStateUnauthenticated&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,errorMessage);

@override
String toString() {
  return 'DeleteAccountState.unauthenticated(errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $DeleteAccountStateUnauthenticatedCopyWith<$Res> implements $DeleteAccountStateCopyWith<$Res> {
  factory $DeleteAccountStateUnauthenticatedCopyWith(DeleteAccountStateUnauthenticated value, $Res Function(DeleteAccountStateUnauthenticated) _then) = _$DeleteAccountStateUnauthenticatedCopyWithImpl;
@useResult
$Res call({
 String errorMessage
});




}
/// @nodoc
class _$DeleteAccountStateUnauthenticatedCopyWithImpl<$Res>
    implements $DeleteAccountStateUnauthenticatedCopyWith<$Res> {
  _$DeleteAccountStateUnauthenticatedCopyWithImpl(this._self, this._then);

  final DeleteAccountStateUnauthenticated _self;
  final $Res Function(DeleteAccountStateUnauthenticated) _then;

/// Create a copy of DeleteAccountState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorMessage = null,}) {
  return _then(DeleteAccountStateUnauthenticated(
errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class DeleteAccountStateNoInternet implements DeleteAccountState {
  const DeleteAccountStateNoInternet();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteAccountStateNoInternet);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DeleteAccountState.noInternet()';
}


}




// dart format on
