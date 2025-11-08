// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'direct_message_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DirectMessageResponse {

 int get id; String get profileImage; String get nickName; String get lastMessage; String get timeStamp; bool get isRead;
/// Create a copy of DirectMessageResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DirectMessageResponseCopyWith<DirectMessageResponse> get copyWith => _$DirectMessageResponseCopyWithImpl<DirectMessageResponse>(this as DirectMessageResponse, _$identity);

  /// Serializes this DirectMessageResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DirectMessageResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.profileImage, profileImage) || other.profileImage == profileImage)&&(identical(other.nickName, nickName) || other.nickName == nickName)&&(identical(other.lastMessage, lastMessage) || other.lastMessage == lastMessage)&&(identical(other.timeStamp, timeStamp) || other.timeStamp == timeStamp)&&(identical(other.isRead, isRead) || other.isRead == isRead));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,profileImage,nickName,lastMessage,timeStamp,isRead);

@override
String toString() {
  return 'DirectMessageResponse(id: $id, profileImage: $profileImage, nickName: $nickName, lastMessage: $lastMessage, timeStamp: $timeStamp, isRead: $isRead)';
}


}

/// @nodoc
abstract mixin class $DirectMessageResponseCopyWith<$Res>  {
  factory $DirectMessageResponseCopyWith(DirectMessageResponse value, $Res Function(DirectMessageResponse) _then) = _$DirectMessageResponseCopyWithImpl;
@useResult
$Res call({
 int id, String profileImage, String nickName, String lastMessage, String timeStamp, bool isRead
});




}
/// @nodoc
class _$DirectMessageResponseCopyWithImpl<$Res>
    implements $DirectMessageResponseCopyWith<$Res> {
  _$DirectMessageResponseCopyWithImpl(this._self, this._then);

  final DirectMessageResponse _self;
  final $Res Function(DirectMessageResponse) _then;

/// Create a copy of DirectMessageResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? profileImage = null,Object? nickName = null,Object? lastMessage = null,Object? timeStamp = null,Object? isRead = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,profileImage: null == profileImage ? _self.profileImage : profileImage // ignore: cast_nullable_to_non_nullable
as String,nickName: null == nickName ? _self.nickName : nickName // ignore: cast_nullable_to_non_nullable
as String,lastMessage: null == lastMessage ? _self.lastMessage : lastMessage // ignore: cast_nullable_to_non_nullable
as String,timeStamp: null == timeStamp ? _self.timeStamp : timeStamp // ignore: cast_nullable_to_non_nullable
as String,isRead: null == isRead ? _self.isRead : isRead // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [DirectMessageResponse].
extension DirectMessageResponsePatterns on DirectMessageResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DirectMessageResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DirectMessageResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DirectMessageResponse value)  $default,){
final _that = this;
switch (_that) {
case _DirectMessageResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DirectMessageResponse value)?  $default,){
final _that = this;
switch (_that) {
case _DirectMessageResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String profileImage,  String nickName,  String lastMessage,  String timeStamp,  bool isRead)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DirectMessageResponse() when $default != null:
return $default(_that.id,_that.profileImage,_that.nickName,_that.lastMessage,_that.timeStamp,_that.isRead);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String profileImage,  String nickName,  String lastMessage,  String timeStamp,  bool isRead)  $default,) {final _that = this;
switch (_that) {
case _DirectMessageResponse():
return $default(_that.id,_that.profileImage,_that.nickName,_that.lastMessage,_that.timeStamp,_that.isRead);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String profileImage,  String nickName,  String lastMessage,  String timeStamp,  bool isRead)?  $default,) {final _that = this;
switch (_that) {
case _DirectMessageResponse() when $default != null:
return $default(_that.id,_that.profileImage,_that.nickName,_that.lastMessage,_that.timeStamp,_that.isRead);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DirectMessageResponse implements DirectMessageResponse {
  const _DirectMessageResponse({required this.id, required this.profileImage, required this.nickName, required this.lastMessage, required this.timeStamp, required this.isRead});
  factory _DirectMessageResponse.fromJson(Map<String, dynamic> json) => _$DirectMessageResponseFromJson(json);

@override final  int id;
@override final  String profileImage;
@override final  String nickName;
@override final  String lastMessage;
@override final  String timeStamp;
@override final  bool isRead;

/// Create a copy of DirectMessageResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DirectMessageResponseCopyWith<_DirectMessageResponse> get copyWith => __$DirectMessageResponseCopyWithImpl<_DirectMessageResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DirectMessageResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DirectMessageResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.profileImage, profileImage) || other.profileImage == profileImage)&&(identical(other.nickName, nickName) || other.nickName == nickName)&&(identical(other.lastMessage, lastMessage) || other.lastMessage == lastMessage)&&(identical(other.timeStamp, timeStamp) || other.timeStamp == timeStamp)&&(identical(other.isRead, isRead) || other.isRead == isRead));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,profileImage,nickName,lastMessage,timeStamp,isRead);

@override
String toString() {
  return 'DirectMessageResponse(id: $id, profileImage: $profileImage, nickName: $nickName, lastMessage: $lastMessage, timeStamp: $timeStamp, isRead: $isRead)';
}


}

/// @nodoc
abstract mixin class _$DirectMessageResponseCopyWith<$Res> implements $DirectMessageResponseCopyWith<$Res> {
  factory _$DirectMessageResponseCopyWith(_DirectMessageResponse value, $Res Function(_DirectMessageResponse) _then) = __$DirectMessageResponseCopyWithImpl;
@override @useResult
$Res call({
 int id, String profileImage, String nickName, String lastMessage, String timeStamp, bool isRead
});




}
/// @nodoc
class __$DirectMessageResponseCopyWithImpl<$Res>
    implements _$DirectMessageResponseCopyWith<$Res> {
  __$DirectMessageResponseCopyWithImpl(this._self, this._then);

  final _DirectMessageResponse _self;
  final $Res Function(_DirectMessageResponse) _then;

/// Create a copy of DirectMessageResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? profileImage = null,Object? nickName = null,Object? lastMessage = null,Object? timeStamp = null,Object? isRead = null,}) {
  return _then(_DirectMessageResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,profileImage: null == profileImage ? _self.profileImage : profileImage // ignore: cast_nullable_to_non_nullable
as String,nickName: null == nickName ? _self.nickName : nickName // ignore: cast_nullable_to_non_nullable
as String,lastMessage: null == lastMessage ? _self.lastMessage : lastMessage // ignore: cast_nullable_to_non_nullable
as String,timeStamp: null == timeStamp ? _self.timeStamp : timeStamp // ignore: cast_nullable_to_non_nullable
as String,isRead: null == isRead ? _self.isRead : isRead // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
