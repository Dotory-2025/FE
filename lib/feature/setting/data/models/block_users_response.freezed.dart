// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'block_users_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
BlockUsersResponse _$BlockUsersResponseFromJson(
  Map<String, dynamic> json
) {
    return _BlockUserResponse.fromJson(
      json
    );
}

/// @nodoc
mixin _$BlockUsersResponse {

 int get id; String get profileImage; String get nickName; String get studentNumber;
/// Create a copy of BlockUsersResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BlockUsersResponseCopyWith<BlockUsersResponse> get copyWith => _$BlockUsersResponseCopyWithImpl<BlockUsersResponse>(this as BlockUsersResponse, _$identity);

  /// Serializes this BlockUsersResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BlockUsersResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.profileImage, profileImage) || other.profileImage == profileImage)&&(identical(other.nickName, nickName) || other.nickName == nickName)&&(identical(other.studentNumber, studentNumber) || other.studentNumber == studentNumber));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,profileImage,nickName,studentNumber);

@override
String toString() {
  return 'BlockUsersResponse(id: $id, profileImage: $profileImage, nickName: $nickName, studentNumber: $studentNumber)';
}


}

/// @nodoc
abstract mixin class $BlockUsersResponseCopyWith<$Res>  {
  factory $BlockUsersResponseCopyWith(BlockUsersResponse value, $Res Function(BlockUsersResponse) _then) = _$BlockUsersResponseCopyWithImpl;
@useResult
$Res call({
 int id, String profileImage, String nickName, String studentNumber
});




}
/// @nodoc
class _$BlockUsersResponseCopyWithImpl<$Res>
    implements $BlockUsersResponseCopyWith<$Res> {
  _$BlockUsersResponseCopyWithImpl(this._self, this._then);

  final BlockUsersResponse _self;
  final $Res Function(BlockUsersResponse) _then;

/// Create a copy of BlockUsersResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? profileImage = null,Object? nickName = null,Object? studentNumber = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,profileImage: null == profileImage ? _self.profileImage : profileImage // ignore: cast_nullable_to_non_nullable
as String,nickName: null == nickName ? _self.nickName : nickName // ignore: cast_nullable_to_non_nullable
as String,studentNumber: null == studentNumber ? _self.studentNumber : studentNumber // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [BlockUsersResponse].
extension BlockUsersResponsePatterns on BlockUsersResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BlockUserResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BlockUserResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BlockUserResponse value)  $default,){
final _that = this;
switch (_that) {
case _BlockUserResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BlockUserResponse value)?  $default,){
final _that = this;
switch (_that) {
case _BlockUserResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String profileImage,  String nickName,  String studentNumber)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BlockUserResponse() when $default != null:
return $default(_that.id,_that.profileImage,_that.nickName,_that.studentNumber);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String profileImage,  String nickName,  String studentNumber)  $default,) {final _that = this;
switch (_that) {
case _BlockUserResponse():
return $default(_that.id,_that.profileImage,_that.nickName,_that.studentNumber);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String profileImage,  String nickName,  String studentNumber)?  $default,) {final _that = this;
switch (_that) {
case _BlockUserResponse() when $default != null:
return $default(_that.id,_that.profileImage,_that.nickName,_that.studentNumber);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BlockUserResponse implements BlockUsersResponse {
  const _BlockUserResponse({required this.id, required this.profileImage, required this.nickName, required this.studentNumber});
  factory _BlockUserResponse.fromJson(Map<String, dynamic> json) => _$BlockUserResponseFromJson(json);

@override final  int id;
@override final  String profileImage;
@override final  String nickName;
@override final  String studentNumber;

/// Create a copy of BlockUsersResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BlockUserResponseCopyWith<_BlockUserResponse> get copyWith => __$BlockUserResponseCopyWithImpl<_BlockUserResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BlockUserResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BlockUserResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.profileImage, profileImage) || other.profileImage == profileImage)&&(identical(other.nickName, nickName) || other.nickName == nickName)&&(identical(other.studentNumber, studentNumber) || other.studentNumber == studentNumber));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,profileImage,nickName,studentNumber);

@override
String toString() {
  return 'BlockUsersResponse(id: $id, profileImage: $profileImage, nickName: $nickName, studentNumber: $studentNumber)';
}


}

/// @nodoc
abstract mixin class _$BlockUserResponseCopyWith<$Res> implements $BlockUsersResponseCopyWith<$Res> {
  factory _$BlockUserResponseCopyWith(_BlockUserResponse value, $Res Function(_BlockUserResponse) _then) = __$BlockUserResponseCopyWithImpl;
@override @useResult
$Res call({
 int id, String profileImage, String nickName, String studentNumber
});




}
/// @nodoc
class __$BlockUserResponseCopyWithImpl<$Res>
    implements _$BlockUserResponseCopyWith<$Res> {
  __$BlockUserResponseCopyWithImpl(this._self, this._then);

  final _BlockUserResponse _self;
  final $Res Function(_BlockUserResponse) _then;

/// Create a copy of BlockUsersResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? profileImage = null,Object? nickName = null,Object? studentNumber = null,}) {
  return _then(_BlockUserResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,profileImage: null == profileImage ? _self.profileImage : profileImage // ignore: cast_nullable_to_non_nullable
as String,nickName: null == nickName ? _self.nickName : nickName // ignore: cast_nullable_to_non_nullable
as String,studentNumber: null == studentNumber ? _self.studentNumber : studentNumber // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
