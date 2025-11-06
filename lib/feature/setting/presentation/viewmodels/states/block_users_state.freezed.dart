// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'block_users_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BlockUsersState {

 UiStatus get status; String get errorMessage; List<BlockUsersResponse> get blockUsers;
/// Create a copy of BlockUsersState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BlockUsersStateCopyWith<BlockUsersState> get copyWith => _$BlockUsersStateCopyWithImpl<BlockUsersState>(this as BlockUsersState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BlockUsersState&&(identical(other.status, status) || other.status == status)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&const DeepCollectionEquality().equals(other.blockUsers, blockUsers));
}


@override
int get hashCode => Object.hash(runtimeType,status,errorMessage,const DeepCollectionEquality().hash(blockUsers));

@override
String toString() {
  return 'BlockUsersState(status: $status, errorMessage: $errorMessage, blockUsers: $blockUsers)';
}


}

/// @nodoc
abstract mixin class $BlockUsersStateCopyWith<$Res>  {
  factory $BlockUsersStateCopyWith(BlockUsersState value, $Res Function(BlockUsersState) _then) = _$BlockUsersStateCopyWithImpl;
@useResult
$Res call({
 UiStatus status, String errorMessage, List<BlockUsersResponse> blockUsers
});




}
/// @nodoc
class _$BlockUsersStateCopyWithImpl<$Res>
    implements $BlockUsersStateCopyWith<$Res> {
  _$BlockUsersStateCopyWithImpl(this._self, this._then);

  final BlockUsersState _self;
  final $Res Function(BlockUsersState) _then;

/// Create a copy of BlockUsersState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? errorMessage = null,Object? blockUsers = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as UiStatus,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,blockUsers: null == blockUsers ? _self.blockUsers : blockUsers // ignore: cast_nullable_to_non_nullable
as List<BlockUsersResponse>,
  ));
}

}


/// Adds pattern-matching-related methods to [BlockUsersState].
extension BlockUsersStatePatterns on BlockUsersState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BlcokUsersState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BlcokUsersState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BlcokUsersState value)  $default,){
final _that = this;
switch (_that) {
case _BlcokUsersState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BlcokUsersState value)?  $default,){
final _that = this;
switch (_that) {
case _BlcokUsersState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( UiStatus status,  String errorMessage,  List<BlockUsersResponse> blockUsers)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BlcokUsersState() when $default != null:
return $default(_that.status,_that.errorMessage,_that.blockUsers);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( UiStatus status,  String errorMessage,  List<BlockUsersResponse> blockUsers)  $default,) {final _that = this;
switch (_that) {
case _BlcokUsersState():
return $default(_that.status,_that.errorMessage,_that.blockUsers);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( UiStatus status,  String errorMessage,  List<BlockUsersResponse> blockUsers)?  $default,) {final _that = this;
switch (_that) {
case _BlcokUsersState() when $default != null:
return $default(_that.status,_that.errorMessage,_that.blockUsers);case _:
  return null;

}
}

}

/// @nodoc


class _BlcokUsersState implements BlockUsersState {
  const _BlcokUsersState({this.status = UiStatus.idle, this.errorMessage = '', final  List<BlockUsersResponse> blockUsers = const []}): _blockUsers = blockUsers;
  

@override@JsonKey() final  UiStatus status;
@override@JsonKey() final  String errorMessage;
 final  List<BlockUsersResponse> _blockUsers;
@override@JsonKey() List<BlockUsersResponse> get blockUsers {
  if (_blockUsers is EqualUnmodifiableListView) return _blockUsers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_blockUsers);
}


/// Create a copy of BlockUsersState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BlcokUsersStateCopyWith<_BlcokUsersState> get copyWith => __$BlcokUsersStateCopyWithImpl<_BlcokUsersState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BlcokUsersState&&(identical(other.status, status) || other.status == status)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&const DeepCollectionEquality().equals(other._blockUsers, _blockUsers));
}


@override
int get hashCode => Object.hash(runtimeType,status,errorMessage,const DeepCollectionEquality().hash(_blockUsers));

@override
String toString() {
  return 'BlockUsersState(status: $status, errorMessage: $errorMessage, blockUsers: $blockUsers)';
}


}

/// @nodoc
abstract mixin class _$BlcokUsersStateCopyWith<$Res> implements $BlockUsersStateCopyWith<$Res> {
  factory _$BlcokUsersStateCopyWith(_BlcokUsersState value, $Res Function(_BlcokUsersState) _then) = __$BlcokUsersStateCopyWithImpl;
@override @useResult
$Res call({
 UiStatus status, String errorMessage, List<BlockUsersResponse> blockUsers
});




}
/// @nodoc
class __$BlcokUsersStateCopyWithImpl<$Res>
    implements _$BlcokUsersStateCopyWith<$Res> {
  __$BlcokUsersStateCopyWithImpl(this._self, this._then);

  final _BlcokUsersState _self;
  final $Res Function(_BlcokUsersState) _then;

/// Create a copy of BlockUsersState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? errorMessage = null,Object? blockUsers = null,}) {
  return _then(_BlcokUsersState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as UiStatus,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,blockUsers: null == blockUsers ? _self._blockUsers : blockUsers // ignore: cast_nullable_to_non_nullable
as List<BlockUsersResponse>,
  ));
}


}

// dart format on
