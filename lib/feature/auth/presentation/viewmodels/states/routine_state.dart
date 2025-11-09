import 'package:dotori/core/constants/enums/routine.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'routine_state.freezed.dart';

@freezed
abstract class RoutineState with _$RoutineState {
  const factory RoutineState({
    @Default(Smoking.nonSmoker) Smoking smoking,
    @Default(Snoring.nonSnorer) Snoring snoring,
    @Default(NightWork.noNightShift) NightWork nightWork,
    @Default(Homebody.notHomebody) Homebody homebody,
    @Default(MorningShower.noMorningShower) MorningShower morningShower,
    @Default(ShareItems.nonSharing) ShareItems shareItems,
    @Default(CallInDorm.noCalls) CallInDorm callInDorm,
    @Default(EatInDorm.noEating) EatInDorm eatInDorm,
    @Default(Personality.introvert) Personality personality,
    @Default(Cleaning.lessSensitive) Cleaning cleaning,
    @Default(SleepPattern.irregularSleep) SleepPattern sleepPattern,
    @Default(Drinking.drinksRarely) Drinking drinking,
  }) = _RoutineState;
}