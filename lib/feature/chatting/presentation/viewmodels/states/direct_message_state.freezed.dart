// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'direct_message_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DirectMessageState {

/// --- 🧱 메세지 전송 실패 상태 추가
 UiStatus get status; String get errorMessage; DirectMessageDetailResponse? get directMessages;
/// Create a copy of DirectMessageState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DirectMessageStateCopyWith<DirectMessageState> get copyWith => _$DirectMessageStateCopyWithImpl<DirectMessageState>(this as DirectMessageState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DirectMessageState&&(identical(other.status, status) || other.status == status)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.directMessages, directMessages) || other.directMessages == directMessages));
}


@override
int get hashCode => Object.hash(runtimeType,status,errorMessage,directMessages);

@override
String toString() {
  return 'DirectMessageState(status: $status, errorMessage: $errorMessage, directMessages: $directMessages)';
}


}

/// @nodoc
abstract mixin class $DirectMessageStateCopyWith<$Res>  {
  factory $DirectMessageStateCopyWith(DirectMessageState value, $Res Function(DirectMessageState) _then) = _$DirectMessageStateCopyWithImpl;
@useResult
$Res call({
 UiStatus status, String errorMessage, DirectMessageDetailResponse? directMessages
});


$DirectMessageDetailResponseCopyWith<$Res>? get directMessages;

}
/// @nodoc
class _$DirectMessageStateCopyWithImpl<$Res>
    implements $DirectMessageStateCopyWith<$Res> {
  _$DirectMessageStateCopyWithImpl(this._self, this._then);

  final DirectMessageState _self;
  final $Res Function(DirectMessageState) _then;

/// Create a copy of DirectMessageState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? errorMessage = null,Object? directMessages = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as UiStatus,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,directMessages: freezed == directMessages ? _self.directMessages : directMessages // ignore: cast_nullable_to_non_nullable
as DirectMessageDetailResponse?,
  ));
}
/// Create a copy of DirectMessageState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DirectMessageDetailResponseCopyWith<$Res>? get directMessages {
    if (_self.directMessages == null) {
    return null;
  }

  return $DirectMessageDetailResponseCopyWith<$Res>(_self.directMessages!, (value) {
    return _then(_self.copyWith(directMessages: value));
  });
}
}


/// Adds pattern-matching-related methods to [DirectMessageState].
extension DirectMessageStatePatterns on DirectMessageState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DirectMessageState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DirectMessageState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DirectMessageState value)  $default,){
final _that = this;
switch (_that) {
case _DirectMessageState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DirectMessageState value)?  $default,){
final _that = this;
switch (_that) {
case _DirectMessageState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( UiStatus status,  String errorMessage,  DirectMessageDetailResponse? directMessages)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DirectMessageState() when $default != null:
return $default(_that.status,_that.errorMessage,_that.directMessages);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( UiStatus status,  String errorMessage,  DirectMessageDetailResponse? directMessages)  $default,) {final _that = this;
switch (_that) {
case _DirectMessageState():
return $default(_that.status,_that.errorMessage,_that.directMessages);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( UiStatus status,  String errorMessage,  DirectMessageDetailResponse? directMessages)?  $default,) {final _that = this;
switch (_that) {
case _DirectMessageState() when $default != null:
return $default(_that.status,_that.errorMessage,_that.directMessages);case _:
  return null;

}
}

}

/// @nodoc


class _DirectMessageState implements DirectMessageState {
  const _DirectMessageState({this.status = UiStatus.idle, this.errorMessage = '', this.directMessages});
  

/// --- 🧱 메세지 전송 실패 상태 추가
@override@JsonKey() final  UiStatus status;
@override@JsonKey() final  String errorMessage;
@override final  DirectMessageDetailResponse? directMessages;

/// Create a copy of DirectMessageState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DirectMessageStateCopyWith<_DirectMessageState> get copyWith => __$DirectMessageStateCopyWithImpl<_DirectMessageState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DirectMessageState&&(identical(other.status, status) || other.status == status)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.directMessages, directMessages) || other.directMessages == directMessages));
}


@override
int get hashCode => Object.hash(runtimeType,status,errorMessage,directMessages);

@override
String toString() {
  return 'DirectMessageState(status: $status, errorMessage: $errorMessage, directMessages: $directMessages)';
}


}

/// @nodoc
abstract mixin class _$DirectMessageStateCopyWith<$Res> implements $DirectMessageStateCopyWith<$Res> {
  factory _$DirectMessageStateCopyWith(_DirectMessageState value, $Res Function(_DirectMessageState) _then) = __$DirectMessageStateCopyWithImpl;
@override @useResult
$Res call({
 UiStatus status, String errorMessage, DirectMessageDetailResponse? directMessages
});


@override $DirectMessageDetailResponseCopyWith<$Res>? get directMessages;

}
/// @nodoc
class __$DirectMessageStateCopyWithImpl<$Res>
    implements _$DirectMessageStateCopyWith<$Res> {
  __$DirectMessageStateCopyWithImpl(this._self, this._then);

  final _DirectMessageState _self;
  final $Res Function(_DirectMessageState) _then;

/// Create a copy of DirectMessageState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? errorMessage = null,Object? directMessages = freezed,}) {
  return _then(_DirectMessageState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as UiStatus,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,directMessages: freezed == directMessages ? _self.directMessages : directMessages // ignore: cast_nullable_to_non_nullable
as DirectMessageDetailResponse?,
  ));
}

/// Create a copy of DirectMessageState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DirectMessageDetailResponseCopyWith<$Res>? get directMessages {
    if (_self.directMessages == null) {
    return null;
  }

  return $DirectMessageDetailResponseCopyWith<$Res>(_self.directMessages!, (value) {
    return _then(_self.copyWith(directMessages: value));
  });
}
}

// dart format on
