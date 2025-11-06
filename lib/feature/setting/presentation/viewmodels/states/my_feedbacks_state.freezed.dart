// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_feedbacks_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MyFeedbacksState {

 UiStatus get status; String get errorMessage; List<MyFeedbacksResponse> get myFeedbacks;
/// Create a copy of MyFeedbacksState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MyFeedbacksStateCopyWith<MyFeedbacksState> get copyWith => _$MyFeedbacksStateCopyWithImpl<MyFeedbacksState>(this as MyFeedbacksState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyFeedbacksState&&(identical(other.status, status) || other.status == status)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&const DeepCollectionEquality().equals(other.myFeedbacks, myFeedbacks));
}


@override
int get hashCode => Object.hash(runtimeType,status,errorMessage,const DeepCollectionEquality().hash(myFeedbacks));

@override
String toString() {
  return 'MyFeedbacksState(status: $status, errorMessage: $errorMessage, myFeedbacks: $myFeedbacks)';
}


}

/// @nodoc
abstract mixin class $MyFeedbacksStateCopyWith<$Res>  {
  factory $MyFeedbacksStateCopyWith(MyFeedbacksState value, $Res Function(MyFeedbacksState) _then) = _$MyFeedbacksStateCopyWithImpl;
@useResult
$Res call({
 UiStatus status, String errorMessage, List<MyFeedbacksResponse> myFeedbacks
});




}
/// @nodoc
class _$MyFeedbacksStateCopyWithImpl<$Res>
    implements $MyFeedbacksStateCopyWith<$Res> {
  _$MyFeedbacksStateCopyWithImpl(this._self, this._then);

  final MyFeedbacksState _self;
  final $Res Function(MyFeedbacksState) _then;

/// Create a copy of MyFeedbacksState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? errorMessage = null,Object? myFeedbacks = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as UiStatus,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,myFeedbacks: null == myFeedbacks ? _self.myFeedbacks : myFeedbacks // ignore: cast_nullable_to_non_nullable
as List<MyFeedbacksResponse>,
  ));
}

}


/// Adds pattern-matching-related methods to [MyFeedbacksState].
extension MyFeedbacksStatePatterns on MyFeedbacksState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MyFeedbacksState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MyFeedbacksState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MyFeedbacksState value)  $default,){
final _that = this;
switch (_that) {
case _MyFeedbacksState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MyFeedbacksState value)?  $default,){
final _that = this;
switch (_that) {
case _MyFeedbacksState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( UiStatus status,  String errorMessage,  List<MyFeedbacksResponse> myFeedbacks)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MyFeedbacksState() when $default != null:
return $default(_that.status,_that.errorMessage,_that.myFeedbacks);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( UiStatus status,  String errorMessage,  List<MyFeedbacksResponse> myFeedbacks)  $default,) {final _that = this;
switch (_that) {
case _MyFeedbacksState():
return $default(_that.status,_that.errorMessage,_that.myFeedbacks);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( UiStatus status,  String errorMessage,  List<MyFeedbacksResponse> myFeedbacks)?  $default,) {final _that = this;
switch (_that) {
case _MyFeedbacksState() when $default != null:
return $default(_that.status,_that.errorMessage,_that.myFeedbacks);case _:
  return null;

}
}

}

/// @nodoc


class _MyFeedbacksState implements MyFeedbacksState {
  const _MyFeedbacksState({this.status = UiStatus.idle, this.errorMessage = '', final  List<MyFeedbacksResponse> myFeedbacks = const []}): _myFeedbacks = myFeedbacks;
  

@override@JsonKey() final  UiStatus status;
@override@JsonKey() final  String errorMessage;
 final  List<MyFeedbacksResponse> _myFeedbacks;
@override@JsonKey() List<MyFeedbacksResponse> get myFeedbacks {
  if (_myFeedbacks is EqualUnmodifiableListView) return _myFeedbacks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_myFeedbacks);
}


/// Create a copy of MyFeedbacksState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MyFeedbacksStateCopyWith<_MyFeedbacksState> get copyWith => __$MyFeedbacksStateCopyWithImpl<_MyFeedbacksState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MyFeedbacksState&&(identical(other.status, status) || other.status == status)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&const DeepCollectionEquality().equals(other._myFeedbacks, _myFeedbacks));
}


@override
int get hashCode => Object.hash(runtimeType,status,errorMessage,const DeepCollectionEquality().hash(_myFeedbacks));

@override
String toString() {
  return 'MyFeedbacksState(status: $status, errorMessage: $errorMessage, myFeedbacks: $myFeedbacks)';
}


}

/// @nodoc
abstract mixin class _$MyFeedbacksStateCopyWith<$Res> implements $MyFeedbacksStateCopyWith<$Res> {
  factory _$MyFeedbacksStateCopyWith(_MyFeedbacksState value, $Res Function(_MyFeedbacksState) _then) = __$MyFeedbacksStateCopyWithImpl;
@override @useResult
$Res call({
 UiStatus status, String errorMessage, List<MyFeedbacksResponse> myFeedbacks
});




}
/// @nodoc
class __$MyFeedbacksStateCopyWithImpl<$Res>
    implements _$MyFeedbacksStateCopyWith<$Res> {
  __$MyFeedbacksStateCopyWithImpl(this._self, this._then);

  final _MyFeedbacksState _self;
  final $Res Function(_MyFeedbacksState) _then;

/// Create a copy of MyFeedbacksState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? errorMessage = null,Object? myFeedbacks = null,}) {
  return _then(_MyFeedbacksState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as UiStatus,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,myFeedbacks: null == myFeedbacks ? _self._myFeedbacks : myFeedbacks // ignore: cast_nullable_to_non_nullable
as List<MyFeedbacksResponse>,
  ));
}


}

// dart format on
