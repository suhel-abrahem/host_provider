// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_ticket_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateTicketModel {

 String? get subject; String? get category; String? get priority; String? get initial_message; String? get accepted_language; String? get token;
/// Create a copy of CreateTicketModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateTicketModelCopyWith<CreateTicketModel> get copyWith => _$CreateTicketModelCopyWithImpl<CreateTicketModel>(this as CreateTicketModel, _$identity);

  /// Serializes this CreateTicketModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateTicketModel&&(identical(other.subject, subject) || other.subject == subject)&&(identical(other.category, category) || other.category == category)&&(identical(other.priority, priority) || other.priority == priority)&&(identical(other.initial_message, initial_message) || other.initial_message == initial_message)&&(identical(other.accepted_language, accepted_language) || other.accepted_language == accepted_language)&&(identical(other.token, token) || other.token == token));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,subject,category,priority,initial_message,accepted_language,token);

@override
String toString() {
  return 'CreateTicketModel(subject: $subject, category: $category, priority: $priority, initial_message: $initial_message, accepted_language: $accepted_language, token: $token)';
}


}

/// @nodoc
abstract mixin class $CreateTicketModelCopyWith<$Res>  {
  factory $CreateTicketModelCopyWith(CreateTicketModel value, $Res Function(CreateTicketModel) _then) = _$CreateTicketModelCopyWithImpl;
@useResult
$Res call({
 String? subject, String? category, String? priority, String? initial_message, String? accepted_language, String? token
});




}
/// @nodoc
class _$CreateTicketModelCopyWithImpl<$Res>
    implements $CreateTicketModelCopyWith<$Res> {
  _$CreateTicketModelCopyWithImpl(this._self, this._then);

  final CreateTicketModel _self;
  final $Res Function(CreateTicketModel) _then;

/// Create a copy of CreateTicketModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? subject = freezed,Object? category = freezed,Object? priority = freezed,Object? initial_message = freezed,Object? accepted_language = freezed,Object? token = freezed,}) {
  return _then(_self.copyWith(
subject: freezed == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,priority: freezed == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as String?,initial_message: freezed == initial_message ? _self.initial_message : initial_message // ignore: cast_nullable_to_non_nullable
as String?,accepted_language: freezed == accepted_language ? _self.accepted_language : accepted_language // ignore: cast_nullable_to_non_nullable
as String?,token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateTicketModel].
extension CreateTicketModelPatterns on CreateTicketModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateTicketModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateTicketModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateTicketModel value)  $default,){
final _that = this;
switch (_that) {
case _CreateTicketModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateTicketModel value)?  $default,){
final _that = this;
switch (_that) {
case _CreateTicketModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? subject,  String? category,  String? priority,  String? initial_message,  String? accepted_language,  String? token)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateTicketModel() when $default != null:
return $default(_that.subject,_that.category,_that.priority,_that.initial_message,_that.accepted_language,_that.token);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? subject,  String? category,  String? priority,  String? initial_message,  String? accepted_language,  String? token)  $default,) {final _that = this;
switch (_that) {
case _CreateTicketModel():
return $default(_that.subject,_that.category,_that.priority,_that.initial_message,_that.accepted_language,_that.token);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? subject,  String? category,  String? priority,  String? initial_message,  String? accepted_language,  String? token)?  $default,) {final _that = this;
switch (_that) {
case _CreateTicketModel() when $default != null:
return $default(_that.subject,_that.category,_that.priority,_that.initial_message,_that.accepted_language,_that.token);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateTicketModel implements CreateTicketModel {
  const _CreateTicketModel({this.subject = "", this.category = "", this.priority = "", this.initial_message = "", this.accepted_language = "", this.token = ""});
  factory _CreateTicketModel.fromJson(Map<String, dynamic> json) => _$CreateTicketModelFromJson(json);

@override@JsonKey() final  String? subject;
@override@JsonKey() final  String? category;
@override@JsonKey() final  String? priority;
@override@JsonKey() final  String? initial_message;
@override@JsonKey() final  String? accepted_language;
@override@JsonKey() final  String? token;

/// Create a copy of CreateTicketModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateTicketModelCopyWith<_CreateTicketModel> get copyWith => __$CreateTicketModelCopyWithImpl<_CreateTicketModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateTicketModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateTicketModel&&(identical(other.subject, subject) || other.subject == subject)&&(identical(other.category, category) || other.category == category)&&(identical(other.priority, priority) || other.priority == priority)&&(identical(other.initial_message, initial_message) || other.initial_message == initial_message)&&(identical(other.accepted_language, accepted_language) || other.accepted_language == accepted_language)&&(identical(other.token, token) || other.token == token));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,subject,category,priority,initial_message,accepted_language,token);

@override
String toString() {
  return 'CreateTicketModel(subject: $subject, category: $category, priority: $priority, initial_message: $initial_message, accepted_language: $accepted_language, token: $token)';
}


}

/// @nodoc
abstract mixin class _$CreateTicketModelCopyWith<$Res> implements $CreateTicketModelCopyWith<$Res> {
  factory _$CreateTicketModelCopyWith(_CreateTicketModel value, $Res Function(_CreateTicketModel) _then) = __$CreateTicketModelCopyWithImpl;
@override @useResult
$Res call({
 String? subject, String? category, String? priority, String? initial_message, String? accepted_language, String? token
});




}
/// @nodoc
class __$CreateTicketModelCopyWithImpl<$Res>
    implements _$CreateTicketModelCopyWith<$Res> {
  __$CreateTicketModelCopyWithImpl(this._self, this._then);

  final _CreateTicketModel _self;
  final $Res Function(_CreateTicketModel) _then;

/// Create a copy of CreateTicketModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? subject = freezed,Object? category = freezed,Object? priority = freezed,Object? initial_message = freezed,Object? accepted_language = freezed,Object? token = freezed,}) {
  return _then(_CreateTicketModel(
subject: freezed == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,priority: freezed == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as String?,initial_message: freezed == initial_message ? _self.initial_message : initial_message // ignore: cast_nullable_to_non_nullable
as String?,accepted_language: freezed == accepted_language ? _self.accepted_language : accepted_language // ignore: cast_nullable_to_non_nullable
as String?,token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
