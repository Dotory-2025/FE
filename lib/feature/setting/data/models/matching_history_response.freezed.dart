// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'matching_history_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MatchingHistoryResponse {

 int get id; String get title; String get dormitory; String get semester; List<String> get tags;
/// Create a copy of MatchingHistoryResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MatchingHistoryResponseCopyWith<MatchingHistoryResponse> get copyWith => _$MatchingHistoryResponseCopyWithImpl<MatchingHistoryResponse>(this as MatchingHistoryResponse, _$identity);

  /// Serializes this MatchingHistoryResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MatchingHistoryResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.dormitory, dormitory) || other.dormitory == dormitory)&&(identical(other.semester, semester) || other.semester == semester)&&const DeepCollectionEquality().equals(other.tags, tags));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,dormitory,semester,const DeepCollectionEquality().hash(tags));

@override
String toString() {
  return 'MatchingHistoryResponse(id: $id, title: $title, dormitory: $dormitory, semester: $semester, tags: $tags)';
}


}

/// @nodoc
abstract mixin class $MatchingHistoryResponseCopyWith<$Res>  {
  factory $MatchingHistoryResponseCopyWith(MatchingHistoryResponse value, $Res Function(MatchingHistoryResponse) _then) = _$MatchingHistoryResponseCopyWithImpl;
@useResult
$Res call({
 int id, String title, String dormitory, String semester, List<String> tags
});




}
/// @nodoc
class _$MatchingHistoryResponseCopyWithImpl<$Res>
    implements $MatchingHistoryResponseCopyWith<$Res> {
  _$MatchingHistoryResponseCopyWithImpl(this._self, this._then);

  final MatchingHistoryResponse _self;
  final $Res Function(MatchingHistoryResponse) _then;

/// Create a copy of MatchingHistoryResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? dormitory = null,Object? semester = null,Object? tags = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,dormitory: null == dormitory ? _self.dormitory : dormitory // ignore: cast_nullable_to_non_nullable
as String,semester: null == semester ? _self.semester : semester // ignore: cast_nullable_to_non_nullable
as String,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [MatchingHistoryResponse].
extension MatchingHistoryResponsePatterns on MatchingHistoryResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MatchingHistoryResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MatchingHistoryResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MatchingHistoryResponse value)  $default,){
final _that = this;
switch (_that) {
case _MatchingHistoryResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MatchingHistoryResponse value)?  $default,){
final _that = this;
switch (_that) {
case _MatchingHistoryResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String title,  String dormitory,  String semester,  List<String> tags)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MatchingHistoryResponse() when $default != null:
return $default(_that.id,_that.title,_that.dormitory,_that.semester,_that.tags);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String title,  String dormitory,  String semester,  List<String> tags)  $default,) {final _that = this;
switch (_that) {
case _MatchingHistoryResponse():
return $default(_that.id,_that.title,_that.dormitory,_that.semester,_that.tags);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String title,  String dormitory,  String semester,  List<String> tags)?  $default,) {final _that = this;
switch (_that) {
case _MatchingHistoryResponse() when $default != null:
return $default(_that.id,_that.title,_that.dormitory,_that.semester,_that.tags);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MatchingHistoryResponse implements MatchingHistoryResponse {
  const _MatchingHistoryResponse({required this.id, required this.title, required this.dormitory, required this.semester, required final  List<String> tags}): _tags = tags;
  factory _MatchingHistoryResponse.fromJson(Map<String, dynamic> json) => _$MatchingHistoryResponseFromJson(json);

@override final  int id;
@override final  String title;
@override final  String dormitory;
@override final  String semester;
 final  List<String> _tags;
@override List<String> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}


/// Create a copy of MatchingHistoryResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MatchingHistoryResponseCopyWith<_MatchingHistoryResponse> get copyWith => __$MatchingHistoryResponseCopyWithImpl<_MatchingHistoryResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MatchingHistoryResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MatchingHistoryResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.dormitory, dormitory) || other.dormitory == dormitory)&&(identical(other.semester, semester) || other.semester == semester)&&const DeepCollectionEquality().equals(other._tags, _tags));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,dormitory,semester,const DeepCollectionEquality().hash(_tags));

@override
String toString() {
  return 'MatchingHistoryResponse(id: $id, title: $title, dormitory: $dormitory, semester: $semester, tags: $tags)';
}


}

/// @nodoc
abstract mixin class _$MatchingHistoryResponseCopyWith<$Res> implements $MatchingHistoryResponseCopyWith<$Res> {
  factory _$MatchingHistoryResponseCopyWith(_MatchingHistoryResponse value, $Res Function(_MatchingHistoryResponse) _then) = __$MatchingHistoryResponseCopyWithImpl;
@override @useResult
$Res call({
 int id, String title, String dormitory, String semester, List<String> tags
});




}
/// @nodoc
class __$MatchingHistoryResponseCopyWithImpl<$Res>
    implements _$MatchingHistoryResponseCopyWith<$Res> {
  __$MatchingHistoryResponseCopyWithImpl(this._self, this._then);

  final _MatchingHistoryResponse _self;
  final $Res Function(_MatchingHistoryResponse) _then;

/// Create a copy of MatchingHistoryResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? dormitory = null,Object? semester = null,Object? tags = null,}) {
  return _then(_MatchingHistoryResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,dormitory: null == dormitory ? _self.dormitory : dormitory // ignore: cast_nullable_to_non_nullable
as String,semester: null == semester ? _self.semester : semester // ignore: cast_nullable_to_non_nullable
as String,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
