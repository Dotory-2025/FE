// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chatting_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ChattingState {

 UiStatus get status; String get errorMessage; List<DirectMessageResponse> get directMessages; List<GroupMessageResponse> get groupMessages;
/// Create a copy of ChattingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChattingStateCopyWith<ChattingState> get copyWith => _$ChattingStateCopyWithImpl<ChattingState>(this as ChattingState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChattingState&&(identical(other.status, status) || other.status == status)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&const DeepCollectionEquality().equals(other.directMessages, directMessages)&&const DeepCollectionEquality().equals(other.groupMessages, groupMessages));
}


@override
int get hashCode => Object.hash(runtimeType,status,errorMessage,const DeepCollectionEquality().hash(directMessages),const DeepCollectionEquality().hash(groupMessages));

@override
String toString() {
  return 'ChattingState(status: $status, errorMessage: $errorMessage, directMessages: $directMessages, groupMessages: $groupMessages)';
}


}

/// @nodoc
abstract mixin class $ChattingStateCopyWith<$Res>  {
  factory $ChattingStateCopyWith(ChattingState value, $Res Function(ChattingState) _then) = _$ChattingStateCopyWithImpl;
@useResult
$Res call({
 UiStatus status, String errorMessage, List<DirectMessageResponse> directMessages, List<GroupMessageResponse> groupMessages
});




}
/// @nodoc
class _$ChattingStateCopyWithImpl<$Res>
    implements $ChattingStateCopyWith<$Res> {
  _$ChattingStateCopyWithImpl(this._self, this._then);

  final ChattingState _self;
  final $Res Function(ChattingState) _then;

/// Create a copy of ChattingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? errorMessage = null,Object? directMessages = null,Object? groupMessages = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as UiStatus,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,directMessages: null == directMessages ? _self.directMessages : directMessages // ignore: cast_nullable_to_non_nullable
as List<DirectMessageResponse>,groupMessages: null == groupMessages ? _self.groupMessages : groupMessages // ignore: cast_nullable_to_non_nullable
as List<GroupMessageResponse>,
  ));
}

}


/// Adds pattern-matching-related methods to [ChattingState].
extension ChattingStatePatterns on ChattingState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChattingState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChattingState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChattingState value)  $default,){
final _that = this;
switch (_that) {
case _ChattingState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChattingState value)?  $default,){
final _that = this;
switch (_that) {
case _ChattingState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( UiStatus status,  String errorMessage,  List<DirectMessageResponse> directMessages,  List<GroupMessageResponse> groupMessages)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChattingState() when $default != null:
return $default(_that.status,_that.errorMessage,_that.directMessages,_that.groupMessages);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( UiStatus status,  String errorMessage,  List<DirectMessageResponse> directMessages,  List<GroupMessageResponse> groupMessages)  $default,) {final _that = this;
switch (_that) {
case _ChattingState():
return $default(_that.status,_that.errorMessage,_that.directMessages,_that.groupMessages);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( UiStatus status,  String errorMessage,  List<DirectMessageResponse> directMessages,  List<GroupMessageResponse> groupMessages)?  $default,) {final _that = this;
switch (_that) {
case _ChattingState() when $default != null:
return $default(_that.status,_that.errorMessage,_that.directMessages,_that.groupMessages);case _:
  return null;

}
}

}

/// @nodoc


class _ChattingState implements ChattingState {
  const _ChattingState({this.status = UiStatus.idle, this.errorMessage = '', final  List<DirectMessageResponse> directMessages = const [], final  List<GroupMessageResponse> groupMessages = const []}): _directMessages = directMessages,_groupMessages = groupMessages;
  

@override@JsonKey() final  UiStatus status;
@override@JsonKey() final  String errorMessage;
 final  List<DirectMessageResponse> _directMessages;
@override@JsonKey() List<DirectMessageResponse> get directMessages {
  if (_directMessages is EqualUnmodifiableListView) return _directMessages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_directMessages);
}

 final  List<GroupMessageResponse> _groupMessages;
@override@JsonKey() List<GroupMessageResponse> get groupMessages {
  if (_groupMessages is EqualUnmodifiableListView) return _groupMessages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_groupMessages);
}


/// Create a copy of ChattingState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChattingStateCopyWith<_ChattingState> get copyWith => __$ChattingStateCopyWithImpl<_ChattingState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChattingState&&(identical(other.status, status) || other.status == status)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&const DeepCollectionEquality().equals(other._directMessages, _directMessages)&&const DeepCollectionEquality().equals(other._groupMessages, _groupMessages));
}


@override
int get hashCode => Object.hash(runtimeType,status,errorMessage,const DeepCollectionEquality().hash(_directMessages),const DeepCollectionEquality().hash(_groupMessages));

@override
String toString() {
  return 'ChattingState(status: $status, errorMessage: $errorMessage, directMessages: $directMessages, groupMessages: $groupMessages)';
}


}

/// @nodoc
abstract mixin class _$ChattingStateCopyWith<$Res> implements $ChattingStateCopyWith<$Res> {
  factory _$ChattingStateCopyWith(_ChattingState value, $Res Function(_ChattingState) _then) = __$ChattingStateCopyWithImpl;
@override @useResult
$Res call({
 UiStatus status, String errorMessage, List<DirectMessageResponse> directMessages, List<GroupMessageResponse> groupMessages
});




}
/// @nodoc
class __$ChattingStateCopyWithImpl<$Res>
    implements _$ChattingStateCopyWith<$Res> {
  __$ChattingStateCopyWithImpl(this._self, this._then);

  final _ChattingState _self;
  final $Res Function(_ChattingState) _then;

/// Create a copy of ChattingState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? errorMessage = null,Object? directMessages = null,Object? groupMessages = null,}) {
  return _then(_ChattingState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as UiStatus,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,directMessages: null == directMessages ? _self._directMessages : directMessages // ignore: cast_nullable_to_non_nullable
as List<DirectMessageResponse>,groupMessages: null == groupMessages ? _self._groupMessages : groupMessages // ignore: cast_nullable_to_non_nullable
as List<GroupMessageResponse>,
  ));
}


}

// dart format on
