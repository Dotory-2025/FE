// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invitation_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$InvitationState {

 UiStatus get status; List<InvitationResponse> get invitations; String get errorMessage;
/// Create a copy of InvitationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InvitationStateCopyWith<InvitationState> get copyWith => _$InvitationStateCopyWithImpl<InvitationState>(this as InvitationState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvitationState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.invitations, invitations)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(invitations),errorMessage);

@override
String toString() {
  return 'InvitationState(status: $status, invitations: $invitations, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $InvitationStateCopyWith<$Res>  {
  factory $InvitationStateCopyWith(InvitationState value, $Res Function(InvitationState) _then) = _$InvitationStateCopyWithImpl;
@useResult
$Res call({
 UiStatus status, List<InvitationResponse> invitations, String errorMessage
});




}
/// @nodoc
class _$InvitationStateCopyWithImpl<$Res>
    implements $InvitationStateCopyWith<$Res> {
  _$InvitationStateCopyWithImpl(this._self, this._then);

  final InvitationState _self;
  final $Res Function(InvitationState) _then;

/// Create a copy of InvitationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? invitations = null,Object? errorMessage = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as UiStatus,invitations: null == invitations ? _self.invitations : invitations // ignore: cast_nullable_to_non_nullable
as List<InvitationResponse>,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [InvitationState].
extension InvitationStatePatterns on InvitationState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InvitationState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InvitationState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InvitationState value)  $default,){
final _that = this;
switch (_that) {
case _InvitationState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InvitationState value)?  $default,){
final _that = this;
switch (_that) {
case _InvitationState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( UiStatus status,  List<InvitationResponse> invitations,  String errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InvitationState() when $default != null:
return $default(_that.status,_that.invitations,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( UiStatus status,  List<InvitationResponse> invitations,  String errorMessage)  $default,) {final _that = this;
switch (_that) {
case _InvitationState():
return $default(_that.status,_that.invitations,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( UiStatus status,  List<InvitationResponse> invitations,  String errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _InvitationState() when $default != null:
return $default(_that.status,_that.invitations,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _InvitationState implements InvitationState {
  const _InvitationState({this.status = UiStatus.idle, final  List<InvitationResponse> invitations = const [], this.errorMessage = ''}): _invitations = invitations;
  

@override@JsonKey() final  UiStatus status;
 final  List<InvitationResponse> _invitations;
@override@JsonKey() List<InvitationResponse> get invitations {
  if (_invitations is EqualUnmodifiableListView) return _invitations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_invitations);
}

@override@JsonKey() final  String errorMessage;

/// Create a copy of InvitationState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InvitationStateCopyWith<_InvitationState> get copyWith => __$InvitationStateCopyWithImpl<_InvitationState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InvitationState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._invitations, _invitations)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_invitations),errorMessage);

@override
String toString() {
  return 'InvitationState(status: $status, invitations: $invitations, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$InvitationStateCopyWith<$Res> implements $InvitationStateCopyWith<$Res> {
  factory _$InvitationStateCopyWith(_InvitationState value, $Res Function(_InvitationState) _then) = __$InvitationStateCopyWithImpl;
@override @useResult
$Res call({
 UiStatus status, List<InvitationResponse> invitations, String errorMessage
});




}
/// @nodoc
class __$InvitationStateCopyWithImpl<$Res>
    implements _$InvitationStateCopyWith<$Res> {
  __$InvitationStateCopyWithImpl(this._self, this._then);

  final _InvitationState _self;
  final $Res Function(_InvitationState) _then;

/// Create a copy of InvitationState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? invitations = null,Object? errorMessage = null,}) {
  return _then(_InvitationState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as UiStatus,invitations: null == invitations ? _self._invitations : invitations // ignore: cast_nullable_to_non_nullable
as List<InvitationResponse>,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
