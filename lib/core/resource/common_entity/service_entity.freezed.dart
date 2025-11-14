// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ServiceEntity implements DiagnosticableTreeMixin {

 int? get id; int? get user_id; int? get service_id; String? get name; String? get acceptedLanguage; int? get price; String? get notes; bool? get is_active; String? get image; int? get category_id; String? get created_at; String? get updated_at; ServiceErrorEntity? get serviceErrorEntity; Map<String, dynamic>? get category; Map<String, dynamic>? get service; Map<String, dynamic>? get provider; int? get duration_minutes; int? get buffer_minutes;
/// Create a copy of ServiceEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServiceEntityCopyWith<ServiceEntity> get copyWith => _$ServiceEntityCopyWithImpl<ServiceEntity>(this as ServiceEntity, _$identity);

  /// Serializes this ServiceEntity to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ServiceEntity'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('user_id', user_id))..add(DiagnosticsProperty('service_id', service_id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('acceptedLanguage', acceptedLanguage))..add(DiagnosticsProperty('price', price))..add(DiagnosticsProperty('notes', notes))..add(DiagnosticsProperty('is_active', is_active))..add(DiagnosticsProperty('image', image))..add(DiagnosticsProperty('category_id', category_id))..add(DiagnosticsProperty('created_at', created_at))..add(DiagnosticsProperty('updated_at', updated_at))..add(DiagnosticsProperty('serviceErrorEntity', serviceErrorEntity))..add(DiagnosticsProperty('category', category))..add(DiagnosticsProperty('service', service))..add(DiagnosticsProperty('provider', provider))..add(DiagnosticsProperty('duration_minutes', duration_minutes))..add(DiagnosticsProperty('buffer_minutes', buffer_minutes));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServiceEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.user_id, user_id) || other.user_id == user_id)&&(identical(other.service_id, service_id) || other.service_id == service_id)&&(identical(other.name, name) || other.name == name)&&(identical(other.acceptedLanguage, acceptedLanguage) || other.acceptedLanguage == acceptedLanguage)&&(identical(other.price, price) || other.price == price)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.is_active, is_active) || other.is_active == is_active)&&(identical(other.image, image) || other.image == image)&&(identical(other.category_id, category_id) || other.category_id == category_id)&&(identical(other.created_at, created_at) || other.created_at == created_at)&&(identical(other.updated_at, updated_at) || other.updated_at == updated_at)&&(identical(other.serviceErrorEntity, serviceErrorEntity) || other.serviceErrorEntity == serviceErrorEntity)&&const DeepCollectionEquality().equals(other.category, category)&&const DeepCollectionEquality().equals(other.service, service)&&const DeepCollectionEquality().equals(other.provider, provider)&&(identical(other.duration_minutes, duration_minutes) || other.duration_minutes == duration_minutes)&&(identical(other.buffer_minutes, buffer_minutes) || other.buffer_minutes == buffer_minutes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,user_id,service_id,name,acceptedLanguage,price,notes,is_active,image,category_id,created_at,updated_at,serviceErrorEntity,const DeepCollectionEquality().hash(category),const DeepCollectionEquality().hash(service),const DeepCollectionEquality().hash(provider),duration_minutes,buffer_minutes);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ServiceEntity(id: $id, user_id: $user_id, service_id: $service_id, name: $name, acceptedLanguage: $acceptedLanguage, price: $price, notes: $notes, is_active: $is_active, image: $image, category_id: $category_id, created_at: $created_at, updated_at: $updated_at, serviceErrorEntity: $serviceErrorEntity, category: $category, service: $service, provider: $provider, duration_minutes: $duration_minutes, buffer_minutes: $buffer_minutes)';
}


}

/// @nodoc
abstract mixin class $ServiceEntityCopyWith<$Res>  {
  factory $ServiceEntityCopyWith(ServiceEntity value, $Res Function(ServiceEntity) _then) = _$ServiceEntityCopyWithImpl;
@useResult
$Res call({
 int? id, int? user_id, int? service_id, String? name, String? acceptedLanguage, int? price, String? notes, bool? is_active, String? image, int? category_id, String? created_at, String? updated_at, ServiceErrorEntity? serviceErrorEntity, Map<String, dynamic>? category, Map<String, dynamic>? service, Map<String, dynamic>? provider, int? duration_minutes, int? buffer_minutes
});


$ServiceErrorEntityCopyWith<$Res>? get serviceErrorEntity;

}
/// @nodoc
class _$ServiceEntityCopyWithImpl<$Res>
    implements $ServiceEntityCopyWith<$Res> {
  _$ServiceEntityCopyWithImpl(this._self, this._then);

  final ServiceEntity _self;
  final $Res Function(ServiceEntity) _then;

/// Create a copy of ServiceEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? user_id = freezed,Object? service_id = freezed,Object? name = freezed,Object? acceptedLanguage = freezed,Object? price = freezed,Object? notes = freezed,Object? is_active = freezed,Object? image = freezed,Object? category_id = freezed,Object? created_at = freezed,Object? updated_at = freezed,Object? serviceErrorEntity = freezed,Object? category = freezed,Object? service = freezed,Object? provider = freezed,Object? duration_minutes = freezed,Object? buffer_minutes = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,user_id: freezed == user_id ? _self.user_id : user_id // ignore: cast_nullable_to_non_nullable
as int?,service_id: freezed == service_id ? _self.service_id : service_id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,acceptedLanguage: freezed == acceptedLanguage ? _self.acceptedLanguage : acceptedLanguage // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,is_active: freezed == is_active ? _self.is_active : is_active // ignore: cast_nullable_to_non_nullable
as bool?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,category_id: freezed == category_id ? _self.category_id : category_id // ignore: cast_nullable_to_non_nullable
as int?,created_at: freezed == created_at ? _self.created_at : created_at // ignore: cast_nullable_to_non_nullable
as String?,updated_at: freezed == updated_at ? _self.updated_at : updated_at // ignore: cast_nullable_to_non_nullable
as String?,serviceErrorEntity: freezed == serviceErrorEntity ? _self.serviceErrorEntity : serviceErrorEntity // ignore: cast_nullable_to_non_nullable
as ServiceErrorEntity?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,service: freezed == service ? _self.service : service // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,provider: freezed == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,duration_minutes: freezed == duration_minutes ? _self.duration_minutes : duration_minutes // ignore: cast_nullable_to_non_nullable
as int?,buffer_minutes: freezed == buffer_minutes ? _self.buffer_minutes : buffer_minutes // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}
/// Create a copy of ServiceEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ServiceErrorEntityCopyWith<$Res>? get serviceErrorEntity {
    if (_self.serviceErrorEntity == null) {
    return null;
  }

  return $ServiceErrorEntityCopyWith<$Res>(_self.serviceErrorEntity!, (value) {
    return _then(_self.copyWith(serviceErrorEntity: value));
  });
}
}


/// Adds pattern-matching-related methods to [ServiceEntity].
extension ServiceEntityPatterns on ServiceEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ServiceEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ServiceEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ServiceEntity value)  $default,){
final _that = this;
switch (_that) {
case _ServiceEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ServiceEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ServiceEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  int? user_id,  int? service_id,  String? name,  String? acceptedLanguage,  int? price,  String? notes,  bool? is_active,  String? image,  int? category_id,  String? created_at,  String? updated_at,  ServiceErrorEntity? serviceErrorEntity,  Map<String, dynamic>? category,  Map<String, dynamic>? service,  Map<String, dynamic>? provider,  int? duration_minutes,  int? buffer_minutes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ServiceEntity() when $default != null:
return $default(_that.id,_that.user_id,_that.service_id,_that.name,_that.acceptedLanguage,_that.price,_that.notes,_that.is_active,_that.image,_that.category_id,_that.created_at,_that.updated_at,_that.serviceErrorEntity,_that.category,_that.service,_that.provider,_that.duration_minutes,_that.buffer_minutes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  int? user_id,  int? service_id,  String? name,  String? acceptedLanguage,  int? price,  String? notes,  bool? is_active,  String? image,  int? category_id,  String? created_at,  String? updated_at,  ServiceErrorEntity? serviceErrorEntity,  Map<String, dynamic>? category,  Map<String, dynamic>? service,  Map<String, dynamic>? provider,  int? duration_minutes,  int? buffer_minutes)  $default,) {final _that = this;
switch (_that) {
case _ServiceEntity():
return $default(_that.id,_that.user_id,_that.service_id,_that.name,_that.acceptedLanguage,_that.price,_that.notes,_that.is_active,_that.image,_that.category_id,_that.created_at,_that.updated_at,_that.serviceErrorEntity,_that.category,_that.service,_that.provider,_that.duration_minutes,_that.buffer_minutes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  int? user_id,  int? service_id,  String? name,  String? acceptedLanguage,  int? price,  String? notes,  bool? is_active,  String? image,  int? category_id,  String? created_at,  String? updated_at,  ServiceErrorEntity? serviceErrorEntity,  Map<String, dynamic>? category,  Map<String, dynamic>? service,  Map<String, dynamic>? provider,  int? duration_minutes,  int? buffer_minutes)?  $default,) {final _that = this;
switch (_that) {
case _ServiceEntity() when $default != null:
return $default(_that.id,_that.user_id,_that.service_id,_that.name,_that.acceptedLanguage,_that.price,_that.notes,_that.is_active,_that.image,_that.category_id,_that.created_at,_that.updated_at,_that.serviceErrorEntity,_that.category,_that.service,_that.provider,_that.duration_minutes,_that.buffer_minutes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ServiceEntity with DiagnosticableTreeMixin implements ServiceEntity {
  const _ServiceEntity({this.id = 0, this.user_id = 0, this.service_id = 0, this.name = "", this.acceptedLanguage = "", this.price = 0, this.notes = "", this.is_active = false, this.image = "", this.category_id = 0, this.created_at = "", this.updated_at = "", this.serviceErrorEntity = const ServiceErrorEntity(), final  Map<String, dynamic>? category = const {}, final  Map<String, dynamic>? service = const {}, final  Map<String, dynamic>? provider = const {}, this.duration_minutes = 0, this.buffer_minutes = 0}): _category = category,_service = service,_provider = provider;
  factory _ServiceEntity.fromJson(Map<String, dynamic> json) => _$ServiceEntityFromJson(json);

@override@JsonKey() final  int? id;
@override@JsonKey() final  int? user_id;
@override@JsonKey() final  int? service_id;
@override@JsonKey() final  String? name;
@override@JsonKey() final  String? acceptedLanguage;
@override@JsonKey() final  int? price;
@override@JsonKey() final  String? notes;
@override@JsonKey() final  bool? is_active;
@override@JsonKey() final  String? image;
@override@JsonKey() final  int? category_id;
@override@JsonKey() final  String? created_at;
@override@JsonKey() final  String? updated_at;
@override@JsonKey() final  ServiceErrorEntity? serviceErrorEntity;
 final  Map<String, dynamic>? _category;
@override@JsonKey() Map<String, dynamic>? get category {
  final value = _category;
  if (value == null) return null;
  if (_category is EqualUnmodifiableMapView) return _category;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

 final  Map<String, dynamic>? _service;
@override@JsonKey() Map<String, dynamic>? get service {
  final value = _service;
  if (value == null) return null;
  if (_service is EqualUnmodifiableMapView) return _service;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

 final  Map<String, dynamic>? _provider;
@override@JsonKey() Map<String, dynamic>? get provider {
  final value = _provider;
  if (value == null) return null;
  if (_provider is EqualUnmodifiableMapView) return _provider;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override@JsonKey() final  int? duration_minutes;
@override@JsonKey() final  int? buffer_minutes;

/// Create a copy of ServiceEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ServiceEntityCopyWith<_ServiceEntity> get copyWith => __$ServiceEntityCopyWithImpl<_ServiceEntity>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ServiceEntityToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'ServiceEntity'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('user_id', user_id))..add(DiagnosticsProperty('service_id', service_id))..add(DiagnosticsProperty('name', name))..add(DiagnosticsProperty('acceptedLanguage', acceptedLanguage))..add(DiagnosticsProperty('price', price))..add(DiagnosticsProperty('notes', notes))..add(DiagnosticsProperty('is_active', is_active))..add(DiagnosticsProperty('image', image))..add(DiagnosticsProperty('category_id', category_id))..add(DiagnosticsProperty('created_at', created_at))..add(DiagnosticsProperty('updated_at', updated_at))..add(DiagnosticsProperty('serviceErrorEntity', serviceErrorEntity))..add(DiagnosticsProperty('category', category))..add(DiagnosticsProperty('service', service))..add(DiagnosticsProperty('provider', provider))..add(DiagnosticsProperty('duration_minutes', duration_minutes))..add(DiagnosticsProperty('buffer_minutes', buffer_minutes));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ServiceEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.user_id, user_id) || other.user_id == user_id)&&(identical(other.service_id, service_id) || other.service_id == service_id)&&(identical(other.name, name) || other.name == name)&&(identical(other.acceptedLanguage, acceptedLanguage) || other.acceptedLanguage == acceptedLanguage)&&(identical(other.price, price) || other.price == price)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.is_active, is_active) || other.is_active == is_active)&&(identical(other.image, image) || other.image == image)&&(identical(other.category_id, category_id) || other.category_id == category_id)&&(identical(other.created_at, created_at) || other.created_at == created_at)&&(identical(other.updated_at, updated_at) || other.updated_at == updated_at)&&(identical(other.serviceErrorEntity, serviceErrorEntity) || other.serviceErrorEntity == serviceErrorEntity)&&const DeepCollectionEquality().equals(other._category, _category)&&const DeepCollectionEquality().equals(other._service, _service)&&const DeepCollectionEquality().equals(other._provider, _provider)&&(identical(other.duration_minutes, duration_minutes) || other.duration_minutes == duration_minutes)&&(identical(other.buffer_minutes, buffer_minutes) || other.buffer_minutes == buffer_minutes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,user_id,service_id,name,acceptedLanguage,price,notes,is_active,image,category_id,created_at,updated_at,serviceErrorEntity,const DeepCollectionEquality().hash(_category),const DeepCollectionEquality().hash(_service),const DeepCollectionEquality().hash(_provider),duration_minutes,buffer_minutes);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'ServiceEntity(id: $id, user_id: $user_id, service_id: $service_id, name: $name, acceptedLanguage: $acceptedLanguage, price: $price, notes: $notes, is_active: $is_active, image: $image, category_id: $category_id, created_at: $created_at, updated_at: $updated_at, serviceErrorEntity: $serviceErrorEntity, category: $category, service: $service, provider: $provider, duration_minutes: $duration_minutes, buffer_minutes: $buffer_minutes)';
}


}

/// @nodoc
abstract mixin class _$ServiceEntityCopyWith<$Res> implements $ServiceEntityCopyWith<$Res> {
  factory _$ServiceEntityCopyWith(_ServiceEntity value, $Res Function(_ServiceEntity) _then) = __$ServiceEntityCopyWithImpl;
@override @useResult
$Res call({
 int? id, int? user_id, int? service_id, String? name, String? acceptedLanguage, int? price, String? notes, bool? is_active, String? image, int? category_id, String? created_at, String? updated_at, ServiceErrorEntity? serviceErrorEntity, Map<String, dynamic>? category, Map<String, dynamic>? service, Map<String, dynamic>? provider, int? duration_minutes, int? buffer_minutes
});


@override $ServiceErrorEntityCopyWith<$Res>? get serviceErrorEntity;

}
/// @nodoc
class __$ServiceEntityCopyWithImpl<$Res>
    implements _$ServiceEntityCopyWith<$Res> {
  __$ServiceEntityCopyWithImpl(this._self, this._then);

  final _ServiceEntity _self;
  final $Res Function(_ServiceEntity) _then;

/// Create a copy of ServiceEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? user_id = freezed,Object? service_id = freezed,Object? name = freezed,Object? acceptedLanguage = freezed,Object? price = freezed,Object? notes = freezed,Object? is_active = freezed,Object? image = freezed,Object? category_id = freezed,Object? created_at = freezed,Object? updated_at = freezed,Object? serviceErrorEntity = freezed,Object? category = freezed,Object? service = freezed,Object? provider = freezed,Object? duration_minutes = freezed,Object? buffer_minutes = freezed,}) {
  return _then(_ServiceEntity(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,user_id: freezed == user_id ? _self.user_id : user_id // ignore: cast_nullable_to_non_nullable
as int?,service_id: freezed == service_id ? _self.service_id : service_id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,acceptedLanguage: freezed == acceptedLanguage ? _self.acceptedLanguage : acceptedLanguage // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,is_active: freezed == is_active ? _self.is_active : is_active // ignore: cast_nullable_to_non_nullable
as bool?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,category_id: freezed == category_id ? _self.category_id : category_id // ignore: cast_nullable_to_non_nullable
as int?,created_at: freezed == created_at ? _self.created_at : created_at // ignore: cast_nullable_to_non_nullable
as String?,updated_at: freezed == updated_at ? _self.updated_at : updated_at // ignore: cast_nullable_to_non_nullable
as String?,serviceErrorEntity: freezed == serviceErrorEntity ? _self.serviceErrorEntity : serviceErrorEntity // ignore: cast_nullable_to_non_nullable
as ServiceErrorEntity?,category: freezed == category ? _self._category : category // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,service: freezed == service ? _self._service : service // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,provider: freezed == provider ? _self._provider : provider // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,duration_minutes: freezed == duration_minutes ? _self.duration_minutes : duration_minutes // ignore: cast_nullable_to_non_nullable
as int?,buffer_minutes: freezed == buffer_minutes ? _self.buffer_minutes : buffer_minutes // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of ServiceEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ServiceErrorEntityCopyWith<$Res>? get serviceErrorEntity {
    if (_self.serviceErrorEntity == null) {
    return null;
  }

  return $ServiceErrorEntityCopyWith<$Res>(_self.serviceErrorEntity!, (value) {
    return _then(_self.copyWith(serviceErrorEntity: value));
  });
}
}

// dart format on
