// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group_message_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GroupMessageResponse {

 int get id; String get dormitory; String get semester; String get profileImage1; String get profileImage2; String get groupName; int get headCount; List<String> get tags; String get timeStamp; bool get isRead;
/// Create a copy of GroupMessageResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GroupMessageResponseCopyWith<GroupMessageResponse> get copyWith => _$GroupMessageResponseCopyWithImpl<GroupMessageResponse>(this as GroupMessageResponse, _$identity);

  /// Serializes this GroupMessageResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GroupMessageResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.dormitory, dormitory) || other.dormitory == dormitory)&&(identical(other.semester, semester) || other.semester == semester)&&(identical(other.profileImage1, profileImage1) || other.profileImage1 == profileImage1)&&(identical(other.profileImage2, profileImage2) || other.profileImage2 == profileImage2)&&(identical(other.groupName, groupName) || other.groupName == groupName)&&(identical(other.headCount, headCount) || other.headCount == headCount)&&const DeepCollectionEquality().equals(other.tags, tags)&&(identical(other.timeStamp, timeStamp) || other.timeStamp == timeStamp)&&(identical(other.isRead, isRead) || other.isRead == isRead));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,dormitory,semester,profileImage1,profileImage2,groupName,headCount,const DeepCollectionEquality().hash(tags),timeStamp,isRead);

@override
String toString() {
  return 'GroupMessageResponse(id: $id, dormitory: $dormitory, semester: $semester, profileImage1: $profileImage1, profileImage2: $profileImage2, groupName: $groupName, headCount: $headCount, tags: $tags, timeStamp: $timeStamp, isRead: $isRead)';
}


}

/// @nodoc
abstract mixin class $GroupMessageResponseCopyWith<$Res>  {
  factory $GroupMessageResponseCopyWith(GroupMessageResponse value, $Res Function(GroupMessageResponse) _then) = _$GroupMessageResponseCopyWithImpl;
@useResult
$Res call({
 int id, String dormitory, String semester, String profileImage1, String profileImage2, String groupName, int headCount, List<String> tags, String timeStamp, bool isRead
});




}
/// @nodoc
class _$GroupMessageResponseCopyWithImpl<$Res>
    implements $GroupMessageResponseCopyWith<$Res> {
  _$GroupMessageResponseCopyWithImpl(this._self, this._then);

  final GroupMessageResponse _self;
  final $Res Function(GroupMessageResponse) _then;

/// Create a copy of GroupMessageResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? dormitory = null,Object? semester = null,Object? profileImage1 = null,Object? profileImage2 = null,Object? groupName = null,Object? headCount = null,Object? tags = null,Object? timeStamp = null,Object? isRead = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,dormitory: null == dormitory ? _self.dormitory : dormitory // ignore: cast_nullable_to_non_nullable
as String,semester: null == semester ? _self.semester : semester // ignore: cast_nullable_to_non_nullable
as String,profileImage1: null == profileImage1 ? _self.profileImage1 : profileImage1 // ignore: cast_nullable_to_non_nullable
as String,profileImage2: null == profileImage2 ? _self.profileImage2 : profileImage2 // ignore: cast_nullable_to_non_nullable
as String,groupName: null == groupName ? _self.groupName : groupName // ignore: cast_nullable_to_non_nullable
as String,headCount: null == headCount ? _self.headCount : headCount // ignore: cast_nullable_to_non_nullable
as int,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,timeStamp: null == timeStamp ? _self.timeStamp : timeStamp // ignore: cast_nullable_to_non_nullable
as String,isRead: null == isRead ? _self.isRead : isRead // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [GroupMessageResponse].
extension GroupMessageResponsePatterns on GroupMessageResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GroupMessageResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GroupMessageResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GroupMessageResponse value)  $default,){
final _that = this;
switch (_that) {
case _GroupMessageResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GroupMessageResponse value)?  $default,){
final _that = this;
switch (_that) {
case _GroupMessageResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String dormitory,  String semester,  String profileImage1,  String profileImage2,  String groupName,  int headCount,  List<String> tags,  String timeStamp,  bool isRead)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GroupMessageResponse() when $default != null:
return $default(_that.id,_that.dormitory,_that.semester,_that.profileImage1,_that.profileImage2,_that.groupName,_that.headCount,_that.tags,_that.timeStamp,_that.isRead);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String dormitory,  String semester,  String profileImage1,  String profileImage2,  String groupName,  int headCount,  List<String> tags,  String timeStamp,  bool isRead)  $default,) {final _that = this;
switch (_that) {
case _GroupMessageResponse():
return $default(_that.id,_that.dormitory,_that.semester,_that.profileImage1,_that.profileImage2,_that.groupName,_that.headCount,_that.tags,_that.timeStamp,_that.isRead);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String dormitory,  String semester,  String profileImage1,  String profileImage2,  String groupName,  int headCount,  List<String> tags,  String timeStamp,  bool isRead)?  $default,) {final _that = this;
switch (_that) {
case _GroupMessageResponse() when $default != null:
return $default(_that.id,_that.dormitory,_that.semester,_that.profileImage1,_that.profileImage2,_that.groupName,_that.headCount,_that.tags,_that.timeStamp,_that.isRead);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GroupMessageResponse implements GroupMessageResponse {
  const _GroupMessageResponse({required this.id, required this.dormitory, required this.semester, required this.profileImage1, required this.profileImage2, required this.groupName, required this.headCount, required final  List<String> tags, required this.timeStamp, required this.isRead}): _tags = tags;
  factory _GroupMessageResponse.fromJson(Map<String, dynamic> json) => _$GroupMessageResponseFromJson(json);

@override final  int id;
@override final  String dormitory;
@override final  String semester;
@override final  String profileImage1;
@override final  String profileImage2;
@override final  String groupName;
@override final  int headCount;
 final  List<String> _tags;
@override List<String> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}

@override final  String timeStamp;
@override final  bool isRead;

/// Create a copy of GroupMessageResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GroupMessageResponseCopyWith<_GroupMessageResponse> get copyWith => __$GroupMessageResponseCopyWithImpl<_GroupMessageResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GroupMessageResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GroupMessageResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.dormitory, dormitory) || other.dormitory == dormitory)&&(identical(other.semester, semester) || other.semester == semester)&&(identical(other.profileImage1, profileImage1) || other.profileImage1 == profileImage1)&&(identical(other.profileImage2, profileImage2) || other.profileImage2 == profileImage2)&&(identical(other.groupName, groupName) || other.groupName == groupName)&&(identical(other.headCount, headCount) || other.headCount == headCount)&&const DeepCollectionEquality().equals(other._tags, _tags)&&(identical(other.timeStamp, timeStamp) || other.timeStamp == timeStamp)&&(identical(other.isRead, isRead) || other.isRead == isRead));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,dormitory,semester,profileImage1,profileImage2,groupName,headCount,const DeepCollectionEquality().hash(_tags),timeStamp,isRead);

@override
String toString() {
  return 'GroupMessageResponse(id: $id, dormitory: $dormitory, semester: $semester, profileImage1: $profileImage1, profileImage2: $profileImage2, groupName: $groupName, headCount: $headCount, tags: $tags, timeStamp: $timeStamp, isRead: $isRead)';
}


}

/// @nodoc
abstract mixin class _$GroupMessageResponseCopyWith<$Res> implements $GroupMessageResponseCopyWith<$Res> {
  factory _$GroupMessageResponseCopyWith(_GroupMessageResponse value, $Res Function(_GroupMessageResponse) _then) = __$GroupMessageResponseCopyWithImpl;
@override @useResult
$Res call({
 int id, String dormitory, String semester, String profileImage1, String profileImage2, String groupName, int headCount, List<String> tags, String timeStamp, bool isRead
});




}
/// @nodoc
class __$GroupMessageResponseCopyWithImpl<$Res>
    implements _$GroupMessageResponseCopyWith<$Res> {
  __$GroupMessageResponseCopyWithImpl(this._self, this._then);

  final _GroupMessageResponse _self;
  final $Res Function(_GroupMessageResponse) _then;

/// Create a copy of GroupMessageResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? dormitory = null,Object? semester = null,Object? profileImage1 = null,Object? profileImage2 = null,Object? groupName = null,Object? headCount = null,Object? tags = null,Object? timeStamp = null,Object? isRead = null,}) {
  return _then(_GroupMessageResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,dormitory: null == dormitory ? _self.dormitory : dormitory // ignore: cast_nullable_to_non_nullable
as String,semester: null == semester ? _self.semester : semester // ignore: cast_nullable_to_non_nullable
as String,profileImage1: null == profileImage1 ? _self.profileImage1 : profileImage1 // ignore: cast_nullable_to_non_nullable
as String,profileImage2: null == profileImage2 ? _self.profileImage2 : profileImage2 // ignore: cast_nullable_to_non_nullable
as String,groupName: null == groupName ? _self.groupName : groupName // ignore: cast_nullable_to_non_nullable
as String,headCount: null == headCount ? _self.headCount : headCount // ignore: cast_nullable_to_non_nullable
as int,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,timeStamp: null == timeStamp ? _self.timeStamp : timeStamp // ignore: cast_nullable_to_non_nullable
as String,isRead: null == isRead ? _self.isRead : isRead // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
