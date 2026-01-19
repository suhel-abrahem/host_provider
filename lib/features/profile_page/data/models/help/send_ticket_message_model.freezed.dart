// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'send_ticket_message_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SendTicketMessageModel {

 String? get token; String? get message_type; int? get ticketId; String? get content;@FileListJsonConverter() List<File?>? get files;
/// Create a copy of SendTicketMessageModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SendTicketMessageModelCopyWith<SendTicketMessageModel> get copyWith => _$SendTicketMessageModelCopyWithImpl<SendTicketMessageModel>(this as SendTicketMessageModel, _$identity);

  /// Serializes this SendTicketMessageModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SendTicketMessageModel&&(identical(other.token, token) || other.token == token)&&(identical(other.message_type, message_type) || other.message_type == message_type)&&(identical(other.ticketId, ticketId) || other.ticketId == ticketId)&&(identical(other.content, content) || other.content == content)&&const DeepCollectionEquality().equals(other.files, files));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token,message_type,ticketId,content,const DeepCollectionEquality().hash(files));

@override
String toString() {
  return 'SendTicketMessageModel(token: $token, message_type: $message_type, ticketId: $ticketId, content: $content, files: $files)';
}


}

/// @nodoc
abstract mixin class $SendTicketMessageModelCopyWith<$Res>  {
  factory $SendTicketMessageModelCopyWith(SendTicketMessageModel value, $Res Function(SendTicketMessageModel) _then) = _$SendTicketMessageModelCopyWithImpl;
@useResult
$Res call({
 String? token, String? message_type, int? ticketId, String? content,@FileListJsonConverter() List<File?>? files
});




}
/// @nodoc
class _$SendTicketMessageModelCopyWithImpl<$Res>
    implements $SendTicketMessageModelCopyWith<$Res> {
  _$SendTicketMessageModelCopyWithImpl(this._self, this._then);

  final SendTicketMessageModel _self;
  final $Res Function(SendTicketMessageModel) _then;

/// Create a copy of SendTicketMessageModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? token = freezed,Object? message_type = freezed,Object? ticketId = freezed,Object? content = freezed,Object? files = freezed,}) {
  return _then(_self.copyWith(
token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,message_type: freezed == message_type ? _self.message_type : message_type // ignore: cast_nullable_to_non_nullable
as String?,ticketId: freezed == ticketId ? _self.ticketId : ticketId // ignore: cast_nullable_to_non_nullable
as int?,content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String?,files: freezed == files ? _self.files : files // ignore: cast_nullable_to_non_nullable
as List<File?>?,
  ));
}

}


/// Adds pattern-matching-related methods to [SendTicketMessageModel].
extension SendTicketMessageModelPatterns on SendTicketMessageModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SendTicketMessageModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SendTicketMessageModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SendTicketMessageModel value)  $default,){
final _that = this;
switch (_that) {
case _SendTicketMessageModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SendTicketMessageModel value)?  $default,){
final _that = this;
switch (_that) {
case _SendTicketMessageModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? token,  String? message_type,  int? ticketId,  String? content, @FileListJsonConverter()  List<File?>? files)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SendTicketMessageModel() when $default != null:
return $default(_that.token,_that.message_type,_that.ticketId,_that.content,_that.files);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? token,  String? message_type,  int? ticketId,  String? content, @FileListJsonConverter()  List<File?>? files)  $default,) {final _that = this;
switch (_that) {
case _SendTicketMessageModel():
return $default(_that.token,_that.message_type,_that.ticketId,_that.content,_that.files);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? token,  String? message_type,  int? ticketId,  String? content, @FileListJsonConverter()  List<File?>? files)?  $default,) {final _that = this;
switch (_that) {
case _SendTicketMessageModel() when $default != null:
return $default(_that.token,_that.message_type,_that.ticketId,_that.content,_that.files);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SendTicketMessageModel implements SendTicketMessageModel {
   _SendTicketMessageModel({this.token = '', this.message_type = '', this.ticketId = 0, this.content = '', @FileListJsonConverter() final  List<File?>? files = const []}): _files = files;
  factory _SendTicketMessageModel.fromJson(Map<String, dynamic> json) => _$SendTicketMessageModelFromJson(json);

@override@JsonKey() final  String? token;
@override@JsonKey() final  String? message_type;
@override@JsonKey() final  int? ticketId;
@override@JsonKey() final  String? content;
 final  List<File?>? _files;
@override@JsonKey()@FileListJsonConverter() List<File?>? get files {
  final value = _files;
  if (value == null) return null;
  if (_files is EqualUnmodifiableListView) return _files;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of SendTicketMessageModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SendTicketMessageModelCopyWith<_SendTicketMessageModel> get copyWith => __$SendTicketMessageModelCopyWithImpl<_SendTicketMessageModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SendTicketMessageModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SendTicketMessageModel&&(identical(other.token, token) || other.token == token)&&(identical(other.message_type, message_type) || other.message_type == message_type)&&(identical(other.ticketId, ticketId) || other.ticketId == ticketId)&&(identical(other.content, content) || other.content == content)&&const DeepCollectionEquality().equals(other._files, _files));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,token,message_type,ticketId,content,const DeepCollectionEquality().hash(_files));

@override
String toString() {
  return 'SendTicketMessageModel(token: $token, message_type: $message_type, ticketId: $ticketId, content: $content, files: $files)';
}


}

/// @nodoc
abstract mixin class _$SendTicketMessageModelCopyWith<$Res> implements $SendTicketMessageModelCopyWith<$Res> {
  factory _$SendTicketMessageModelCopyWith(_SendTicketMessageModel value, $Res Function(_SendTicketMessageModel) _then) = __$SendTicketMessageModelCopyWithImpl;
@override @useResult
$Res call({
 String? token, String? message_type, int? ticketId, String? content,@FileListJsonConverter() List<File?>? files
});




}
/// @nodoc
class __$SendTicketMessageModelCopyWithImpl<$Res>
    implements _$SendTicketMessageModelCopyWith<$Res> {
  __$SendTicketMessageModelCopyWithImpl(this._self, this._then);

  final _SendTicketMessageModel _self;
  final $Res Function(_SendTicketMessageModel) _then;

/// Create a copy of SendTicketMessageModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? token = freezed,Object? message_type = freezed,Object? ticketId = freezed,Object? content = freezed,Object? files = freezed,}) {
  return _then(_SendTicketMessageModel(
token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,message_type: freezed == message_type ? _self.message_type : message_type // ignore: cast_nullable_to_non_nullable
as String?,ticketId: freezed == ticketId ? _self.ticketId : ticketId // ignore: cast_nullable_to_non_nullable
as int?,content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String?,files: freezed == files ? _self._files : files // ignore: cast_nullable_to_non_nullable
as List<File?>?,
  ));
}


}

// dart format on
