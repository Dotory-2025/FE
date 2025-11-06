// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_info_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MyInfoState {

 UiStatus get status; String get errorMessage; List<MatchingHistoryResponse> get matchingHistories; List<FeedbackHistoryResponse> get feedbackHistories;
/// Create a copy of MyInfoState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MyInfoStateCopyWith<MyInfoState> get copyWith => _$MyInfoStateCopyWithImpl<MyInfoState>(this as MyInfoState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyInfoState&&(identical(other.status, status) || other.status == status)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&const DeepCollectionEquality().equals(other.matchingHistories, matchingHistories)&&const DeepCollectionEquality().equals(other.feedbackHistories, feedbackHistories));
}


@override
int get hashCode => Object.hash(runtimeType,status,errorMessage,const DeepCollectionEquality().hash(matchingHistories),const DeepCollectionEquality().hash(feedbackHistories));

@override
String toString() {
  return 'MyInfoState(status: $status, errorMessage: $errorMessage, matchingHistories: $matchingHistories, feedbackHistories: $feedbackHistories)';
}


}

/// @nodoc
abstract mixin class $MyInfoStateCopyWith<$Res>  {
  factory $MyInfoStateCopyWith(MyInfoState value, $Res Function(MyInfoState) _then) = _$MyInfoStateCopyWithImpl;
@useResult
$Res call({
 UiStatus status, String errorMessage, List<MatchingHistoryResponse> matchingHistories, List<FeedbackHistoryResponse> feedbackHistories
});




}
/// @nodoc
class _$MyInfoStateCopyWithImpl<$Res>
    implements $MyInfoStateCopyWith<$Res> {
  _$MyInfoStateCopyWithImpl(this._self, this._then);

  final MyInfoState _self;
  final $Res Function(MyInfoState) _then;

/// Create a copy of MyInfoState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? errorMessage = null,Object? matchingHistories = null,Object? feedbackHistories = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as UiStatus,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,matchingHistories: null == matchingHistories ? _self.matchingHistories : matchingHistories // ignore: cast_nullable_to_non_nullable
as List<MatchingHistoryResponse>,feedbackHistories: null == feedbackHistories ? _self.feedbackHistories : feedbackHistories // ignore: cast_nullable_to_non_nullable
as List<FeedbackHistoryResponse>,
  ));
}

}


/// Adds pattern-matching-related methods to [MyInfoState].
extension MyInfoStatePatterns on MyInfoState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MyInfoState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MyInfoState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MyInfoState value)  $default,){
final _that = this;
switch (_that) {
case _MyInfoState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MyInfoState value)?  $default,){
final _that = this;
switch (_that) {
case _MyInfoState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( UiStatus status,  String errorMessage,  List<MatchingHistoryResponse> matchingHistories,  List<FeedbackHistoryResponse> feedbackHistories)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MyInfoState() when $default != null:
return $default(_that.status,_that.errorMessage,_that.matchingHistories,_that.feedbackHistories);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( UiStatus status,  String errorMessage,  List<MatchingHistoryResponse> matchingHistories,  List<FeedbackHistoryResponse> feedbackHistories)  $default,) {final _that = this;
switch (_that) {
case _MyInfoState():
return $default(_that.status,_that.errorMessage,_that.matchingHistories,_that.feedbackHistories);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( UiStatus status,  String errorMessage,  List<MatchingHistoryResponse> matchingHistories,  List<FeedbackHistoryResponse> feedbackHistories)?  $default,) {final _that = this;
switch (_that) {
case _MyInfoState() when $default != null:
return $default(_that.status,_that.errorMessage,_that.matchingHistories,_that.feedbackHistories);case _:
  return null;

}
}

}

/// @nodoc


class _MyInfoState implements MyInfoState {
  const _MyInfoState({this.status = UiStatus.idle, this.errorMessage = '', final  List<MatchingHistoryResponse> matchingHistories = const [], final  List<FeedbackHistoryResponse> feedbackHistories = const []}): _matchingHistories = matchingHistories,_feedbackHistories = feedbackHistories;
  

@override@JsonKey() final  UiStatus status;
@override@JsonKey() final  String errorMessage;
 final  List<MatchingHistoryResponse> _matchingHistories;
@override@JsonKey() List<MatchingHistoryResponse> get matchingHistories {
  if (_matchingHistories is EqualUnmodifiableListView) return _matchingHistories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_matchingHistories);
}

 final  List<FeedbackHistoryResponse> _feedbackHistories;
@override@JsonKey() List<FeedbackHistoryResponse> get feedbackHistories {
  if (_feedbackHistories is EqualUnmodifiableListView) return _feedbackHistories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_feedbackHistories);
}


/// Create a copy of MyInfoState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MyInfoStateCopyWith<_MyInfoState> get copyWith => __$MyInfoStateCopyWithImpl<_MyInfoState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MyInfoState&&(identical(other.status, status) || other.status == status)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&const DeepCollectionEquality().equals(other._matchingHistories, _matchingHistories)&&const DeepCollectionEquality().equals(other._feedbackHistories, _feedbackHistories));
}


@override
int get hashCode => Object.hash(runtimeType,status,errorMessage,const DeepCollectionEquality().hash(_matchingHistories),const DeepCollectionEquality().hash(_feedbackHistories));

@override
String toString() {
  return 'MyInfoState(status: $status, errorMessage: $errorMessage, matchingHistories: $matchingHistories, feedbackHistories: $feedbackHistories)';
}


}

/// @nodoc
abstract mixin class _$MyInfoStateCopyWith<$Res> implements $MyInfoStateCopyWith<$Res> {
  factory _$MyInfoStateCopyWith(_MyInfoState value, $Res Function(_MyInfoState) _then) = __$MyInfoStateCopyWithImpl;
@override @useResult
$Res call({
 UiStatus status, String errorMessage, List<MatchingHistoryResponse> matchingHistories, List<FeedbackHistoryResponse> feedbackHistories
});




}
/// @nodoc
class __$MyInfoStateCopyWithImpl<$Res>
    implements _$MyInfoStateCopyWith<$Res> {
  __$MyInfoStateCopyWithImpl(this._self, this._then);

  final _MyInfoState _self;
  final $Res Function(_MyInfoState) _then;

/// Create a copy of MyInfoState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? errorMessage = null,Object? matchingHistories = null,Object? feedbackHistories = null,}) {
  return _then(_MyInfoState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as UiStatus,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,matchingHistories: null == matchingHistories ? _self._matchingHistories : matchingHistories // ignore: cast_nullable_to_non_nullable
as List<MatchingHistoryResponse>,feedbackHistories: null == feedbackHistories ? _self._feedbackHistories : feedbackHistories // ignore: cast_nullable_to_non_nullable
as List<FeedbackHistoryResponse>,
  ));
}


}

// dart format on
