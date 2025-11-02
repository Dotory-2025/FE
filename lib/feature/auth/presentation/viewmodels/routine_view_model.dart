import 'package:dotori/core/constants/enums/routine.dart';
import 'package:dotori/feature/auth/presentation/viewmodels/states/routine_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'routine_view_model.g.dart';

@riverpod
class RoutineViewModel extends _$RoutineViewModel {
  @override
  RoutineState build() {
    return RoutineState();
  }

  void toggle(RoutineCategory category) {
    switch (category) {
      case RoutineCategory.smoking:
        state = state.copyWith(
          smoking: state.smoking == Smoking.smoker
              ? Smoking.nonSmoker
              : Smoking.smoker,
        );
        break;

      case RoutineCategory.snoring:
        state = state.copyWith(
          snoring: state.snoring == Snoring.snorer
              ? Snoring.nonSnorer
              : Snoring.snorer,
        );
        break;

      case RoutineCategory.nightWork:
        state = state.copyWith(
          nightWork: state.nightWork == NightWork.nightShift
              ? NightWork.noNightShift
              : NightWork.nightShift,
        );
        break;

      case RoutineCategory.homebody:
        state = state.copyWith(
          homebody: state.homebody == Homebody.homebody
              ? Homebody.notHomebody
              : Homebody.homebody,
        );
        break;

      case RoutineCategory.morningShower:
        state = state.copyWith(
          morningShower: state.morningShower == MorningShower.morningShower
              ? MorningShower.noMorningShower
              : MorningShower.morningShower,
        );
        break;

      case RoutineCategory.shareItems:
        state = state.copyWith(
          shareItems: state.shareItems == ShareItems.sharing
              ? ShareItems.nonSharing
              : ShareItems.sharing,
        );
        break;

      case RoutineCategory.callInDorm:
        state = state.copyWith(
          callInDorm: state.callInDorm == CallInDorm.callsAllowed
              ? CallInDorm.noCalls
              : CallInDorm.callsAllowed,
        );
        break;

      case RoutineCategory.eatInDorm:
        state = state.copyWith(
          eatInDorm: state.eatInDorm == EatInDorm.eatingAllowed
              ? EatInDorm.noEating
              : EatInDorm.eatingAllowed,
        );
        break;

      case RoutineCategory.personality:
        state = state.copyWith(
          personality: state.personality == Personality.extrovert
              ? Personality.introvert
              : Personality.extrovert,
        );
        break;

      case RoutineCategory.cleaning:
        state = state.copyWith(
          cleaning: state.cleaning == Cleaning.sensitive
              ? Cleaning.lessSensitive
              : Cleaning.sensitive,
        );
        break;

      case RoutineCategory.sleepPattern:
        state = state.copyWith(
          sleepPattern: state.sleepPattern == SleepPattern.regularSleep
              ? SleepPattern.irregularSleep
              : SleepPattern.regularSleep,
        );
        break;

      case RoutineCategory.drinking:
        state = state.copyWith(
          drinking: state.drinking == Drinking.drinksOften
              ? Drinking.drinksRarely
              : Drinking.drinksOften,
        );
        break;
    }
  }

  List<String> getRoutineAsCodes() {
    return [
      state.smoking.name,
      state.snoring.name,
      state.nightWork.name,
      state.homebody.name,
      state.morningShower.name,
      state.shareItems.name,
      state.callInDorm.name,
      state.eatInDorm.name,
      state.personality.name,
      state.cleaning.name,
      state.sleepPattern.name,
      state.drinking.name,
    ];
  }
}
