// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'routine_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RoutineState {

 Smoking get smoking; Snoring get snoring; NightWork get nightWork; Homebody get homebody; MorningShower get morningShower; ShareItems get shareItems; CallInDorm get callInDorm; EatInDorm get eatInDorm; Personality get personality; Cleaning get cleaning; SleepPattern get sleepPattern; Drinking get drinking;
/// Create a copy of RoutineState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RoutineStateCopyWith<RoutineState> get copyWith => _$RoutineStateCopyWithImpl<RoutineState>(this as RoutineState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RoutineState&&(identical(other.smoking, smoking) || other.smoking == smoking)&&(identical(other.snoring, snoring) || other.snoring == snoring)&&(identical(other.nightWork, nightWork) || other.nightWork == nightWork)&&(identical(other.homebody, homebody) || other.homebody == homebody)&&(identical(other.morningShower, morningShower) || other.morningShower == morningShower)&&(identical(other.shareItems, shareItems) || other.shareItems == shareItems)&&(identical(other.callInDorm, callInDorm) || other.callInDorm == callInDorm)&&(identical(other.eatInDorm, eatInDorm) || other.eatInDorm == eatInDorm)&&(identical(other.personality, personality) || other.personality == personality)&&(identical(other.cleaning, cleaning) || other.cleaning == cleaning)&&(identical(other.sleepPattern, sleepPattern) || other.sleepPattern == sleepPattern)&&(identical(other.drinking, drinking) || other.drinking == drinking));
}


@override
int get hashCode => Object.hash(runtimeType,smoking,snoring,nightWork,homebody,morningShower,shareItems,callInDorm,eatInDorm,personality,cleaning,sleepPattern,drinking);

@override
String toString() {
  return 'RoutineState(smoking: $smoking, snoring: $snoring, nightWork: $nightWork, homebody: $homebody, morningShower: $morningShower, shareItems: $shareItems, callInDorm: $callInDorm, eatInDorm: $eatInDorm, personality: $personality, cleaning: $cleaning, sleepPattern: $sleepPattern, drinking: $drinking)';
}


}

/// @nodoc
abstract mixin class $RoutineStateCopyWith<$Res>  {
  factory $RoutineStateCopyWith(RoutineState value, $Res Function(RoutineState) _then) = _$RoutineStateCopyWithImpl;
@useResult
$Res call({
 Smoking smoking, Snoring snoring, NightWork nightWork, Homebody homebody, MorningShower morningShower, ShareItems shareItems, CallInDorm callInDorm, EatInDorm eatInDorm, Personality personality, Cleaning cleaning, SleepPattern sleepPattern, Drinking drinking
});




}
/// @nodoc
class _$RoutineStateCopyWithImpl<$Res>
    implements $RoutineStateCopyWith<$Res> {
  _$RoutineStateCopyWithImpl(this._self, this._then);

  final RoutineState _self;
  final $Res Function(RoutineState) _then;

/// Create a copy of RoutineState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? smoking = null,Object? snoring = null,Object? nightWork = null,Object? homebody = null,Object? morningShower = null,Object? shareItems = null,Object? callInDorm = null,Object? eatInDorm = null,Object? personality = null,Object? cleaning = null,Object? sleepPattern = null,Object? drinking = null,}) {
  return _then(_self.copyWith(
smoking: null == smoking ? _self.smoking : smoking // ignore: cast_nullable_to_non_nullable
as Smoking,snoring: null == snoring ? _self.snoring : snoring // ignore: cast_nullable_to_non_nullable
as Snoring,nightWork: null == nightWork ? _self.nightWork : nightWork // ignore: cast_nullable_to_non_nullable
as NightWork,homebody: null == homebody ? _self.homebody : homebody // ignore: cast_nullable_to_non_nullable
as Homebody,morningShower: null == morningShower ? _self.morningShower : morningShower // ignore: cast_nullable_to_non_nullable
as MorningShower,shareItems: null == shareItems ? _self.shareItems : shareItems // ignore: cast_nullable_to_non_nullable
as ShareItems,callInDorm: null == callInDorm ? _self.callInDorm : callInDorm // ignore: cast_nullable_to_non_nullable
as CallInDorm,eatInDorm: null == eatInDorm ? _self.eatInDorm : eatInDorm // ignore: cast_nullable_to_non_nullable
as EatInDorm,personality: null == personality ? _self.personality : personality // ignore: cast_nullable_to_non_nullable
as Personality,cleaning: null == cleaning ? _self.cleaning : cleaning // ignore: cast_nullable_to_non_nullable
as Cleaning,sleepPattern: null == sleepPattern ? _self.sleepPattern : sleepPattern // ignore: cast_nullable_to_non_nullable
as SleepPattern,drinking: null == drinking ? _self.drinking : drinking // ignore: cast_nullable_to_non_nullable
as Drinking,
  ));
}

}


/// Adds pattern-matching-related methods to [RoutineState].
extension RoutineStatePatterns on RoutineState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RoutineState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RoutineState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RoutineState value)  $default,){
final _that = this;
switch (_that) {
case _RoutineState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RoutineState value)?  $default,){
final _that = this;
switch (_that) {
case _RoutineState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Smoking smoking,  Snoring snoring,  NightWork nightWork,  Homebody homebody,  MorningShower morningShower,  ShareItems shareItems,  CallInDorm callInDorm,  EatInDorm eatInDorm,  Personality personality,  Cleaning cleaning,  SleepPattern sleepPattern,  Drinking drinking)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RoutineState() when $default != null:
return $default(_that.smoking,_that.snoring,_that.nightWork,_that.homebody,_that.morningShower,_that.shareItems,_that.callInDorm,_that.eatInDorm,_that.personality,_that.cleaning,_that.sleepPattern,_that.drinking);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Smoking smoking,  Snoring snoring,  NightWork nightWork,  Homebody homebody,  MorningShower morningShower,  ShareItems shareItems,  CallInDorm callInDorm,  EatInDorm eatInDorm,  Personality personality,  Cleaning cleaning,  SleepPattern sleepPattern,  Drinking drinking)  $default,) {final _that = this;
switch (_that) {
case _RoutineState():
return $default(_that.smoking,_that.snoring,_that.nightWork,_that.homebody,_that.morningShower,_that.shareItems,_that.callInDorm,_that.eatInDorm,_that.personality,_that.cleaning,_that.sleepPattern,_that.drinking);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Smoking smoking,  Snoring snoring,  NightWork nightWork,  Homebody homebody,  MorningShower morningShower,  ShareItems shareItems,  CallInDorm callInDorm,  EatInDorm eatInDorm,  Personality personality,  Cleaning cleaning,  SleepPattern sleepPattern,  Drinking drinking)?  $default,) {final _that = this;
switch (_that) {
case _RoutineState() when $default != null:
return $default(_that.smoking,_that.snoring,_that.nightWork,_that.homebody,_that.morningShower,_that.shareItems,_that.callInDorm,_that.eatInDorm,_that.personality,_that.cleaning,_that.sleepPattern,_that.drinking);case _:
  return null;

}
}

}

/// @nodoc


class _RoutineState implements RoutineState {
  const _RoutineState({this.smoking = Smoking.nonSmoker, this.snoring = Snoring.nonSnorer, this.nightWork = NightWork.noNightShift, this.homebody = Homebody.notHomebody, this.morningShower = MorningShower.noMorningShower, this.shareItems = ShareItems.nonSharing, this.callInDorm = CallInDorm.noCalls, this.eatInDorm = EatInDorm.noEating, this.personality = Personality.introvert, this.cleaning = Cleaning.lessSensitive, this.sleepPattern = SleepPattern.irregularSleep, this.drinking = Drinking.drinksRarely});
  

@override@JsonKey() final  Smoking smoking;
@override@JsonKey() final  Snoring snoring;
@override@JsonKey() final  NightWork nightWork;
@override@JsonKey() final  Homebody homebody;
@override@JsonKey() final  MorningShower morningShower;
@override@JsonKey() final  ShareItems shareItems;
@override@JsonKey() final  CallInDorm callInDorm;
@override@JsonKey() final  EatInDorm eatInDorm;
@override@JsonKey() final  Personality personality;
@override@JsonKey() final  Cleaning cleaning;
@override@JsonKey() final  SleepPattern sleepPattern;
@override@JsonKey() final  Drinking drinking;

/// Create a copy of RoutineState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RoutineStateCopyWith<_RoutineState> get copyWith => __$RoutineStateCopyWithImpl<_RoutineState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RoutineState&&(identical(other.smoking, smoking) || other.smoking == smoking)&&(identical(other.snoring, snoring) || other.snoring == snoring)&&(identical(other.nightWork, nightWork) || other.nightWork == nightWork)&&(identical(other.homebody, homebody) || other.homebody == homebody)&&(identical(other.morningShower, morningShower) || other.morningShower == morningShower)&&(identical(other.shareItems, shareItems) || other.shareItems == shareItems)&&(identical(other.callInDorm, callInDorm) || other.callInDorm == callInDorm)&&(identical(other.eatInDorm, eatInDorm) || other.eatInDorm == eatInDorm)&&(identical(other.personality, personality) || other.personality == personality)&&(identical(other.cleaning, cleaning) || other.cleaning == cleaning)&&(identical(other.sleepPattern, sleepPattern) || other.sleepPattern == sleepPattern)&&(identical(other.drinking, drinking) || other.drinking == drinking));
}


@override
int get hashCode => Object.hash(runtimeType,smoking,snoring,nightWork,homebody,morningShower,shareItems,callInDorm,eatInDorm,personality,cleaning,sleepPattern,drinking);

@override
String toString() {
  return 'RoutineState(smoking: $smoking, snoring: $snoring, nightWork: $nightWork, homebody: $homebody, morningShower: $morningShower, shareItems: $shareItems, callInDorm: $callInDorm, eatInDorm: $eatInDorm, personality: $personality, cleaning: $cleaning, sleepPattern: $sleepPattern, drinking: $drinking)';
}


}

/// @nodoc
abstract mixin class _$RoutineStateCopyWith<$Res> implements $RoutineStateCopyWith<$Res> {
  factory _$RoutineStateCopyWith(_RoutineState value, $Res Function(_RoutineState) _then) = __$RoutineStateCopyWithImpl;
@override @useResult
$Res call({
 Smoking smoking, Snoring snoring, NightWork nightWork, Homebody homebody, MorningShower morningShower, ShareItems shareItems, CallInDorm callInDorm, EatInDorm eatInDorm, Personality personality, Cleaning cleaning, SleepPattern sleepPattern, Drinking drinking
});




}
/// @nodoc
class __$RoutineStateCopyWithImpl<$Res>
    implements _$RoutineStateCopyWith<$Res> {
  __$RoutineStateCopyWithImpl(this._self, this._then);

  final _RoutineState _self;
  final $Res Function(_RoutineState) _then;

/// Create a copy of RoutineState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? smoking = null,Object? snoring = null,Object? nightWork = null,Object? homebody = null,Object? morningShower = null,Object? shareItems = null,Object? callInDorm = null,Object? eatInDorm = null,Object? personality = null,Object? cleaning = null,Object? sleepPattern = null,Object? drinking = null,}) {
  return _then(_RoutineState(
smoking: null == smoking ? _self.smoking : smoking // ignore: cast_nullable_to_non_nullable
as Smoking,snoring: null == snoring ? _self.snoring : snoring // ignore: cast_nullable_to_non_nullable
as Snoring,nightWork: null == nightWork ? _self.nightWork : nightWork // ignore: cast_nullable_to_non_nullable
as NightWork,homebody: null == homebody ? _self.homebody : homebody // ignore: cast_nullable_to_non_nullable
as Homebody,morningShower: null == morningShower ? _self.morningShower : morningShower // ignore: cast_nullable_to_non_nullable
as MorningShower,shareItems: null == shareItems ? _self.shareItems : shareItems // ignore: cast_nullable_to_non_nullable
as ShareItems,callInDorm: null == callInDorm ? _self.callInDorm : callInDorm // ignore: cast_nullable_to_non_nullable
as CallInDorm,eatInDorm: null == eatInDorm ? _self.eatInDorm : eatInDorm // ignore: cast_nullable_to_non_nullable
as EatInDorm,personality: null == personality ? _self.personality : personality // ignore: cast_nullable_to_non_nullable
as Personality,cleaning: null == cleaning ? _self.cleaning : cleaning // ignore: cast_nullable_to_non_nullable
as Cleaning,sleepPattern: null == sleepPattern ? _self.sleepPattern : sleepPattern // ignore: cast_nullable_to_non_nullable
as SleepPattern,drinking: null == drinking ? _self.drinking : drinking // ignore: cast_nullable_to_non_nullable
as Drinking,
  ));
}


}

// dart format on
