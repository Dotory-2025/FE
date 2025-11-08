// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'direct_message_detail_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DirectMessageDetailResponse {

 int get id; String? get roomName; String get profileImage; String get nickName; String get dormitory; List<String> get tags; List<DirectChatMessage> get messages;
/// Create a copy of DirectMessageDetailResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DirectMessageDetailResponseCopyWith<DirectMessageDetailResponse> get copyWith => _$DirectMessageDetailResponseCopyWithImpl<DirectMessageDetailResponse>(this as DirectMessageDetailResponse, _$identity);

  /// Serializes this DirectMessageDetailResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DirectMessageDetailResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.roomName, roomName) || other.roomName == roomName)&&(identical(other.profileImage, profileImage) || other.profileImage == profileImage)&&(identical(other.nickName, nickName) || other.nickName == nickName)&&(identical(other.dormitory, dormitory) || other.dormitory == dormitory)&&const DeepCollectionEquality().equals(other.tags, tags)&&const DeepCollectionEquality().equals(other.messages, messages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,roomName,profileImage,nickName,dormitory,const DeepCollectionEquality().hash(tags),const DeepCollectionEquality().hash(messages));

@override
String toString() {
  return 'DirectMessageDetailResponse(id: $id, roomName: $roomName, profileImage: $profileImage, nickName: $nickName, dormitory: $dormitory, tags: $tags, messages: $messages)';
}


}

/// @nodoc
abstract mixin class $DirectMessageDetailResponseCopyWith<$Res>  {
  factory $DirectMessageDetailResponseCopyWith(DirectMessageDetailResponse value, $Res Function(DirectMessageDetailResponse) _then) = _$DirectMessageDetailResponseCopyWithImpl;
@useResult
$Res call({
 int id, String? roomName, String profileImage, String nickName, String dormitory, List<String> tags, List<DirectChatMessage> messages
});




}
/// @nodoc
class _$DirectMessageDetailResponseCopyWithImpl<$Res>
    implements $DirectMessageDetailResponseCopyWith<$Res> {
  _$DirectMessageDetailResponseCopyWithImpl(this._self, this._then);

  final DirectMessageDetailResponse _self;
  final $Res Function(DirectMessageDetailResponse) _then;

/// Create a copy of DirectMessageDetailResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? roomName = freezed,Object? profileImage = null,Object? nickName = null,Object? dormitory = null,Object? tags = null,Object? messages = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,roomName: freezed == roomName ? _self.roomName : roomName // ignore: cast_nullable_to_non_nullable
as String?,profileImage: null == profileImage ? _self.profileImage : profileImage // ignore: cast_nullable_to_non_nullable
as String,nickName: null == nickName ? _self.nickName : nickName // ignore: cast_nullable_to_non_nullable
as String,dormitory: null == dormitory ? _self.dormitory : dormitory // ignore: cast_nullable_to_non_nullable
as String,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,messages: null == messages ? _self.messages : messages // ignore: cast_nullable_to_non_nullable
as List<DirectChatMessage>,
  ));
}

}


/// Adds pattern-matching-related methods to [DirectMessageDetailResponse].
extension DirectMessageDetailResponsePatterns on DirectMessageDetailResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DirectMessageDetailResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DirectMessageDetailResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DirectMessageDetailResponse value)  $default,){
final _that = this;
switch (_that) {
case _DirectMessageDetailResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DirectMessageDetailResponse value)?  $default,){
final _that = this;
switch (_that) {
case _DirectMessageDetailResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String? roomName,  String profileImage,  String nickName,  String dormitory,  List<String> tags,  List<DirectChatMessage> messages)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DirectMessageDetailResponse() when $default != null:
return $default(_that.id,_that.roomName,_that.profileImage,_that.nickName,_that.dormitory,_that.tags,_that.messages);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String? roomName,  String profileImage,  String nickName,  String dormitory,  List<String> tags,  List<DirectChatMessage> messages)  $default,) {final _that = this;
switch (_that) {
case _DirectMessageDetailResponse():
return $default(_that.id,_that.roomName,_that.profileImage,_that.nickName,_that.dormitory,_that.tags,_that.messages);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String? roomName,  String profileImage,  String nickName,  String dormitory,  List<String> tags,  List<DirectChatMessage> messages)?  $default,) {final _that = this;
switch (_that) {
case _DirectMessageDetailResponse() when $default != null:
return $default(_that.id,_that.roomName,_that.profileImage,_that.nickName,_that.dormitory,_that.tags,_that.messages);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DirectMessageDetailResponse implements DirectMessageDetailResponse {
  const _DirectMessageDetailResponse({required this.id, this.roomName, required this.profileImage, required this.nickName, required this.dormitory, required final  List<String> tags, required final  List<DirectChatMessage> messages}): _tags = tags,_messages = messages;
  factory _DirectMessageDetailResponse.fromJson(Map<String, dynamic> json) => _$DirectMessageDetailResponseFromJson(json);

@override final  int id;
@override final  String? roomName;
@override final  String profileImage;
@override final  String nickName;
@override final  String dormitory;
 final  List<String> _tags;
@override List<String> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}

 final  List<DirectChatMessage> _messages;
@override List<DirectChatMessage> get messages {
  if (_messages is EqualUnmodifiableListView) return _messages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_messages);
}


/// Create a copy of DirectMessageDetailResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DirectMessageDetailResponseCopyWith<_DirectMessageDetailResponse> get copyWith => __$DirectMessageDetailResponseCopyWithImpl<_DirectMessageDetailResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DirectMessageDetailResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DirectMessageDetailResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.roomName, roomName) || other.roomName == roomName)&&(identical(other.profileImage, profileImage) || other.profileImage == profileImage)&&(identical(other.nickName, nickName) || other.nickName == nickName)&&(identical(other.dormitory, dormitory) || other.dormitory == dormitory)&&const DeepCollectionEquality().equals(other._tags, _tags)&&const DeepCollectionEquality().equals(other._messages, _messages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,roomName,profileImage,nickName,dormitory,const DeepCollectionEquality().hash(_tags),const DeepCollectionEquality().hash(_messages));

@override
String toString() {
  return 'DirectMessageDetailResponse(id: $id, roomName: $roomName, profileImage: $profileImage, nickName: $nickName, dormitory: $dormitory, tags: $tags, messages: $messages)';
}


}

/// @nodoc
abstract mixin class _$DirectMessageDetailResponseCopyWith<$Res> implements $DirectMessageDetailResponseCopyWith<$Res> {
  factory _$DirectMessageDetailResponseCopyWith(_DirectMessageDetailResponse value, $Res Function(_DirectMessageDetailResponse) _then) = __$DirectMessageDetailResponseCopyWithImpl;
@override @useResult
$Res call({
 int id, String? roomName, String profileImage, String nickName, String dormitory, List<String> tags, List<DirectChatMessage> messages
});




}
/// @nodoc
class __$DirectMessageDetailResponseCopyWithImpl<$Res>
    implements _$DirectMessageDetailResponseCopyWith<$Res> {
  __$DirectMessageDetailResponseCopyWithImpl(this._self, this._then);

  final _DirectMessageDetailResponse _self;
  final $Res Function(_DirectMessageDetailResponse) _then;

/// Create a copy of DirectMessageDetailResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? roomName = freezed,Object? profileImage = null,Object? nickName = null,Object? dormitory = null,Object? tags = null,Object? messages = null,}) {
  return _then(_DirectMessageDetailResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,roomName: freezed == roomName ? _self.roomName : roomName // ignore: cast_nullable_to_non_nullable
as String?,profileImage: null == profileImage ? _self.profileImage : profileImage // ignore: cast_nullable_to_non_nullable
as String,nickName: null == nickName ? _self.nickName : nickName // ignore: cast_nullable_to_non_nullable
as String,dormitory: null == dormitory ? _self.dormitory : dormitory // ignore: cast_nullable_to_non_nullable
as String,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,messages: null == messages ? _self._messages : messages // ignore: cast_nullable_to_non_nullable
as List<DirectChatMessage>,
  ));
}


}


/// @nodoc
mixin _$DirectChatMessage {

 int get id; SenderType get senderType; MessageType get type; String? get imageUrl; String? get content; String? get houseName; String get timeStamp;
/// Create a copy of DirectChatMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DirectChatMessageCopyWith<DirectChatMessage> get copyWith => _$DirectChatMessageCopyWithImpl<DirectChatMessage>(this as DirectChatMessage, _$identity);

  /// Serializes this DirectChatMessage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DirectChatMessage&&(identical(other.id, id) || other.id == id)&&(identical(other.senderType, senderType) || other.senderType == senderType)&&(identical(other.type, type) || other.type == type)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.content, content) || other.content == content)&&(identical(other.houseName, houseName) || other.houseName == houseName)&&(identical(other.timeStamp, timeStamp) || other.timeStamp == timeStamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,senderType,type,imageUrl,content,houseName,timeStamp);

@override
String toString() {
  return 'DirectChatMessage(id: $id, senderType: $senderType, type: $type, imageUrl: $imageUrl, content: $content, houseName: $houseName, timeStamp: $timeStamp)';
}


}

/// @nodoc
abstract mixin class $DirectChatMessageCopyWith<$Res>  {
  factory $DirectChatMessageCopyWith(DirectChatMessage value, $Res Function(DirectChatMessage) _then) = _$DirectChatMessageCopyWithImpl;
@useResult
$Res call({
 int id, SenderType senderType, MessageType type, String? imageUrl, String? content, String? houseName, String timeStamp
});




}
/// @nodoc
class _$DirectChatMessageCopyWithImpl<$Res>
    implements $DirectChatMessageCopyWith<$Res> {
  _$DirectChatMessageCopyWithImpl(this._self, this._then);

  final DirectChatMessage _self;
  final $Res Function(DirectChatMessage) _then;

/// Create a copy of DirectChatMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? senderType = null,Object? type = null,Object? imageUrl = freezed,Object? content = freezed,Object? houseName = freezed,Object? timeStamp = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,senderType: null == senderType ? _self.senderType : senderType // ignore: cast_nullable_to_non_nullable
as SenderType,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as MessageType,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String?,houseName: freezed == houseName ? _self.houseName : houseName // ignore: cast_nullable_to_non_nullable
as String?,timeStamp: null == timeStamp ? _self.timeStamp : timeStamp // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [DirectChatMessage].
extension DirectChatMessagePatterns on DirectChatMessage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DirectChatMessage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DirectChatMessage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DirectChatMessage value)  $default,){
final _that = this;
switch (_that) {
case _DirectChatMessage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DirectChatMessage value)?  $default,){
final _that = this;
switch (_that) {
case _DirectChatMessage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  SenderType senderType,  MessageType type,  String? imageUrl,  String? content,  String? houseName,  String timeStamp)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DirectChatMessage() when $default != null:
return $default(_that.id,_that.senderType,_that.type,_that.imageUrl,_that.content,_that.houseName,_that.timeStamp);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  SenderType senderType,  MessageType type,  String? imageUrl,  String? content,  String? houseName,  String timeStamp)  $default,) {final _that = this;
switch (_that) {
case _DirectChatMessage():
return $default(_that.id,_that.senderType,_that.type,_that.imageUrl,_that.content,_that.houseName,_that.timeStamp);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  SenderType senderType,  MessageType type,  String? imageUrl,  String? content,  String? houseName,  String timeStamp)?  $default,) {final _that = this;
switch (_that) {
case _DirectChatMessage() when $default != null:
return $default(_that.id,_that.senderType,_that.type,_that.imageUrl,_that.content,_that.houseName,_that.timeStamp);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DirectChatMessage implements DirectChatMessage {
  const _DirectChatMessage({required this.id, required this.senderType, required this.type, this.imageUrl, this.content, this.houseName, required this.timeStamp});
  factory _DirectChatMessage.fromJson(Map<String, dynamic> json) => _$DirectChatMessageFromJson(json);

@override final  int id;
@override final  SenderType senderType;
@override final  MessageType type;
@override final  String? imageUrl;
@override final  String? content;
@override final  String? houseName;
@override final  String timeStamp;

/// Create a copy of DirectChatMessage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DirectChatMessageCopyWith<_DirectChatMessage> get copyWith => __$DirectChatMessageCopyWithImpl<_DirectChatMessage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DirectChatMessageToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DirectChatMessage&&(identical(other.id, id) || other.id == id)&&(identical(other.senderType, senderType) || other.senderType == senderType)&&(identical(other.type, type) || other.type == type)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.content, content) || other.content == content)&&(identical(other.houseName, houseName) || other.houseName == houseName)&&(identical(other.timeStamp, timeStamp) || other.timeStamp == timeStamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,senderType,type,imageUrl,content,houseName,timeStamp);

@override
String toString() {
  return 'DirectChatMessage(id: $id, senderType: $senderType, type: $type, imageUrl: $imageUrl, content: $content, houseName: $houseName, timeStamp: $timeStamp)';
}


}

/// @nodoc
abstract mixin class _$DirectChatMessageCopyWith<$Res> implements $DirectChatMessageCopyWith<$Res> {
  factory _$DirectChatMessageCopyWith(_DirectChatMessage value, $Res Function(_DirectChatMessage) _then) = __$DirectChatMessageCopyWithImpl;
@override @useResult
$Res call({
 int id, SenderType senderType, MessageType type, String? imageUrl, String? content, String? houseName, String timeStamp
});




}
/// @nodoc
class __$DirectChatMessageCopyWithImpl<$Res>
    implements _$DirectChatMessageCopyWith<$Res> {
  __$DirectChatMessageCopyWithImpl(this._self, this._then);

  final _DirectChatMessage _self;
  final $Res Function(_DirectChatMessage) _then;

/// Create a copy of DirectChatMessage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? senderType = null,Object? type = null,Object? imageUrl = freezed,Object? content = freezed,Object? houseName = freezed,Object? timeStamp = null,}) {
  return _then(_DirectChatMessage(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,senderType: null == senderType ? _self.senderType : senderType // ignore: cast_nullable_to_non_nullable
as SenderType,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as MessageType,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String?,houseName: freezed == houseName ? _self.houseName : houseName // ignore: cast_nullable_to_non_nullable
as String?,timeStamp: null == timeStamp ? _self.timeStamp : timeStamp // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
