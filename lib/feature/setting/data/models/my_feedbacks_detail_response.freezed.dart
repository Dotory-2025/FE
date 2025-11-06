// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_feedbacks_detail_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MyFeedbacksDetailResponse {

 int get id; String get dormitory; String get profileImage; String get roomName; String get nickName; List<String> get tags; List<String> get feedbacks;
/// Create a copy of MyFeedbacksDetailResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MyFeedbacksDetailResponseCopyWith<MyFeedbacksDetailResponse> get copyWith => _$MyFeedbacksDetailResponseCopyWithImpl<MyFeedbacksDetailResponse>(this as MyFeedbacksDetailResponse, _$identity);

  /// Serializes this MyFeedbacksDetailResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyFeedbacksDetailResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.dormitory, dormitory) || other.dormitory == dormitory)&&(identical(other.profileImage, profileImage) || other.profileImage == profileImage)&&(identical(other.roomName, roomName) || other.roomName == roomName)&&(identical(other.nickName, nickName) || other.nickName == nickName)&&const DeepCollectionEquality().equals(other.tags, tags)&&const DeepCollectionEquality().equals(other.feedbacks, feedbacks));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,dormitory,profileImage,roomName,nickName,const DeepCollectionEquality().hash(tags),const DeepCollectionEquality().hash(feedbacks));

@override
String toString() {
  return 'MyFeedbacksDetailResponse(id: $id, dormitory: $dormitory, profileImage: $profileImage, roomName: $roomName, nickName: $nickName, tags: $tags, feedbacks: $feedbacks)';
}


}

/// @nodoc
abstract mixin class $MyFeedbacksDetailResponseCopyWith<$Res>  {
  factory $MyFeedbacksDetailResponseCopyWith(MyFeedbacksDetailResponse value, $Res Function(MyFeedbacksDetailResponse) _then) = _$MyFeedbacksDetailResponseCopyWithImpl;
@useResult
$Res call({
 int id, String dormitory, String profileImage, String roomName, String nickName, List<String> tags, List<String> feedbacks
});




}
/// @nodoc
class _$MyFeedbacksDetailResponseCopyWithImpl<$Res>
    implements $MyFeedbacksDetailResponseCopyWith<$Res> {
  _$MyFeedbacksDetailResponseCopyWithImpl(this._self, this._then);

  final MyFeedbacksDetailResponse _self;
  final $Res Function(MyFeedbacksDetailResponse) _then;

/// Create a copy of MyFeedbacksDetailResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? dormitory = null,Object? profileImage = null,Object? roomName = null,Object? nickName = null,Object? tags = null,Object? feedbacks = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,dormitory: null == dormitory ? _self.dormitory : dormitory // ignore: cast_nullable_to_non_nullable
as String,profileImage: null == profileImage ? _self.profileImage : profileImage // ignore: cast_nullable_to_non_nullable
as String,roomName: null == roomName ? _self.roomName : roomName // ignore: cast_nullable_to_non_nullable
as String,nickName: null == nickName ? _self.nickName : nickName // ignore: cast_nullable_to_non_nullable
as String,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,feedbacks: null == feedbacks ? _self.feedbacks : feedbacks // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [MyFeedbacksDetailResponse].
extension MyFeedbacksDetailResponsePatterns on MyFeedbacksDetailResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MyFeedbacksDetailResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MyFeedbacksDetailResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MyFeedbacksDetailResponse value)  $default,){
final _that = this;
switch (_that) {
case _MyFeedbacksDetailResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MyFeedbacksDetailResponse value)?  $default,){
final _that = this;
switch (_that) {
case _MyFeedbacksDetailResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String dormitory,  String profileImage,  String roomName,  String nickName,  List<String> tags,  List<String> feedbacks)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MyFeedbacksDetailResponse() when $default != null:
return $default(_that.id,_that.dormitory,_that.profileImage,_that.roomName,_that.nickName,_that.tags,_that.feedbacks);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String dormitory,  String profileImage,  String roomName,  String nickName,  List<String> tags,  List<String> feedbacks)  $default,) {final _that = this;
switch (_that) {
case _MyFeedbacksDetailResponse():
return $default(_that.id,_that.dormitory,_that.profileImage,_that.roomName,_that.nickName,_that.tags,_that.feedbacks);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String dormitory,  String profileImage,  String roomName,  String nickName,  List<String> tags,  List<String> feedbacks)?  $default,) {final _that = this;
switch (_that) {
case _MyFeedbacksDetailResponse() when $default != null:
return $default(_that.id,_that.dormitory,_that.profileImage,_that.roomName,_that.nickName,_that.tags,_that.feedbacks);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MyFeedbacksDetailResponse implements MyFeedbacksDetailResponse {
  const _MyFeedbacksDetailResponse({required this.id, required this.dormitory, required this.profileImage, required this.roomName, required this.nickName, required final  List<String> tags, required final  List<String> feedbacks}): _tags = tags,_feedbacks = feedbacks;
  factory _MyFeedbacksDetailResponse.fromJson(Map<String, dynamic> json) => _$MyFeedbacksDetailResponseFromJson(json);

@override final  int id;
@override final  String dormitory;
@override final  String profileImage;
@override final  String roomName;
@override final  String nickName;
 final  List<String> _tags;
@override List<String> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}

 final  List<String> _feedbacks;
@override List<String> get feedbacks {
  if (_feedbacks is EqualUnmodifiableListView) return _feedbacks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_feedbacks);
}


/// Create a copy of MyFeedbacksDetailResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MyFeedbacksDetailResponseCopyWith<_MyFeedbacksDetailResponse> get copyWith => __$MyFeedbacksDetailResponseCopyWithImpl<_MyFeedbacksDetailResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MyFeedbacksDetailResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MyFeedbacksDetailResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.dormitory, dormitory) || other.dormitory == dormitory)&&(identical(other.profileImage, profileImage) || other.profileImage == profileImage)&&(identical(other.roomName, roomName) || other.roomName == roomName)&&(identical(other.nickName, nickName) || other.nickName == nickName)&&const DeepCollectionEquality().equals(other._tags, _tags)&&const DeepCollectionEquality().equals(other._feedbacks, _feedbacks));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,dormitory,profileImage,roomName,nickName,const DeepCollectionEquality().hash(_tags),const DeepCollectionEquality().hash(_feedbacks));

@override
String toString() {
  return 'MyFeedbacksDetailResponse(id: $id, dormitory: $dormitory, profileImage: $profileImage, roomName: $roomName, nickName: $nickName, tags: $tags, feedbacks: $feedbacks)';
}


}

/// @nodoc
abstract mixin class _$MyFeedbacksDetailResponseCopyWith<$Res> implements $MyFeedbacksDetailResponseCopyWith<$Res> {
  factory _$MyFeedbacksDetailResponseCopyWith(_MyFeedbacksDetailResponse value, $Res Function(_MyFeedbacksDetailResponse) _then) = __$MyFeedbacksDetailResponseCopyWithImpl;
@override @useResult
$Res call({
 int id, String dormitory, String profileImage, String roomName, String nickName, List<String> tags, List<String> feedbacks
});




}
/// @nodoc
class __$MyFeedbacksDetailResponseCopyWithImpl<$Res>
    implements _$MyFeedbacksDetailResponseCopyWith<$Res> {
  __$MyFeedbacksDetailResponseCopyWithImpl(this._self, this._then);

  final _MyFeedbacksDetailResponse _self;
  final $Res Function(_MyFeedbacksDetailResponse) _then;

/// Create a copy of MyFeedbacksDetailResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? dormitory = null,Object? profileImage = null,Object? roomName = null,Object? nickName = null,Object? tags = null,Object? feedbacks = null,}) {
  return _then(_MyFeedbacksDetailResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,dormitory: null == dormitory ? _self.dormitory : dormitory // ignore: cast_nullable_to_non_nullable
as String,profileImage: null == profileImage ? _self.profileImage : profileImage // ignore: cast_nullable_to_non_nullable
as String,roomName: null == roomName ? _self.roomName : roomName // ignore: cast_nullable_to_non_nullable
as String,nickName: null == nickName ? _self.nickName : nickName // ignore: cast_nullable_to_non_nullable
as String,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,feedbacks: null == feedbacks ? _self._feedbacks : feedbacks // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
