// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GetProfileEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetProfileEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetProfileEvent()';
}


}

/// @nodoc
class $GetProfileEventCopyWith<$Res>  {
$GetProfileEventCopyWith(GetProfileEvent _, $Res Function(GetProfileEvent) __);
}


/// Adds pattern-matching-related methods to [GetProfileEvent].
extension GetProfileEventPatterns on GetProfileEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( GetProfileEventStarted value)?  started,TResult Function( GetProfileEventGetProfile value)?  getProfile,TResult Function( GetProfileEventLogout value)?  logout,TResult Function( GetProfileEventUpdateProfile value)?  updateProfile,required TResult orElse(),}){
final _that = this;
switch (_that) {
case GetProfileEventStarted() when started != null:
return started(_that);case GetProfileEventGetProfile() when getProfile != null:
return getProfile(_that);case GetProfileEventLogout() when logout != null:
return logout(_that);case GetProfileEventUpdateProfile() when updateProfile != null:
return updateProfile(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( GetProfileEventStarted value)  started,required TResult Function( GetProfileEventGetProfile value)  getProfile,required TResult Function( GetProfileEventLogout value)  logout,required TResult Function( GetProfileEventUpdateProfile value)  updateProfile,}){
final _that = this;
switch (_that) {
case GetProfileEventStarted():
return started(_that);case GetProfileEventGetProfile():
return getProfile(_that);case GetProfileEventLogout():
return logout(_that);case GetProfileEventUpdateProfile():
return updateProfile(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( GetProfileEventStarted value)?  started,TResult? Function( GetProfileEventGetProfile value)?  getProfile,TResult? Function( GetProfileEventLogout value)?  logout,TResult? Function( GetProfileEventUpdateProfile value)?  updateProfile,}){
final _that = this;
switch (_that) {
case GetProfileEventStarted() when started != null:
return started(_that);case GetProfileEventGetProfile() when getProfile != null:
return getProfile(_that);case GetProfileEventLogout() when logout != null:
return logout(_that);case GetProfileEventUpdateProfile() when updateProfile != null:
return updateProfile(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( ProfileModel? profileModel)?  getProfile,TResult Function( ProfileModel? profileModel)?  logout,TResult Function( ProfileModel? profileModel)?  updateProfile,required TResult orElse(),}) {final _that = this;
switch (_that) {
case GetProfileEventStarted() when started != null:
return started();case GetProfileEventGetProfile() when getProfile != null:
return getProfile(_that.profileModel);case GetProfileEventLogout() when logout != null:
return logout(_that.profileModel);case GetProfileEventUpdateProfile() when updateProfile != null:
return updateProfile(_that.profileModel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( ProfileModel? profileModel)  getProfile,required TResult Function( ProfileModel? profileModel)  logout,required TResult Function( ProfileModel? profileModel)  updateProfile,}) {final _that = this;
switch (_that) {
case GetProfileEventStarted():
return started();case GetProfileEventGetProfile():
return getProfile(_that.profileModel);case GetProfileEventLogout():
return logout(_that.profileModel);case GetProfileEventUpdateProfile():
return updateProfile(_that.profileModel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( ProfileModel? profileModel)?  getProfile,TResult? Function( ProfileModel? profileModel)?  logout,TResult? Function( ProfileModel? profileModel)?  updateProfile,}) {final _that = this;
switch (_that) {
case GetProfileEventStarted() when started != null:
return started();case GetProfileEventGetProfile() when getProfile != null:
return getProfile(_that.profileModel);case GetProfileEventLogout() when logout != null:
return logout(_that.profileModel);case GetProfileEventUpdateProfile() when updateProfile != null:
return updateProfile(_that.profileModel);case _:
  return null;

}
}

}

/// @nodoc


class GetProfileEventStarted implements GetProfileEvent {
  const GetProfileEventStarted();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetProfileEventStarted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetProfileEvent.started()';
}


}




/// @nodoc


class GetProfileEventGetProfile implements GetProfileEvent {
  const GetProfileEventGetProfile({required this.profileModel});
  

 final  ProfileModel? profileModel;

/// Create a copy of GetProfileEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetProfileEventGetProfileCopyWith<GetProfileEventGetProfile> get copyWith => _$GetProfileEventGetProfileCopyWithImpl<GetProfileEventGetProfile>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetProfileEventGetProfile&&(identical(other.profileModel, profileModel) || other.profileModel == profileModel));
}


@override
int get hashCode => Object.hash(runtimeType,profileModel);

@override
String toString() {
  return 'GetProfileEvent.getProfile(profileModel: $profileModel)';
}


}

/// @nodoc
abstract mixin class $GetProfileEventGetProfileCopyWith<$Res> implements $GetProfileEventCopyWith<$Res> {
  factory $GetProfileEventGetProfileCopyWith(GetProfileEventGetProfile value, $Res Function(GetProfileEventGetProfile) _then) = _$GetProfileEventGetProfileCopyWithImpl;
@useResult
$Res call({
 ProfileModel? profileModel
});


$ProfileModelCopyWith<$Res>? get profileModel;

}
/// @nodoc
class _$GetProfileEventGetProfileCopyWithImpl<$Res>
    implements $GetProfileEventGetProfileCopyWith<$Res> {
  _$GetProfileEventGetProfileCopyWithImpl(this._self, this._then);

  final GetProfileEventGetProfile _self;
  final $Res Function(GetProfileEventGetProfile) _then;

/// Create a copy of GetProfileEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? profileModel = freezed,}) {
  return _then(GetProfileEventGetProfile(
profileModel: freezed == profileModel ? _self.profileModel : profileModel // ignore: cast_nullable_to_non_nullable
as ProfileModel?,
  ));
}

/// Create a copy of GetProfileEvent
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


class GetProfileEventLogout implements GetProfileEvent {
  const GetProfileEventLogout({required this.profileModel});
  

 final  ProfileModel? profileModel;

/// Create a copy of GetProfileEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetProfileEventLogoutCopyWith<GetProfileEventLogout> get copyWith => _$GetProfileEventLogoutCopyWithImpl<GetProfileEventLogout>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetProfileEventLogout&&(identical(other.profileModel, profileModel) || other.profileModel == profileModel));
}


@override
int get hashCode => Object.hash(runtimeType,profileModel);

@override
String toString() {
  return 'GetProfileEvent.logout(profileModel: $profileModel)';
}


}

/// @nodoc
abstract mixin class $GetProfileEventLogoutCopyWith<$Res> implements $GetProfileEventCopyWith<$Res> {
  factory $GetProfileEventLogoutCopyWith(GetProfileEventLogout value, $Res Function(GetProfileEventLogout) _then) = _$GetProfileEventLogoutCopyWithImpl;
@useResult
$Res call({
 ProfileModel? profileModel
});


$ProfileModelCopyWith<$Res>? get profileModel;

}
/// @nodoc
class _$GetProfileEventLogoutCopyWithImpl<$Res>
    implements $GetProfileEventLogoutCopyWith<$Res> {
  _$GetProfileEventLogoutCopyWithImpl(this._self, this._then);

  final GetProfileEventLogout _self;
  final $Res Function(GetProfileEventLogout) _then;

/// Create a copy of GetProfileEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? profileModel = freezed,}) {
  return _then(GetProfileEventLogout(
profileModel: freezed == profileModel ? _self.profileModel : profileModel // ignore: cast_nullable_to_non_nullable
as ProfileModel?,
  ));
}

/// Create a copy of GetProfileEvent
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


class GetProfileEventUpdateProfile implements GetProfileEvent {
  const GetProfileEventUpdateProfile({required this.profileModel});
  

 final  ProfileModel? profileModel;

/// Create a copy of GetProfileEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetProfileEventUpdateProfileCopyWith<GetProfileEventUpdateProfile> get copyWith => _$GetProfileEventUpdateProfileCopyWithImpl<GetProfileEventUpdateProfile>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetProfileEventUpdateProfile&&(identical(other.profileModel, profileModel) || other.profileModel == profileModel));
}


@override
int get hashCode => Object.hash(runtimeType,profileModel);

@override
String toString() {
  return 'GetProfileEvent.updateProfile(profileModel: $profileModel)';
}


}

/// @nodoc
abstract mixin class $GetProfileEventUpdateProfileCopyWith<$Res> implements $GetProfileEventCopyWith<$Res> {
  factory $GetProfileEventUpdateProfileCopyWith(GetProfileEventUpdateProfile value, $Res Function(GetProfileEventUpdateProfile) _then) = _$GetProfileEventUpdateProfileCopyWithImpl;
@useResult
$Res call({
 ProfileModel? profileModel
});


$ProfileModelCopyWith<$Res>? get profileModel;

}
/// @nodoc
class _$GetProfileEventUpdateProfileCopyWithImpl<$Res>
    implements $GetProfileEventUpdateProfileCopyWith<$Res> {
  _$GetProfileEventUpdateProfileCopyWithImpl(this._self, this._then);

  final GetProfileEventUpdateProfile _self;
  final $Res Function(GetProfileEventUpdateProfile) _then;

/// Create a copy of GetProfileEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? profileModel = freezed,}) {
  return _then(GetProfileEventUpdateProfile(
profileModel: freezed == profileModel ? _self.profileModel : profileModel // ignore: cast_nullable_to_non_nullable
as ProfileModel?,
  ));
}

/// Create a copy of GetProfileEvent
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
mixin _$GetProfileState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetProfileState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetProfileState()';
}


}

/// @nodoc
class $GetProfileStateCopyWith<$Res>  {
$GetProfileStateCopyWith(GetProfileState _, $Res Function(GetProfileState) __);
}


/// Adds pattern-matching-related methods to [GetProfileState].
extension GetProfileStatePatterns on GetProfileState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( GetProfileStateInitial value)?  initial,TResult Function( GetProfileStateLoading value)?  loading,TResult Function( GetProfileStateLoaded value)?  loaded,TResult Function( GetProfileStateError value)?  error,TResult Function( GetProfileStateNoInternet value)?  noInternet,TResult Function( GetProfileStateNoData value)?  noData,TResult Function( GetProfileStateUnauthorized value)?  unauthorized,TResult Function( GetProfileStateLoggedOut value)?  loggedOut,TResult Function( GetProfileStateLogoutError value)?  logoutError,TResult Function( GetProfileStateUpdated value)?  updated,TResult Function( GetProfileStateUpdateError value)?  updateError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case GetProfileStateInitial() when initial != null:
return initial(_that);case GetProfileStateLoading() when loading != null:
return loading(_that);case GetProfileStateLoaded() when loaded != null:
return loaded(_that);case GetProfileStateError() when error != null:
return error(_that);case GetProfileStateNoInternet() when noInternet != null:
return noInternet(_that);case GetProfileStateNoData() when noData != null:
return noData(_that);case GetProfileStateUnauthorized() when unauthorized != null:
return unauthorized(_that);case GetProfileStateLoggedOut() when loggedOut != null:
return loggedOut(_that);case GetProfileStateLogoutError() when logoutError != null:
return logoutError(_that);case GetProfileStateUpdated() when updated != null:
return updated(_that);case GetProfileStateUpdateError() when updateError != null:
return updateError(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( GetProfileStateInitial value)  initial,required TResult Function( GetProfileStateLoading value)  loading,required TResult Function( GetProfileStateLoaded value)  loaded,required TResult Function( GetProfileStateError value)  error,required TResult Function( GetProfileStateNoInternet value)  noInternet,required TResult Function( GetProfileStateNoData value)  noData,required TResult Function( GetProfileStateUnauthorized value)  unauthorized,required TResult Function( GetProfileStateLoggedOut value)  loggedOut,required TResult Function( GetProfileStateLogoutError value)  logoutError,required TResult Function( GetProfileStateUpdated value)  updated,required TResult Function( GetProfileStateUpdateError value)  updateError,}){
final _that = this;
switch (_that) {
case GetProfileStateInitial():
return initial(_that);case GetProfileStateLoading():
return loading(_that);case GetProfileStateLoaded():
return loaded(_that);case GetProfileStateError():
return error(_that);case GetProfileStateNoInternet():
return noInternet(_that);case GetProfileStateNoData():
return noData(_that);case GetProfileStateUnauthorized():
return unauthorized(_that);case GetProfileStateLoggedOut():
return loggedOut(_that);case GetProfileStateLogoutError():
return logoutError(_that);case GetProfileStateUpdated():
return updated(_that);case GetProfileStateUpdateError():
return updateError(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( GetProfileStateInitial value)?  initial,TResult? Function( GetProfileStateLoading value)?  loading,TResult? Function( GetProfileStateLoaded value)?  loaded,TResult? Function( GetProfileStateError value)?  error,TResult? Function( GetProfileStateNoInternet value)?  noInternet,TResult? Function( GetProfileStateNoData value)?  noData,TResult? Function( GetProfileStateUnauthorized value)?  unauthorized,TResult? Function( GetProfileStateLoggedOut value)?  loggedOut,TResult? Function( GetProfileStateLogoutError value)?  logoutError,TResult? Function( GetProfileStateUpdated value)?  updated,TResult? Function( GetProfileStateUpdateError value)?  updateError,}){
final _that = this;
switch (_that) {
case GetProfileStateInitial() when initial != null:
return initial(_that);case GetProfileStateLoading() when loading != null:
return loading(_that);case GetProfileStateLoaded() when loaded != null:
return loaded(_that);case GetProfileStateError() when error != null:
return error(_that);case GetProfileStateNoInternet() when noInternet != null:
return noInternet(_that);case GetProfileStateNoData() when noData != null:
return noData(_that);case GetProfileStateUnauthorized() when unauthorized != null:
return unauthorized(_that);case GetProfileStateLoggedOut() when loggedOut != null:
return loggedOut(_that);case GetProfileStateLogoutError() when logoutError != null:
return logoutError(_that);case GetProfileStateUpdated() when updated != null:
return updated(_that);case GetProfileStateUpdateError() when updateError != null:
return updateError(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( ProfileEntity? profileEntity)?  loaded,TResult Function( String? message)?  error,TResult Function()?  noInternet,TResult Function()?  noData,TResult Function()?  unauthorized,TResult Function()?  loggedOut,TResult Function( String? message)?  logoutError,TResult Function( ProfileEntity? profileEntity)?  updated,TResult Function( String? message)?  updateError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case GetProfileStateInitial() when initial != null:
return initial();case GetProfileStateLoading() when loading != null:
return loading();case GetProfileStateLoaded() when loaded != null:
return loaded(_that.profileEntity);case GetProfileStateError() when error != null:
return error(_that.message);case GetProfileStateNoInternet() when noInternet != null:
return noInternet();case GetProfileStateNoData() when noData != null:
return noData();case GetProfileStateUnauthorized() when unauthorized != null:
return unauthorized();case GetProfileStateLoggedOut() when loggedOut != null:
return loggedOut();case GetProfileStateLogoutError() when logoutError != null:
return logoutError(_that.message);case GetProfileStateUpdated() when updated != null:
return updated(_that.profileEntity);case GetProfileStateUpdateError() when updateError != null:
return updateError(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( ProfileEntity? profileEntity)  loaded,required TResult Function( String? message)  error,required TResult Function()  noInternet,required TResult Function()  noData,required TResult Function()  unauthorized,required TResult Function()  loggedOut,required TResult Function( String? message)  logoutError,required TResult Function( ProfileEntity? profileEntity)  updated,required TResult Function( String? message)  updateError,}) {final _that = this;
switch (_that) {
case GetProfileStateInitial():
return initial();case GetProfileStateLoading():
return loading();case GetProfileStateLoaded():
return loaded(_that.profileEntity);case GetProfileStateError():
return error(_that.message);case GetProfileStateNoInternet():
return noInternet();case GetProfileStateNoData():
return noData();case GetProfileStateUnauthorized():
return unauthorized();case GetProfileStateLoggedOut():
return loggedOut();case GetProfileStateLogoutError():
return logoutError(_that.message);case GetProfileStateUpdated():
return updated(_that.profileEntity);case GetProfileStateUpdateError():
return updateError(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( ProfileEntity? profileEntity)?  loaded,TResult? Function( String? message)?  error,TResult? Function()?  noInternet,TResult? Function()?  noData,TResult? Function()?  unauthorized,TResult? Function()?  loggedOut,TResult? Function( String? message)?  logoutError,TResult? Function( ProfileEntity? profileEntity)?  updated,TResult? Function( String? message)?  updateError,}) {final _that = this;
switch (_that) {
case GetProfileStateInitial() when initial != null:
return initial();case GetProfileStateLoading() when loading != null:
return loading();case GetProfileStateLoaded() when loaded != null:
return loaded(_that.profileEntity);case GetProfileStateError() when error != null:
return error(_that.message);case GetProfileStateNoInternet() when noInternet != null:
return noInternet();case GetProfileStateNoData() when noData != null:
return noData();case GetProfileStateUnauthorized() when unauthorized != null:
return unauthorized();case GetProfileStateLoggedOut() when loggedOut != null:
return loggedOut();case GetProfileStateLogoutError() when logoutError != null:
return logoutError(_that.message);case GetProfileStateUpdated() when updated != null:
return updated(_that.profileEntity);case GetProfileStateUpdateError() when updateError != null:
return updateError(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class GetProfileStateInitial implements GetProfileState {
  const GetProfileStateInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetProfileStateInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetProfileState.initial()';
}


}




/// @nodoc


class GetProfileStateLoading implements GetProfileState {
  const GetProfileStateLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetProfileStateLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetProfileState.loading()';
}


}




/// @nodoc


class GetProfileStateLoaded implements GetProfileState {
  const GetProfileStateLoaded({required this.profileEntity});
  

 final  ProfileEntity? profileEntity;

/// Create a copy of GetProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetProfileStateLoadedCopyWith<GetProfileStateLoaded> get copyWith => _$GetProfileStateLoadedCopyWithImpl<GetProfileStateLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetProfileStateLoaded&&(identical(other.profileEntity, profileEntity) || other.profileEntity == profileEntity));
}


@override
int get hashCode => Object.hash(runtimeType,profileEntity);

@override
String toString() {
  return 'GetProfileState.loaded(profileEntity: $profileEntity)';
}


}

/// @nodoc
abstract mixin class $GetProfileStateLoadedCopyWith<$Res> implements $GetProfileStateCopyWith<$Res> {
  factory $GetProfileStateLoadedCopyWith(GetProfileStateLoaded value, $Res Function(GetProfileStateLoaded) _then) = _$GetProfileStateLoadedCopyWithImpl;
@useResult
$Res call({
 ProfileEntity? profileEntity
});


$ProfileEntityCopyWith<$Res>? get profileEntity;

}
/// @nodoc
class _$GetProfileStateLoadedCopyWithImpl<$Res>
    implements $GetProfileStateLoadedCopyWith<$Res> {
  _$GetProfileStateLoadedCopyWithImpl(this._self, this._then);

  final GetProfileStateLoaded _self;
  final $Res Function(GetProfileStateLoaded) _then;

/// Create a copy of GetProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? profileEntity = freezed,}) {
  return _then(GetProfileStateLoaded(
profileEntity: freezed == profileEntity ? _self.profileEntity : profileEntity // ignore: cast_nullable_to_non_nullable
as ProfileEntity?,
  ));
}

/// Create a copy of GetProfileState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProfileEntityCopyWith<$Res>? get profileEntity {
    if (_self.profileEntity == null) {
    return null;
  }

  return $ProfileEntityCopyWith<$Res>(_self.profileEntity!, (value) {
    return _then(_self.copyWith(profileEntity: value));
  });
}
}

/// @nodoc


class GetProfileStateError implements GetProfileState {
  const GetProfileStateError({this.message});
  

 final  String? message;

/// Create a copy of GetProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetProfileStateErrorCopyWith<GetProfileStateError> get copyWith => _$GetProfileStateErrorCopyWithImpl<GetProfileStateError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetProfileStateError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'GetProfileState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $GetProfileStateErrorCopyWith<$Res> implements $GetProfileStateCopyWith<$Res> {
  factory $GetProfileStateErrorCopyWith(GetProfileStateError value, $Res Function(GetProfileStateError) _then) = _$GetProfileStateErrorCopyWithImpl;
@useResult
$Res call({
 String? message
});




}
/// @nodoc
class _$GetProfileStateErrorCopyWithImpl<$Res>
    implements $GetProfileStateErrorCopyWith<$Res> {
  _$GetProfileStateErrorCopyWithImpl(this._self, this._then);

  final GetProfileStateError _self;
  final $Res Function(GetProfileStateError) _then;

/// Create a copy of GetProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(GetProfileStateError(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class GetProfileStateNoInternet implements GetProfileState {
  const GetProfileStateNoInternet();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetProfileStateNoInternet);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetProfileState.noInternet()';
}


}




/// @nodoc


class GetProfileStateNoData implements GetProfileState {
  const GetProfileStateNoData();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetProfileStateNoData);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetProfileState.noData()';
}


}




/// @nodoc


class GetProfileStateUnauthorized implements GetProfileState {
  const GetProfileStateUnauthorized();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetProfileStateUnauthorized);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetProfileState.unauthorized()';
}


}




/// @nodoc


class GetProfileStateLoggedOut implements GetProfileState {
  const GetProfileStateLoggedOut();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetProfileStateLoggedOut);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetProfileState.loggedOut()';
}


}




/// @nodoc


class GetProfileStateLogoutError implements GetProfileState {
  const GetProfileStateLogoutError({this.message});
  

 final  String? message;

/// Create a copy of GetProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetProfileStateLogoutErrorCopyWith<GetProfileStateLogoutError> get copyWith => _$GetProfileStateLogoutErrorCopyWithImpl<GetProfileStateLogoutError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetProfileStateLogoutError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'GetProfileState.logoutError(message: $message)';
}


}

/// @nodoc
abstract mixin class $GetProfileStateLogoutErrorCopyWith<$Res> implements $GetProfileStateCopyWith<$Res> {
  factory $GetProfileStateLogoutErrorCopyWith(GetProfileStateLogoutError value, $Res Function(GetProfileStateLogoutError) _then) = _$GetProfileStateLogoutErrorCopyWithImpl;
@useResult
$Res call({
 String? message
});




}
/// @nodoc
class _$GetProfileStateLogoutErrorCopyWithImpl<$Res>
    implements $GetProfileStateLogoutErrorCopyWith<$Res> {
  _$GetProfileStateLogoutErrorCopyWithImpl(this._self, this._then);

  final GetProfileStateLogoutError _self;
  final $Res Function(GetProfileStateLogoutError) _then;

/// Create a copy of GetProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(GetProfileStateLogoutError(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class GetProfileStateUpdated implements GetProfileState {
  const GetProfileStateUpdated({required this.profileEntity});
  

 final  ProfileEntity? profileEntity;

/// Create a copy of GetProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetProfileStateUpdatedCopyWith<GetProfileStateUpdated> get copyWith => _$GetProfileStateUpdatedCopyWithImpl<GetProfileStateUpdated>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetProfileStateUpdated&&(identical(other.profileEntity, profileEntity) || other.profileEntity == profileEntity));
}


@override
int get hashCode => Object.hash(runtimeType,profileEntity);

@override
String toString() {
  return 'GetProfileState.updated(profileEntity: $profileEntity)';
}


}

/// @nodoc
abstract mixin class $GetProfileStateUpdatedCopyWith<$Res> implements $GetProfileStateCopyWith<$Res> {
  factory $GetProfileStateUpdatedCopyWith(GetProfileStateUpdated value, $Res Function(GetProfileStateUpdated) _then) = _$GetProfileStateUpdatedCopyWithImpl;
@useResult
$Res call({
 ProfileEntity? profileEntity
});


$ProfileEntityCopyWith<$Res>? get profileEntity;

}
/// @nodoc
class _$GetProfileStateUpdatedCopyWithImpl<$Res>
    implements $GetProfileStateUpdatedCopyWith<$Res> {
  _$GetProfileStateUpdatedCopyWithImpl(this._self, this._then);

  final GetProfileStateUpdated _self;
  final $Res Function(GetProfileStateUpdated) _then;

/// Create a copy of GetProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? profileEntity = freezed,}) {
  return _then(GetProfileStateUpdated(
profileEntity: freezed == profileEntity ? _self.profileEntity : profileEntity // ignore: cast_nullable_to_non_nullable
as ProfileEntity?,
  ));
}

/// Create a copy of GetProfileState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProfileEntityCopyWith<$Res>? get profileEntity {
    if (_self.profileEntity == null) {
    return null;
  }

  return $ProfileEntityCopyWith<$Res>(_self.profileEntity!, (value) {
    return _then(_self.copyWith(profileEntity: value));
  });
}
}

/// @nodoc


class GetProfileStateUpdateError implements GetProfileState {
  const GetProfileStateUpdateError({this.message});
  

 final  String? message;

/// Create a copy of GetProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetProfileStateUpdateErrorCopyWith<GetProfileStateUpdateError> get copyWith => _$GetProfileStateUpdateErrorCopyWithImpl<GetProfileStateUpdateError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetProfileStateUpdateError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'GetProfileState.updateError(message: $message)';
}


}

/// @nodoc
abstract mixin class $GetProfileStateUpdateErrorCopyWith<$Res> implements $GetProfileStateCopyWith<$Res> {
  factory $GetProfileStateUpdateErrorCopyWith(GetProfileStateUpdateError value, $Res Function(GetProfileStateUpdateError) _then) = _$GetProfileStateUpdateErrorCopyWithImpl;
@useResult
$Res call({
 String? message
});




}
/// @nodoc
class _$GetProfileStateUpdateErrorCopyWithImpl<$Res>
    implements $GetProfileStateUpdateErrorCopyWith<$Res> {
  _$GetProfileStateUpdateErrorCopyWithImpl(this._self, this._then);

  final GetProfileStateUpdateError _self;
  final $Res Function(GetProfileStateUpdateError) _then;

/// Create a copy of GetProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(GetProfileStateUpdateError(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
