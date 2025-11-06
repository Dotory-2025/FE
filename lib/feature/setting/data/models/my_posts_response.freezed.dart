// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_posts_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MyPostsResponse {

 int get id; String get title; String get dormitory; String get semester; List<String> get tags; dynamic get isRecruiting;
/// Create a copy of MyPostsResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MyPostsResponseCopyWith<MyPostsResponse> get copyWith => _$MyPostsResponseCopyWithImpl<MyPostsResponse>(this as MyPostsResponse, _$identity);

  /// Serializes this MyPostsResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyPostsResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.dormitory, dormitory) || other.dormitory == dormitory)&&(identical(other.semester, semester) || other.semester == semester)&&const DeepCollectionEquality().equals(other.tags, tags)&&const DeepCollectionEquality().equals(other.isRecruiting, isRecruiting));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,dormitory,semester,const DeepCollectionEquality().hash(tags),const DeepCollectionEquality().hash(isRecruiting));

@override
String toString() {
  return 'MyPostsResponse(id: $id, title: $title, dormitory: $dormitory, semester: $semester, tags: $tags, isRecruiting: $isRecruiting)';
}


}

/// @nodoc
abstract mixin class $MyPostsResponseCopyWith<$Res>  {
  factory $MyPostsResponseCopyWith(MyPostsResponse value, $Res Function(MyPostsResponse) _then) = _$MyPostsResponseCopyWithImpl;
@useResult
$Res call({
 int id, String title, String dormitory, String semester, List<String> tags, dynamic isRecruiting
});




}
/// @nodoc
class _$MyPostsResponseCopyWithImpl<$Res>
    implements $MyPostsResponseCopyWith<$Res> {
  _$MyPostsResponseCopyWithImpl(this._self, this._then);

  final MyPostsResponse _self;
  final $Res Function(MyPostsResponse) _then;

/// Create a copy of MyPostsResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? dormitory = null,Object? semester = null,Object? tags = null,Object? isRecruiting = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,dormitory: null == dormitory ? _self.dormitory : dormitory // ignore: cast_nullable_to_non_nullable
as String,semester: null == semester ? _self.semester : semester // ignore: cast_nullable_to_non_nullable
as String,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,isRecruiting: freezed == isRecruiting ? _self.isRecruiting : isRecruiting // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [MyPostsResponse].
extension MyPostsResponsePatterns on MyPostsResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MyPostsResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MyPostsResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MyPostsResponse value)  $default,){
final _that = this;
switch (_that) {
case _MyPostsResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MyPostsResponse value)?  $default,){
final _that = this;
switch (_that) {
case _MyPostsResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String title,  String dormitory,  String semester,  List<String> tags,  dynamic isRecruiting)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MyPostsResponse() when $default != null:
return $default(_that.id,_that.title,_that.dormitory,_that.semester,_that.tags,_that.isRecruiting);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String title,  String dormitory,  String semester,  List<String> tags,  dynamic isRecruiting)  $default,) {final _that = this;
switch (_that) {
case _MyPostsResponse():
return $default(_that.id,_that.title,_that.dormitory,_that.semester,_that.tags,_that.isRecruiting);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String title,  String dormitory,  String semester,  List<String> tags,  dynamic isRecruiting)?  $default,) {final _that = this;
switch (_that) {
case _MyPostsResponse() when $default != null:
return $default(_that.id,_that.title,_that.dormitory,_that.semester,_that.tags,_that.isRecruiting);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MyPostsResponse implements MyPostsResponse {
  const _MyPostsResponse({required this.id, required this.title, required this.dormitory, required this.semester, required final  List<String> tags, required this.isRecruiting}): _tags = tags;
  factory _MyPostsResponse.fromJson(Map<String, dynamic> json) => _$MyPostsResponseFromJson(json);

@override final  int id;
@override final  String title;
@override final  String dormitory;
@override final  String semester;
 final  List<String> _tags;
@override List<String> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}

@override final  dynamic isRecruiting;

/// Create a copy of MyPostsResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MyPostsResponseCopyWith<_MyPostsResponse> get copyWith => __$MyPostsResponseCopyWithImpl<_MyPostsResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MyPostsResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MyPostsResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.dormitory, dormitory) || other.dormitory == dormitory)&&(identical(other.semester, semester) || other.semester == semester)&&const DeepCollectionEquality().equals(other._tags, _tags)&&const DeepCollectionEquality().equals(other.isRecruiting, isRecruiting));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,dormitory,semester,const DeepCollectionEquality().hash(_tags),const DeepCollectionEquality().hash(isRecruiting));

@override
String toString() {
  return 'MyPostsResponse(id: $id, title: $title, dormitory: $dormitory, semester: $semester, tags: $tags, isRecruiting: $isRecruiting)';
}


}

/// @nodoc
abstract mixin class _$MyPostsResponseCopyWith<$Res> implements $MyPostsResponseCopyWith<$Res> {
  factory _$MyPostsResponseCopyWith(_MyPostsResponse value, $Res Function(_MyPostsResponse) _then) = __$MyPostsResponseCopyWithImpl;
@override @useResult
$Res call({
 int id, String title, String dormitory, String semester, List<String> tags, dynamic isRecruiting
});




}
/// @nodoc
class __$MyPostsResponseCopyWithImpl<$Res>
    implements _$MyPostsResponseCopyWith<$Res> {
  __$MyPostsResponseCopyWithImpl(this._self, this._then);

  final _MyPostsResponse _self;
  final $Res Function(_MyPostsResponse) _then;

/// Create a copy of MyPostsResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? dormitory = null,Object? semester = null,Object? tags = null,Object? isRecruiting = freezed,}) {
  return _then(_MyPostsResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,dormitory: null == dormitory ? _self.dormitory : dormitory // ignore: cast_nullable_to_non_nullable
as String,semester: null == semester ? _self.semester : semester // ignore: cast_nullable_to_non_nullable
as String,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,isRecruiting: freezed == isRecruiting ? _self.isRecruiting : isRecruiting // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

// dart format on
