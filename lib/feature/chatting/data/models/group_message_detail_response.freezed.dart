// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group_message_detail_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GroupMessageDetailResponse {

 int get id; String get roomName; String get profileImage; String get dormitory; List<String> get tags; List<GroupChatMessage> get messages;
/// Create a copy of GroupMessageDetailResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GroupMessageDetailResponseCopyWith<GroupMessageDetailResponse> get copyWith => _$GroupMessageDetailResponseCopyWithImpl<GroupMessageDetailResponse>(this as GroupMessageDetailResponse, _$identity);

  /// Serializes this GroupMessageDetailResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GroupMessageDetailResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.roomName, roomName) || other.roomName == roomName)&&(identical(other.profileImage, profileImage) || other.profileImage == profileImage)&&(identical(other.dormitory, dormitory) || other.dormitory == dormitory)&&const DeepCollectionEquality().equals(other.tags, tags)&&const DeepCollectionEquality().equals(other.messages, messages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,roomName,profileImage,dormitory,const DeepCollectionEquality().hash(tags),const DeepCollectionEquality().hash(messages));

@override
String toString() {
  return 'GroupMessageDetailResponse(id: $id, roomName: $roomName, profileImage: $profileImage, dormitory: $dormitory, tags: $tags, messages: $messages)';
}


}

/// @nodoc
abstract mixin class $GroupMessageDetailResponseCopyWith<$Res>  {
  factory $GroupMessageDetailResponseCopyWith(GroupMessageDetailResponse value, $Res Function(GroupMessageDetailResponse) _then) = _$GroupMessageDetailResponseCopyWithImpl;
@useResult
$Res call({
 int id, String roomName, String profileImage, String dormitory, List<String> tags, List<GroupChatMessage> messages
});




}
/// @nodoc
class _$GroupMessageDetailResponseCopyWithImpl<$Res>
    implements $GroupMessageDetailResponseCopyWith<$Res> {
  _$GroupMessageDetailResponseCopyWithImpl(this._self, this._then);

  final GroupMessageDetailResponse _self;
  final $Res Function(GroupMessageDetailResponse) _then;

/// Create a copy of GroupMessageDetailResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? roomName = null,Object? profileImage = null,Object? dormitory = null,Object? tags = null,Object? messages = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,roomName: null == roomName ? _self.roomName : roomName // ignore: cast_nullable_to_non_nullable
as String,profileImage: null == profileImage ? _self.profileImage : profileImage // ignore: cast_nullable_to_non_nullable
as String,dormitory: null == dormitory ? _self.dormitory : dormitory // ignore: cast_nullable_to_non_nullable
as String,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,messages: null == messages ? _self.messages : messages // ignore: cast_nullable_to_non_nullable
as List<GroupChatMessage>,
  ));
}

}


/// Adds pattern-matching-related methods to [GroupMessageDetailResponse].
extension GroupMessageDetailResponsePatterns on GroupMessageDetailResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GroupMessageDetailResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GroupMessageDetailResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GroupMessageDetailResponse value)  $default,){
final _that = this;
switch (_that) {
case _GroupMessageDetailResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GroupMessageDetailResponse value)?  $default,){
final _that = this;
switch (_that) {
case _GroupMessageDetailResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String roomName,  String profileImage,  String dormitory,  List<String> tags,  List<GroupChatMessage> messages)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GroupMessageDetailResponse() when $default != null:
return $default(_that.id,_that.roomName,_that.profileImage,_that.dormitory,_that.tags,_that.messages);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String roomName,  String profileImage,  String dormitory,  List<String> tags,  List<GroupChatMessage> messages)  $default,) {final _that = this;
switch (_that) {
case _GroupMessageDetailResponse():
return $default(_that.id,_that.roomName,_that.profileImage,_that.dormitory,_that.tags,_that.messages);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String roomName,  String profileImage,  String dormitory,  List<String> tags,  List<GroupChatMessage> messages)?  $default,) {final _that = this;
switch (_that) {
case _GroupMessageDetailResponse() when $default != null:
return $default(_that.id,_that.roomName,_that.profileImage,_that.dormitory,_that.tags,_that.messages);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GroupMessageDetailResponse implements GroupMessageDetailResponse {
  const _GroupMessageDetailResponse({required this.id, required this.roomName, required this.profileImage, required this.dormitory, required final  List<String> tags, required final  List<GroupChatMessage> messages}): _tags = tags,_messages = messages;
  factory _GroupMessageDetailResponse.fromJson(Map<String, dynamic> json) => _$GroupMessageDetailResponseFromJson(json);

@override final  int id;
@override final  String roomName;
@override final  String profileImage;
@override final  String dormitory;
 final  List<String> _tags;
@override List<String> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}

 final  List<GroupChatMessage> _messages;
@override List<GroupChatMessage> get messages {
  if (_messages is EqualUnmodifiableListView) return _messages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_messages);
}


/// Create a copy of GroupMessageDetailResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GroupMessageDetailResponseCopyWith<_GroupMessageDetailResponse> get copyWith => __$GroupMessageDetailResponseCopyWithImpl<_GroupMessageDetailResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GroupMessageDetailResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GroupMessageDetailResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.roomName, roomName) || other.roomName == roomName)&&(identical(other.profileImage, profileImage) || other.profileImage == profileImage)&&(identical(other.dormitory, dormitory) || other.dormitory == dormitory)&&const DeepCollectionEquality().equals(other._tags, _tags)&&const DeepCollectionEquality().equals(other._messages, _messages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,roomName,profileImage,dormitory,const DeepCollectionEquality().hash(_tags),const DeepCollectionEquality().hash(_messages));

@override
String toString() {
  return 'GroupMessageDetailResponse(id: $id, roomName: $roomName, profileImage: $profileImage, dormitory: $dormitory, tags: $tags, messages: $messages)';
}


}

/// @nodoc
abstract mixin class _$GroupMessageDetailResponseCopyWith<$Res> implements $GroupMessageDetailResponseCopyWith<$Res> {
  factory _$GroupMessageDetailResponseCopyWith(_GroupMessageDetailResponse value, $Res Function(_GroupMessageDetailResponse) _then) = __$GroupMessageDetailResponseCopyWithImpl;
@override @useResult
$Res call({
 int id, String roomName, String profileImage, String dormitory, List<String> tags, List<GroupChatMessage> messages
});




}
/// @nodoc
class __$GroupMessageDetailResponseCopyWithImpl<$Res>
    implements _$GroupMessageDetailResponseCopyWith<$Res> {
  __$GroupMessageDetailResponseCopyWithImpl(this._self, this._then);

  final _GroupMessageDetailResponse _self;
  final $Res Function(_GroupMessageDetailResponse) _then;

/// Create a copy of GroupMessageDetailResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? roomName = null,Object? profileImage = null,Object? dormitory = null,Object? tags = null,Object? messages = null,}) {
  return _then(_GroupMessageDetailResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,roomName: null == roomName ? _self.roomName : roomName // ignore: cast_nullable_to_non_nullable
as String,profileImage: null == profileImage ? _self.profileImage : profileImage // ignore: cast_nullable_to_non_nullable
as String,dormitory: null == dormitory ? _self.dormitory : dormitory // ignore: cast_nullable_to_non_nullable
as String,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,messages: null == messages ? _self._messages : messages // ignore: cast_nullable_to_non_nullable
as List<GroupChatMessage>,
  ));
}


}


/// @nodoc
mixin _$GroupChatMessage {

 int get id; dynamic get nickName; dynamic get profileImage; SenderType get senderType; MessageType get type; String? get imageUrl; String? get content; String get timeStamp;
/// Create a copy of GroupChatMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GroupChatMessageCopyWith<GroupChatMessage> get copyWith => _$GroupChatMessageCopyWithImpl<GroupChatMessage>(this as GroupChatMessage, _$identity);

  /// Serializes this GroupChatMessage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GroupChatMessage&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.nickName, nickName)&&const DeepCollectionEquality().equals(other.profileImage, profileImage)&&(identical(other.senderType, senderType) || other.senderType == senderType)&&(identical(other.type, type) || other.type == type)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.content, content) || other.content == content)&&(identical(other.timeStamp, timeStamp) || other.timeStamp == timeStamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(nickName),const DeepCollectionEquality().hash(profileImage),senderType,type,imageUrl,content,timeStamp);

@override
String toString() {
  return 'GroupChatMessage(id: $id, nickName: $nickName, profileImage: $profileImage, senderType: $senderType, type: $type, imageUrl: $imageUrl, content: $content, timeStamp: $timeStamp)';
}


}

/// @nodoc
abstract mixin class $GroupChatMessageCopyWith<$Res>  {
  factory $GroupChatMessageCopyWith(GroupChatMessage value, $Res Function(GroupChatMessage) _then) = _$GroupChatMessageCopyWithImpl;
@useResult
$Res call({
 int id, dynamic nickName, dynamic profileImage, SenderType senderType, MessageType type, String? imageUrl, String? content, String timeStamp
});




}
/// @nodoc
class _$GroupChatMessageCopyWithImpl<$Res>
    implements $GroupChatMessageCopyWith<$Res> {
  _$GroupChatMessageCopyWithImpl(this._self, this._then);

  final GroupChatMessage _self;
  final $Res Function(GroupChatMessage) _then;

/// Create a copy of GroupChatMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? nickName = freezed,Object? profileImage = freezed,Object? senderType = null,Object? type = null,Object? imageUrl = freezed,Object? content = freezed,Object? timeStamp = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,nickName: freezed == nickName ? _self.nickName : nickName // ignore: cast_nullable_to_non_nullable
as dynamic,profileImage: freezed == profileImage ? _self.profileImage : profileImage // ignore: cast_nullable_to_non_nullable
as dynamic,senderType: null == senderType ? _self.senderType : senderType // ignore: cast_nullable_to_non_nullable
as SenderType,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as MessageType,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String?,timeStamp: null == timeStamp ? _self.timeStamp : timeStamp // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [GroupChatMessage].
extension GroupChatMessagePatterns on GroupChatMessage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GroupChatMessage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GroupChatMessage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GroupChatMessage value)  $default,){
final _that = this;
switch (_that) {
case _GroupChatMessage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GroupChatMessage value)?  $default,){
final _that = this;
switch (_that) {
case _GroupChatMessage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  dynamic nickName,  dynamic profileImage,  SenderType senderType,  MessageType type,  String? imageUrl,  String? content,  String timeStamp)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GroupChatMessage() when $default != null:
return $default(_that.id,_that.nickName,_that.profileImage,_that.senderType,_that.type,_that.imageUrl,_that.content,_that.timeStamp);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  dynamic nickName,  dynamic profileImage,  SenderType senderType,  MessageType type,  String? imageUrl,  String? content,  String timeStamp)  $default,) {final _that = this;
switch (_that) {
case _GroupChatMessage():
return $default(_that.id,_that.nickName,_that.profileImage,_that.senderType,_that.type,_that.imageUrl,_that.content,_that.timeStamp);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  dynamic nickName,  dynamic profileImage,  SenderType senderType,  MessageType type,  String? imageUrl,  String? content,  String timeStamp)?  $default,) {final _that = this;
switch (_that) {
case _GroupChatMessage() when $default != null:
return $default(_that.id,_that.nickName,_that.profileImage,_that.senderType,_that.type,_that.imageUrl,_that.content,_that.timeStamp);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GroupChatMessage implements GroupChatMessage {
  const _GroupChatMessage({required this.id, required this.nickName, required this.profileImage, required this.senderType, required this.type, this.imageUrl, this.content, required this.timeStamp});
  factory _GroupChatMessage.fromJson(Map<String, dynamic> json) => _$GroupChatMessageFromJson(json);

@override final  int id;
@override final  dynamic nickName;
@override final  dynamic profileImage;
@override final  SenderType senderType;
@override final  MessageType type;
@override final  String? imageUrl;
@override final  String? content;
@override final  String timeStamp;

/// Create a copy of GroupChatMessage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GroupChatMessageCopyWith<_GroupChatMessage> get copyWith => __$GroupChatMessageCopyWithImpl<_GroupChatMessage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GroupChatMessageToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GroupChatMessage&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.nickName, nickName)&&const DeepCollectionEquality().equals(other.profileImage, profileImage)&&(identical(other.senderType, senderType) || other.senderType == senderType)&&(identical(other.type, type) || other.type == type)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.content, content) || other.content == content)&&(identical(other.timeStamp, timeStamp) || other.timeStamp == timeStamp));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(nickName),const DeepCollectionEquality().hash(profileImage),senderType,type,imageUrl,content,timeStamp);

@override
String toString() {
  return 'GroupChatMessage(id: $id, nickName: $nickName, profileImage: $profileImage, senderType: $senderType, type: $type, imageUrl: $imageUrl, content: $content, timeStamp: $timeStamp)';
}


}

/// @nodoc
abstract mixin class _$GroupChatMessageCopyWith<$Res> implements $GroupChatMessageCopyWith<$Res> {
  factory _$GroupChatMessageCopyWith(_GroupChatMessage value, $Res Function(_GroupChatMessage) _then) = __$GroupChatMessageCopyWithImpl;
@override @useResult
$Res call({
 int id, dynamic nickName, dynamic profileImage, SenderType senderType, MessageType type, String? imageUrl, String? content, String timeStamp
});




}
/// @nodoc
class __$GroupChatMessageCopyWithImpl<$Res>
    implements _$GroupChatMessageCopyWith<$Res> {
  __$GroupChatMessageCopyWithImpl(this._self, this._then);

  final _GroupChatMessage _self;
  final $Res Function(_GroupChatMessage) _then;

/// Create a copy of GroupChatMessage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? nickName = freezed,Object? profileImage = freezed,Object? senderType = null,Object? type = null,Object? imageUrl = freezed,Object? content = freezed,Object? timeStamp = null,}) {
  return _then(_GroupChatMessage(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,nickName: freezed == nickName ? _self.nickName : nickName // ignore: cast_nullable_to_non_nullable
as dynamic,profileImage: freezed == profileImage ? _self.profileImage : profileImage // ignore: cast_nullable_to_non_nullable
as dynamic,senderType: null == senderType ? _self.senderType : senderType // ignore: cast_nullable_to_non_nullable
as SenderType,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as MessageType,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String?,timeStamp: null == timeStamp ? _self.timeStamp : timeStamp // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
