// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_posts_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MyPostsState {

 UiStatus get status; String get errorMessage; List<MyPostsResponse> get myPosts;
/// Create a copy of MyPostsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MyPostsStateCopyWith<MyPostsState> get copyWith => _$MyPostsStateCopyWithImpl<MyPostsState>(this as MyPostsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyPostsState&&(identical(other.status, status) || other.status == status)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&const DeepCollectionEquality().equals(other.myPosts, myPosts));
}


@override
int get hashCode => Object.hash(runtimeType,status,errorMessage,const DeepCollectionEquality().hash(myPosts));

@override
String toString() {
  return 'MyPostsState(status: $status, errorMessage: $errorMessage, myPosts: $myPosts)';
}


}

/// @nodoc
abstract mixin class $MyPostsStateCopyWith<$Res>  {
  factory $MyPostsStateCopyWith(MyPostsState value, $Res Function(MyPostsState) _then) = _$MyPostsStateCopyWithImpl;
@useResult
$Res call({
 UiStatus status, String errorMessage, List<MyPostsResponse> myPosts
});




}
/// @nodoc
class _$MyPostsStateCopyWithImpl<$Res>
    implements $MyPostsStateCopyWith<$Res> {
  _$MyPostsStateCopyWithImpl(this._self, this._then);

  final MyPostsState _self;
  final $Res Function(MyPostsState) _then;

/// Create a copy of MyPostsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? errorMessage = null,Object? myPosts = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as UiStatus,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,myPosts: null == myPosts ? _self.myPosts : myPosts // ignore: cast_nullable_to_non_nullable
as List<MyPostsResponse>,
  ));
}

}


/// Adds pattern-matching-related methods to [MyPostsState].
extension MyPostsStatePatterns on MyPostsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MyPostsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MyPostsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MyPostsState value)  $default,){
final _that = this;
switch (_that) {
case _MyPostsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MyPostsState value)?  $default,){
final _that = this;
switch (_that) {
case _MyPostsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( UiStatus status,  String errorMessage,  List<MyPostsResponse> myPosts)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MyPostsState() when $default != null:
return $default(_that.status,_that.errorMessage,_that.myPosts);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( UiStatus status,  String errorMessage,  List<MyPostsResponse> myPosts)  $default,) {final _that = this;
switch (_that) {
case _MyPostsState():
return $default(_that.status,_that.errorMessage,_that.myPosts);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( UiStatus status,  String errorMessage,  List<MyPostsResponse> myPosts)?  $default,) {final _that = this;
switch (_that) {
case _MyPostsState() when $default != null:
return $default(_that.status,_that.errorMessage,_that.myPosts);case _:
  return null;

}
}

}

/// @nodoc


class _MyPostsState implements MyPostsState {
  const _MyPostsState({this.status = UiStatus.idle, this.errorMessage = '', final  List<MyPostsResponse> myPosts = const []}): _myPosts = myPosts;
  

@override@JsonKey() final  UiStatus status;
@override@JsonKey() final  String errorMessage;
 final  List<MyPostsResponse> _myPosts;
@override@JsonKey() List<MyPostsResponse> get myPosts {
  if (_myPosts is EqualUnmodifiableListView) return _myPosts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_myPosts);
}


/// Create a copy of MyPostsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MyPostsStateCopyWith<_MyPostsState> get copyWith => __$MyPostsStateCopyWithImpl<_MyPostsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MyPostsState&&(identical(other.status, status) || other.status == status)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&const DeepCollectionEquality().equals(other._myPosts, _myPosts));
}


@override
int get hashCode => Object.hash(runtimeType,status,errorMessage,const DeepCollectionEquality().hash(_myPosts));

@override
String toString() {
  return 'MyPostsState(status: $status, errorMessage: $errorMessage, myPosts: $myPosts)';
}


}

/// @nodoc
abstract mixin class _$MyPostsStateCopyWith<$Res> implements $MyPostsStateCopyWith<$Res> {
  factory _$MyPostsStateCopyWith(_MyPostsState value, $Res Function(_MyPostsState) _then) = __$MyPostsStateCopyWithImpl;
@override @useResult
$Res call({
 UiStatus status, String errorMessage, List<MyPostsResponse> myPosts
});




}
/// @nodoc
class __$MyPostsStateCopyWithImpl<$Res>
    implements _$MyPostsStateCopyWith<$Res> {
  __$MyPostsStateCopyWithImpl(this._self, this._then);

  final _MyPostsState _self;
  final $Res Function(_MyPostsState) _then;

/// Create a copy of MyPostsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? errorMessage = null,Object? myPosts = null,}) {
  return _then(_MyPostsState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as UiStatus,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,myPosts: null == myPosts ? _self._myPosts : myPosts // ignore: cast_nullable_to_non_nullable
as List<MyPostsResponse>,
  ));
}


}

// dart format on
