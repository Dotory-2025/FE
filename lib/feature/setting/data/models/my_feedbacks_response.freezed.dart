// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_feedbacks_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MyFeedbacksResponse {

 String get dormitory; String get year; List<FeedbackUser> get feedbacks;
/// Create a copy of MyFeedbacksResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MyFeedbacksResponseCopyWith<MyFeedbacksResponse> get copyWith => _$MyFeedbacksResponseCopyWithImpl<MyFeedbacksResponse>(this as MyFeedbacksResponse, _$identity);

  /// Serializes this MyFeedbacksResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyFeedbacksResponse&&(identical(other.dormitory, dormitory) || other.dormitory == dormitory)&&(identical(other.year, year) || other.year == year)&&const DeepCollectionEquality().equals(other.feedbacks, feedbacks));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,dormitory,year,const DeepCollectionEquality().hash(feedbacks));

@override
String toString() {
  return 'MyFeedbacksResponse(dormitory: $dormitory, year: $year, feedbacks: $feedbacks)';
}


}

/// @nodoc
abstract mixin class $MyFeedbacksResponseCopyWith<$Res>  {
  factory $MyFeedbacksResponseCopyWith(MyFeedbacksResponse value, $Res Function(MyFeedbacksResponse) _then) = _$MyFeedbacksResponseCopyWithImpl;
@useResult
$Res call({
 String dormitory, String year, List<FeedbackUser> feedbacks
});




}
/// @nodoc
class _$MyFeedbacksResponseCopyWithImpl<$Res>
    implements $MyFeedbacksResponseCopyWith<$Res> {
  _$MyFeedbacksResponseCopyWithImpl(this._self, this._then);

  final MyFeedbacksResponse _self;
  final $Res Function(MyFeedbacksResponse) _then;

/// Create a copy of MyFeedbacksResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? dormitory = null,Object? year = null,Object? feedbacks = null,}) {
  return _then(_self.copyWith(
dormitory: null == dormitory ? _self.dormitory : dormitory // ignore: cast_nullable_to_non_nullable
as String,year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as String,feedbacks: null == feedbacks ? _self.feedbacks : feedbacks // ignore: cast_nullable_to_non_nullable
as List<FeedbackUser>,
  ));
}

}


/// Adds pattern-matching-related methods to [MyFeedbacksResponse].
extension MyFeedbacksResponsePatterns on MyFeedbacksResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MyFeedbacksResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MyFeedbacksResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MyFeedbacksResponse value)  $default,){
final _that = this;
switch (_that) {
case _MyFeedbacksResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MyFeedbacksResponse value)?  $default,){
final _that = this;
switch (_that) {
case _MyFeedbacksResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String dormitory,  String year,  List<FeedbackUser> feedbacks)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MyFeedbacksResponse() when $default != null:
return $default(_that.dormitory,_that.year,_that.feedbacks);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String dormitory,  String year,  List<FeedbackUser> feedbacks)  $default,) {final _that = this;
switch (_that) {
case _MyFeedbacksResponse():
return $default(_that.dormitory,_that.year,_that.feedbacks);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String dormitory,  String year,  List<FeedbackUser> feedbacks)?  $default,) {final _that = this;
switch (_that) {
case _MyFeedbacksResponse() when $default != null:
return $default(_that.dormitory,_that.year,_that.feedbacks);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MyFeedbacksResponse implements MyFeedbacksResponse {
  const _MyFeedbacksResponse({required this.dormitory, required this.year, required final  List<FeedbackUser> feedbacks}): _feedbacks = feedbacks;
  factory _MyFeedbacksResponse.fromJson(Map<String, dynamic> json) => _$MyFeedbacksResponseFromJson(json);

@override final  String dormitory;
@override final  String year;
 final  List<FeedbackUser> _feedbacks;
@override List<FeedbackUser> get feedbacks {
  if (_feedbacks is EqualUnmodifiableListView) return _feedbacks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_feedbacks);
}


/// Create a copy of MyFeedbacksResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MyFeedbacksResponseCopyWith<_MyFeedbacksResponse> get copyWith => __$MyFeedbacksResponseCopyWithImpl<_MyFeedbacksResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MyFeedbacksResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MyFeedbacksResponse&&(identical(other.dormitory, dormitory) || other.dormitory == dormitory)&&(identical(other.year, year) || other.year == year)&&const DeepCollectionEquality().equals(other._feedbacks, _feedbacks));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,dormitory,year,const DeepCollectionEquality().hash(_feedbacks));

@override
String toString() {
  return 'MyFeedbacksResponse(dormitory: $dormitory, year: $year, feedbacks: $feedbacks)';
}


}

/// @nodoc
abstract mixin class _$MyFeedbacksResponseCopyWith<$Res> implements $MyFeedbacksResponseCopyWith<$Res> {
  factory _$MyFeedbacksResponseCopyWith(_MyFeedbacksResponse value, $Res Function(_MyFeedbacksResponse) _then) = __$MyFeedbacksResponseCopyWithImpl;
@override @useResult
$Res call({
 String dormitory, String year, List<FeedbackUser> feedbacks
});




}
/// @nodoc
class __$MyFeedbacksResponseCopyWithImpl<$Res>
    implements _$MyFeedbacksResponseCopyWith<$Res> {
  __$MyFeedbacksResponseCopyWithImpl(this._self, this._then);

  final _MyFeedbacksResponse _self;
  final $Res Function(_MyFeedbacksResponse) _then;

/// Create a copy of MyFeedbacksResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? dormitory = null,Object? year = null,Object? feedbacks = null,}) {
  return _then(_MyFeedbacksResponse(
dormitory: null == dormitory ? _self.dormitory : dormitory // ignore: cast_nullable_to_non_nullable
as String,year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as String,feedbacks: null == feedbacks ? _self._feedbacks : feedbacks // ignore: cast_nullable_to_non_nullable
as List<FeedbackUser>,
  ));
}


}


/// @nodoc
mixin _$FeedbackUser {

 int get id; String get profileImage; String get nickName; List<String> get tags;
/// Create a copy of FeedbackUser
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FeedbackUserCopyWith<FeedbackUser> get copyWith => _$FeedbackUserCopyWithImpl<FeedbackUser>(this as FeedbackUser, _$identity);

  /// Serializes this FeedbackUser to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeedbackUser&&(identical(other.id, id) || other.id == id)&&(identical(other.profileImage, profileImage) || other.profileImage == profileImage)&&(identical(other.nickName, nickName) || other.nickName == nickName)&&const DeepCollectionEquality().equals(other.tags, tags));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,profileImage,nickName,const DeepCollectionEquality().hash(tags));

@override
String toString() {
  return 'FeedbackUser(id: $id, profileImage: $profileImage, nickName: $nickName, tags: $tags)';
}


}

/// @nodoc
abstract mixin class $FeedbackUserCopyWith<$Res>  {
  factory $FeedbackUserCopyWith(FeedbackUser value, $Res Function(FeedbackUser) _then) = _$FeedbackUserCopyWithImpl;
@useResult
$Res call({
 int id, String profileImage, String nickName, List<String> tags
});




}
/// @nodoc
class _$FeedbackUserCopyWithImpl<$Res>
    implements $FeedbackUserCopyWith<$Res> {
  _$FeedbackUserCopyWithImpl(this._self, this._then);

  final FeedbackUser _self;
  final $Res Function(FeedbackUser) _then;

/// Create a copy of FeedbackUser
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? profileImage = null,Object? nickName = null,Object? tags = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,profileImage: null == profileImage ? _self.profileImage : profileImage // ignore: cast_nullable_to_non_nullable
as String,nickName: null == nickName ? _self.nickName : nickName // ignore: cast_nullable_to_non_nullable
as String,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [FeedbackUser].
extension FeedbackUserPatterns on FeedbackUser {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FeedbackUser value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FeedbackUser() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FeedbackUser value)  $default,){
final _that = this;
switch (_that) {
case _FeedbackUser():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FeedbackUser value)?  $default,){
final _that = this;
switch (_that) {
case _FeedbackUser() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String profileImage,  String nickName,  List<String> tags)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FeedbackUser() when $default != null:
return $default(_that.id,_that.profileImage,_that.nickName,_that.tags);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String profileImage,  String nickName,  List<String> tags)  $default,) {final _that = this;
switch (_that) {
case _FeedbackUser():
return $default(_that.id,_that.profileImage,_that.nickName,_that.tags);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String profileImage,  String nickName,  List<String> tags)?  $default,) {final _that = this;
switch (_that) {
case _FeedbackUser() when $default != null:
return $default(_that.id,_that.profileImage,_that.nickName,_that.tags);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FeedbackUser implements FeedbackUser {
  const _FeedbackUser({required this.id, required this.profileImage, required this.nickName, required final  List<String> tags}): _tags = tags;
  factory _FeedbackUser.fromJson(Map<String, dynamic> json) => _$FeedbackUserFromJson(json);

@override final  int id;
@override final  String profileImage;
@override final  String nickName;
 final  List<String> _tags;
@override List<String> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}


/// Create a copy of FeedbackUser
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FeedbackUserCopyWith<_FeedbackUser> get copyWith => __$FeedbackUserCopyWithImpl<_FeedbackUser>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FeedbackUserToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FeedbackUser&&(identical(other.id, id) || other.id == id)&&(identical(other.profileImage, profileImage) || other.profileImage == profileImage)&&(identical(other.nickName, nickName) || other.nickName == nickName)&&const DeepCollectionEquality().equals(other._tags, _tags));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,profileImage,nickName,const DeepCollectionEquality().hash(_tags));

@override
String toString() {
  return 'FeedbackUser(id: $id, profileImage: $profileImage, nickName: $nickName, tags: $tags)';
}


}

/// @nodoc
abstract mixin class _$FeedbackUserCopyWith<$Res> implements $FeedbackUserCopyWith<$Res> {
  factory _$FeedbackUserCopyWith(_FeedbackUser value, $Res Function(_FeedbackUser) _then) = __$FeedbackUserCopyWithImpl;
@override @useResult
$Res call({
 int id, String profileImage, String nickName, List<String> tags
});




}
/// @nodoc
class __$FeedbackUserCopyWithImpl<$Res>
    implements _$FeedbackUserCopyWith<$Res> {
  __$FeedbackUserCopyWithImpl(this._self, this._then);

  final _FeedbackUser _self;
  final $Res Function(_FeedbackUser) _then;

/// Create a copy of FeedbackUser
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? profileImage = null,Object? nickName = null,Object? tags = null,}) {
  return _then(_FeedbackUser(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,profileImage: null == profileImage ? _self.profileImage : profileImage // ignore: cast_nullable_to_non_nullable
as String,nickName: null == nickName ? _self.nickName : nickName // ignore: cast_nullable_to_non_nullable
as String,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
