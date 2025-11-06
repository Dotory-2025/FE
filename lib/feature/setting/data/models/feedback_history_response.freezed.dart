// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feedback_history_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FeedbackHistoryResponse {

 String get category; int get count;
/// Create a copy of FeedbackHistoryResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FeedbackHistoryResponseCopyWith<FeedbackHistoryResponse> get copyWith => _$FeedbackHistoryResponseCopyWithImpl<FeedbackHistoryResponse>(this as FeedbackHistoryResponse, _$identity);

  /// Serializes this FeedbackHistoryResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeedbackHistoryResponse&&(identical(other.category, category) || other.category == category)&&(identical(other.count, count) || other.count == count));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,category,count);

@override
String toString() {
  return 'FeedbackHistoryResponse(category: $category, count: $count)';
}


}

/// @nodoc
abstract mixin class $FeedbackHistoryResponseCopyWith<$Res>  {
  factory $FeedbackHistoryResponseCopyWith(FeedbackHistoryResponse value, $Res Function(FeedbackHistoryResponse) _then) = _$FeedbackHistoryResponseCopyWithImpl;
@useResult
$Res call({
 String category, int count
});




}
/// @nodoc
class _$FeedbackHistoryResponseCopyWithImpl<$Res>
    implements $FeedbackHistoryResponseCopyWith<$Res> {
  _$FeedbackHistoryResponseCopyWithImpl(this._self, this._then);

  final FeedbackHistoryResponse _self;
  final $Res Function(FeedbackHistoryResponse) _then;

/// Create a copy of FeedbackHistoryResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? category = null,Object? count = null,}) {
  return _then(_self.copyWith(
category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [FeedbackHistoryResponse].
extension FeedbackHistoryResponsePatterns on FeedbackHistoryResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FeedbackHistoryResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FeedbackHistoryResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FeedbackHistoryResponse value)  $default,){
final _that = this;
switch (_that) {
case _FeedbackHistoryResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FeedbackHistoryResponse value)?  $default,){
final _that = this;
switch (_that) {
case _FeedbackHistoryResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String category,  int count)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FeedbackHistoryResponse() when $default != null:
return $default(_that.category,_that.count);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String category,  int count)  $default,) {final _that = this;
switch (_that) {
case _FeedbackHistoryResponse():
return $default(_that.category,_that.count);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String category,  int count)?  $default,) {final _that = this;
switch (_that) {
case _FeedbackHistoryResponse() when $default != null:
return $default(_that.category,_that.count);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FeedbackHistoryResponse implements FeedbackHistoryResponse {
  const _FeedbackHistoryResponse({required this.category, required this.count});
  factory _FeedbackHistoryResponse.fromJson(Map<String, dynamic> json) => _$FeedbackHistoryResponseFromJson(json);

@override final  String category;
@override final  int count;

/// Create a copy of FeedbackHistoryResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FeedbackHistoryResponseCopyWith<_FeedbackHistoryResponse> get copyWith => __$FeedbackHistoryResponseCopyWithImpl<_FeedbackHistoryResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FeedbackHistoryResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FeedbackHistoryResponse&&(identical(other.category, category) || other.category == category)&&(identical(other.count, count) || other.count == count));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,category,count);

@override
String toString() {
  return 'FeedbackHistoryResponse(category: $category, count: $count)';
}


}

/// @nodoc
abstract mixin class _$FeedbackHistoryResponseCopyWith<$Res> implements $FeedbackHistoryResponseCopyWith<$Res> {
  factory _$FeedbackHistoryResponseCopyWith(_FeedbackHistoryResponse value, $Res Function(_FeedbackHistoryResponse) _then) = __$FeedbackHistoryResponseCopyWithImpl;
@override @useResult
$Res call({
 String category, int count
});




}
/// @nodoc
class __$FeedbackHistoryResponseCopyWithImpl<$Res>
    implements _$FeedbackHistoryResponseCopyWith<$Res> {
  __$FeedbackHistoryResponseCopyWithImpl(this._self, this._then);

  final _FeedbackHistoryResponse _self;
  final $Res Function(_FeedbackHistoryResponse) _then;

/// Create a copy of FeedbackHistoryResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? category = null,Object? count = null,}) {
  return _then(_FeedbackHistoryResponse(
category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
