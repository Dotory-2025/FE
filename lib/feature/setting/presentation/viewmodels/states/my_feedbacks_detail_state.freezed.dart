// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_feedbacks_detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MyFeedbacksDetailState {

 UiStatus get status; String get errorMessage; MyFeedbacksDetailResponse? get myFeedbackDetail;
/// Create a copy of MyFeedbacksDetailState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MyFeedbacksDetailStateCopyWith<MyFeedbacksDetailState> get copyWith => _$MyFeedbacksDetailStateCopyWithImpl<MyFeedbacksDetailState>(this as MyFeedbacksDetailState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyFeedbacksDetailState&&(identical(other.status, status) || other.status == status)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.myFeedbackDetail, myFeedbackDetail) || other.myFeedbackDetail == myFeedbackDetail));
}


@override
int get hashCode => Object.hash(runtimeType,status,errorMessage,myFeedbackDetail);

@override
String toString() {
  return 'MyFeedbacksDetailState(status: $status, errorMessage: $errorMessage, myFeedbackDetail: $myFeedbackDetail)';
}


}

/// @nodoc
abstract mixin class $MyFeedbacksDetailStateCopyWith<$Res>  {
  factory $MyFeedbacksDetailStateCopyWith(MyFeedbacksDetailState value, $Res Function(MyFeedbacksDetailState) _then) = _$MyFeedbacksDetailStateCopyWithImpl;
@useResult
$Res call({
 UiStatus status, String errorMessage, MyFeedbacksDetailResponse? myFeedbackDetail
});


$MyFeedbacksDetailResponseCopyWith<$Res>? get myFeedbackDetail;

}
/// @nodoc
class _$MyFeedbacksDetailStateCopyWithImpl<$Res>
    implements $MyFeedbacksDetailStateCopyWith<$Res> {
  _$MyFeedbacksDetailStateCopyWithImpl(this._self, this._then);

  final MyFeedbacksDetailState _self;
  final $Res Function(MyFeedbacksDetailState) _then;

/// Create a copy of MyFeedbacksDetailState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? errorMessage = null,Object? myFeedbackDetail = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as UiStatus,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,myFeedbackDetail: freezed == myFeedbackDetail ? _self.myFeedbackDetail : myFeedbackDetail // ignore: cast_nullable_to_non_nullable
as MyFeedbacksDetailResponse?,
  ));
}
/// Create a copy of MyFeedbacksDetailState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MyFeedbacksDetailResponseCopyWith<$Res>? get myFeedbackDetail {
    if (_self.myFeedbackDetail == null) {
    return null;
  }

  return $MyFeedbacksDetailResponseCopyWith<$Res>(_self.myFeedbackDetail!, (value) {
    return _then(_self.copyWith(myFeedbackDetail: value));
  });
}
}


/// Adds pattern-matching-related methods to [MyFeedbacksDetailState].
extension MyFeedbacksDetailStatePatterns on MyFeedbacksDetailState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MyFeedbacksDetailState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MyFeedbacksDetailState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MyFeedbacksDetailState value)  $default,){
final _that = this;
switch (_that) {
case _MyFeedbacksDetailState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MyFeedbacksDetailState value)?  $default,){
final _that = this;
switch (_that) {
case _MyFeedbacksDetailState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( UiStatus status,  String errorMessage,  MyFeedbacksDetailResponse? myFeedbackDetail)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MyFeedbacksDetailState() when $default != null:
return $default(_that.status,_that.errorMessage,_that.myFeedbackDetail);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( UiStatus status,  String errorMessage,  MyFeedbacksDetailResponse? myFeedbackDetail)  $default,) {final _that = this;
switch (_that) {
case _MyFeedbacksDetailState():
return $default(_that.status,_that.errorMessage,_that.myFeedbackDetail);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( UiStatus status,  String errorMessage,  MyFeedbacksDetailResponse? myFeedbackDetail)?  $default,) {final _that = this;
switch (_that) {
case _MyFeedbacksDetailState() when $default != null:
return $default(_that.status,_that.errorMessage,_that.myFeedbackDetail);case _:
  return null;

}
}

}

/// @nodoc


class _MyFeedbacksDetailState implements MyFeedbacksDetailState {
  const _MyFeedbacksDetailState({this.status = UiStatus.idle, this.errorMessage = '', this.myFeedbackDetail});
  

@override@JsonKey() final  UiStatus status;
@override@JsonKey() final  String errorMessage;
@override final  MyFeedbacksDetailResponse? myFeedbackDetail;

/// Create a copy of MyFeedbacksDetailState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MyFeedbacksDetailStateCopyWith<_MyFeedbacksDetailState> get copyWith => __$MyFeedbacksDetailStateCopyWithImpl<_MyFeedbacksDetailState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MyFeedbacksDetailState&&(identical(other.status, status) || other.status == status)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.myFeedbackDetail, myFeedbackDetail) || other.myFeedbackDetail == myFeedbackDetail));
}


@override
int get hashCode => Object.hash(runtimeType,status,errorMessage,myFeedbackDetail);

@override
String toString() {
  return 'MyFeedbacksDetailState(status: $status, errorMessage: $errorMessage, myFeedbackDetail: $myFeedbackDetail)';
}


}

/// @nodoc
abstract mixin class _$MyFeedbacksDetailStateCopyWith<$Res> implements $MyFeedbacksDetailStateCopyWith<$Res> {
  factory _$MyFeedbacksDetailStateCopyWith(_MyFeedbacksDetailState value, $Res Function(_MyFeedbacksDetailState) _then) = __$MyFeedbacksDetailStateCopyWithImpl;
@override @useResult
$Res call({
 UiStatus status, String errorMessage, MyFeedbacksDetailResponse? myFeedbackDetail
});


@override $MyFeedbacksDetailResponseCopyWith<$Res>? get myFeedbackDetail;

}
/// @nodoc
class __$MyFeedbacksDetailStateCopyWithImpl<$Res>
    implements _$MyFeedbacksDetailStateCopyWith<$Res> {
  __$MyFeedbacksDetailStateCopyWithImpl(this._self, this._then);

  final _MyFeedbacksDetailState _self;
  final $Res Function(_MyFeedbacksDetailState) _then;

/// Create a copy of MyFeedbacksDetailState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? errorMessage = null,Object? myFeedbackDetail = freezed,}) {
  return _then(_MyFeedbacksDetailState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as UiStatus,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,myFeedbackDetail: freezed == myFeedbackDetail ? _self.myFeedbackDetail : myFeedbackDetail // ignore: cast_nullable_to_non_nullable
as MyFeedbacksDetailResponse?,
  ));
}

/// Create a copy of MyFeedbacksDetailState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MyFeedbacksDetailResponseCopyWith<$Res>? get myFeedbackDetail {
    if (_self.myFeedbackDetail == null) {
    return null;
  }

  return $MyFeedbacksDetailResponseCopyWith<$Res>(_self.myFeedbackDetail!, (value) {
    return _then(_self.copyWith(myFeedbackDetail: value));
  });
}
}

// dart format on
