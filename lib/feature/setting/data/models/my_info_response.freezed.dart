// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_info_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MyInfoResponse {

 int get id; String get profileImage; String get nickName; String get dormitory; String get studentNumber; int get matching; int get rating; List<String> get routines;
/// Create a copy of MyInfoResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MyInfoResponseCopyWith<MyInfoResponse> get copyWith => _$MyInfoResponseCopyWithImpl<MyInfoResponse>(this as MyInfoResponse, _$identity);

  /// Serializes this MyInfoResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyInfoResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.profileImage, profileImage) || other.profileImage == profileImage)&&(identical(other.nickName, nickName) || other.nickName == nickName)&&(identical(other.dormitory, dormitory) || other.dormitory == dormitory)&&(identical(other.studentNumber, studentNumber) || other.studentNumber == studentNumber)&&(identical(other.matching, matching) || other.matching == matching)&&(identical(other.rating, rating) || other.rating == rating)&&const DeepCollectionEquality().equals(other.routines, routines));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,profileImage,nickName,dormitory,studentNumber,matching,rating,const DeepCollectionEquality().hash(routines));

@override
String toString() {
  return 'MyInfoResponse(id: $id, profileImage: $profileImage, nickName: $nickName, dormitory: $dormitory, studentNumber: $studentNumber, matching: $matching, rating: $rating, routines: $routines)';
}


}

/// @nodoc
abstract mixin class $MyInfoResponseCopyWith<$Res>  {
  factory $MyInfoResponseCopyWith(MyInfoResponse value, $Res Function(MyInfoResponse) _then) = _$MyInfoResponseCopyWithImpl;
@useResult
$Res call({
 int id, String profileImage, String nickName, String dormitory, String studentNumber, int matching, int rating, List<String> routines
});




}
/// @nodoc
class _$MyInfoResponseCopyWithImpl<$Res>
    implements $MyInfoResponseCopyWith<$Res> {
  _$MyInfoResponseCopyWithImpl(this._self, this._then);

  final MyInfoResponse _self;
  final $Res Function(MyInfoResponse) _then;

/// Create a copy of MyInfoResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? profileImage = null,Object? nickName = null,Object? dormitory = null,Object? studentNumber = null,Object? matching = null,Object? rating = null,Object? routines = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,profileImage: null == profileImage ? _self.profileImage : profileImage // ignore: cast_nullable_to_non_nullable
as String,nickName: null == nickName ? _self.nickName : nickName // ignore: cast_nullable_to_non_nullable
as String,dormitory: null == dormitory ? _self.dormitory : dormitory // ignore: cast_nullable_to_non_nullable
as String,studentNumber: null == studentNumber ? _self.studentNumber : studentNumber // ignore: cast_nullable_to_non_nullable
as String,matching: null == matching ? _self.matching : matching // ignore: cast_nullable_to_non_nullable
as int,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,routines: null == routines ? _self.routines : routines // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [MyInfoResponse].
extension MyInfoResponsePatterns on MyInfoResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MyInfoResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MyInfoResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MyInfoResponse value)  $default,){
final _that = this;
switch (_that) {
case _MyInfoResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MyInfoResponse value)?  $default,){
final _that = this;
switch (_that) {
case _MyInfoResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String profileImage,  String nickName,  String dormitory,  String studentNumber,  int matching,  int rating,  List<String> routines)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MyInfoResponse() when $default != null:
return $default(_that.id,_that.profileImage,_that.nickName,_that.dormitory,_that.studentNumber,_that.matching,_that.rating,_that.routines);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String profileImage,  String nickName,  String dormitory,  String studentNumber,  int matching,  int rating,  List<String> routines)  $default,) {final _that = this;
switch (_that) {
case _MyInfoResponse():
return $default(_that.id,_that.profileImage,_that.nickName,_that.dormitory,_that.studentNumber,_that.matching,_that.rating,_that.routines);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String profileImage,  String nickName,  String dormitory,  String studentNumber,  int matching,  int rating,  List<String> routines)?  $default,) {final _that = this;
switch (_that) {
case _MyInfoResponse() when $default != null:
return $default(_that.id,_that.profileImage,_that.nickName,_that.dormitory,_that.studentNumber,_that.matching,_that.rating,_that.routines);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MyInfoResponse implements MyInfoResponse {
  const _MyInfoResponse({required this.id, required this.profileImage, required this.nickName, required this.dormitory, required this.studentNumber, required this.matching, required this.rating, required final  List<String> routines}): _routines = routines;
  factory _MyInfoResponse.fromJson(Map<String, dynamic> json) => _$MyInfoResponseFromJson(json);

@override final  int id;
@override final  String profileImage;
@override final  String nickName;
@override final  String dormitory;
@override final  String studentNumber;
@override final  int matching;
@override final  int rating;
 final  List<String> _routines;
@override List<String> get routines {
  if (_routines is EqualUnmodifiableListView) return _routines;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_routines);
}


/// Create a copy of MyInfoResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MyInfoResponseCopyWith<_MyInfoResponse> get copyWith => __$MyInfoResponseCopyWithImpl<_MyInfoResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MyInfoResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MyInfoResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.profileImage, profileImage) || other.profileImage == profileImage)&&(identical(other.nickName, nickName) || other.nickName == nickName)&&(identical(other.dormitory, dormitory) || other.dormitory == dormitory)&&(identical(other.studentNumber, studentNumber) || other.studentNumber == studentNumber)&&(identical(other.matching, matching) || other.matching == matching)&&(identical(other.rating, rating) || other.rating == rating)&&const DeepCollectionEquality().equals(other._routines, _routines));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,profileImage,nickName,dormitory,studentNumber,matching,rating,const DeepCollectionEquality().hash(_routines));

@override
String toString() {
  return 'MyInfoResponse(id: $id, profileImage: $profileImage, nickName: $nickName, dormitory: $dormitory, studentNumber: $studentNumber, matching: $matching, rating: $rating, routines: $routines)';
}


}

/// @nodoc
abstract mixin class _$MyInfoResponseCopyWith<$Res> implements $MyInfoResponseCopyWith<$Res> {
  factory _$MyInfoResponseCopyWith(_MyInfoResponse value, $Res Function(_MyInfoResponse) _then) = __$MyInfoResponseCopyWithImpl;
@override @useResult
$Res call({
 int id, String profileImage, String nickName, String dormitory, String studentNumber, int matching, int rating, List<String> routines
});




}
/// @nodoc
class __$MyInfoResponseCopyWithImpl<$Res>
    implements _$MyInfoResponseCopyWith<$Res> {
  __$MyInfoResponseCopyWithImpl(this._self, this._then);

  final _MyInfoResponse _self;
  final $Res Function(_MyInfoResponse) _then;

/// Create a copy of MyInfoResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? profileImage = null,Object? nickName = null,Object? dormitory = null,Object? studentNumber = null,Object? matching = null,Object? rating = null,Object? routines = null,}) {
  return _then(_MyInfoResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,profileImage: null == profileImage ? _self.profileImage : profileImage // ignore: cast_nullable_to_non_nullable
as String,nickName: null == nickName ? _self.nickName : nickName // ignore: cast_nullable_to_non_nullable
as String,dormitory: null == dormitory ? _self.dormitory : dormitory // ignore: cast_nullable_to_non_nullable
as String,studentNumber: null == studentNumber ? _self.studentNumber : studentNumber // ignore: cast_nullable_to_non_nullable
as String,matching: null == matching ? _self.matching : matching // ignore: cast_nullable_to_non_nullable
as int,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,routines: null == routines ? _self._routines : routines // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
