// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group_message_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GroupMessageState {

/// --- 🧱 메세지 전송 실패 상태 추가
 UiStatus get status; String get errorMessage; GroupMessageDetailResponse? get groupMessages;
/// Create a copy of GroupMessageState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GroupMessageStateCopyWith<GroupMessageState> get copyWith => _$GroupMessageStateCopyWithImpl<GroupMessageState>(this as GroupMessageState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GroupMessageState&&(identical(other.status, status) || other.status == status)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.groupMessages, groupMessages) || other.groupMessages == groupMessages));
}


@override
int get hashCode => Object.hash(runtimeType,status,errorMessage,groupMessages);

@override
String toString() {
  return 'GroupMessageState(status: $status, errorMessage: $errorMessage, groupMessages: $groupMessages)';
}


}

/// @nodoc
abstract mixin class $GroupMessageStateCopyWith<$Res>  {
  factory $GroupMessageStateCopyWith(GroupMessageState value, $Res Function(GroupMessageState) _then) = _$GroupMessageStateCopyWithImpl;
@useResult
$Res call({
 UiStatus status, String errorMessage, GroupMessageDetailResponse? groupMessages
});


$GroupMessageDetailResponseCopyWith<$Res>? get groupMessages;

}
/// @nodoc
class _$GroupMessageStateCopyWithImpl<$Res>
    implements $GroupMessageStateCopyWith<$Res> {
  _$GroupMessageStateCopyWithImpl(this._self, this._then);

  final GroupMessageState _self;
  final $Res Function(GroupMessageState) _then;

/// Create a copy of GroupMessageState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? errorMessage = null,Object? groupMessages = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as UiStatus,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,groupMessages: freezed == groupMessages ? _self.groupMessages : groupMessages // ignore: cast_nullable_to_non_nullable
as GroupMessageDetailResponse?,
  ));
}
/// Create a copy of GroupMessageState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GroupMessageDetailResponseCopyWith<$Res>? get groupMessages {
    if (_self.groupMessages == null) {
    return null;
  }

  return $GroupMessageDetailResponseCopyWith<$Res>(_self.groupMessages!, (value) {
    return _then(_self.copyWith(groupMessages: value));
  });
}
}


/// Adds pattern-matching-related methods to [GroupMessageState].
extension GroupMessageStatePatterns on GroupMessageState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GroupMessageState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GroupMessageState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GroupMessageState value)  $default,){
final _that = this;
switch (_that) {
case _GroupMessageState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GroupMessageState value)?  $default,){
final _that = this;
switch (_that) {
case _GroupMessageState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( UiStatus status,  String errorMessage,  GroupMessageDetailResponse? groupMessages)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GroupMessageState() when $default != null:
return $default(_that.status,_that.errorMessage,_that.groupMessages);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( UiStatus status,  String errorMessage,  GroupMessageDetailResponse? groupMessages)  $default,) {final _that = this;
switch (_that) {
case _GroupMessageState():
return $default(_that.status,_that.errorMessage,_that.groupMessages);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( UiStatus status,  String errorMessage,  GroupMessageDetailResponse? groupMessages)?  $default,) {final _that = this;
switch (_that) {
case _GroupMessageState() when $default != null:
return $default(_that.status,_that.errorMessage,_that.groupMessages);case _:
  return null;

}
}

}

/// @nodoc


class _GroupMessageState implements GroupMessageState {
  const _GroupMessageState({this.status = UiStatus.idle, this.errorMessage = '', this.groupMessages});
  

/// --- 🧱 메세지 전송 실패 상태 추가
@override@JsonKey() final  UiStatus status;
@override@JsonKey() final  String errorMessage;
@override final  GroupMessageDetailResponse? groupMessages;

/// Create a copy of GroupMessageState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GroupMessageStateCopyWith<_GroupMessageState> get copyWith => __$GroupMessageStateCopyWithImpl<_GroupMessageState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GroupMessageState&&(identical(other.status, status) || other.status == status)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.groupMessages, groupMessages) || other.groupMessages == groupMessages));
}


@override
int get hashCode => Object.hash(runtimeType,status,errorMessage,groupMessages);

@override
String toString() {
  return 'GroupMessageState(status: $status, errorMessage: $errorMessage, groupMessages: $groupMessages)';
}


}

/// @nodoc
abstract mixin class _$GroupMessageStateCopyWith<$Res> implements $GroupMessageStateCopyWith<$Res> {
  factory _$GroupMessageStateCopyWith(_GroupMessageState value, $Res Function(_GroupMessageState) _then) = __$GroupMessageStateCopyWithImpl;
@override @useResult
$Res call({
 UiStatus status, String errorMessage, GroupMessageDetailResponse? groupMessages
});


@override $GroupMessageDetailResponseCopyWith<$Res>? get groupMessages;

}
/// @nodoc
class __$GroupMessageStateCopyWithImpl<$Res>
    implements _$GroupMessageStateCopyWith<$Res> {
  __$GroupMessageStateCopyWithImpl(this._self, this._then);

  final _GroupMessageState _self;
  final $Res Function(_GroupMessageState) _then;

/// Create a copy of GroupMessageState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? errorMessage = null,Object? groupMessages = freezed,}) {
  return _then(_GroupMessageState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as UiStatus,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,groupMessages: freezed == groupMessages ? _self.groupMessages : groupMessages // ignore: cast_nullable_to_non_nullable
as GroupMessageDetailResponse?,
  ));
}

/// Create a copy of GroupMessageState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GroupMessageDetailResponseCopyWith<$Res>? get groupMessages {
    if (_self.groupMessages == null) {
    return null;
  }

  return $GroupMessageDetailResponseCopyWith<$Res>(_self.groupMessages!, (value) {
    return _then(_self.copyWith(groupMessages: value));
  });
}
}

// dart format on
