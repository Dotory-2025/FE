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

  List<String> getActiveRoutineCodes() {
    final List<String> activeRoutines = [];

    if (state.smoking == Smoking.smoker) {
      activeRoutines.add(Smoking.smoker.name);
    }
    if (state.snoring == Snoring.snorer) {
      activeRoutines.add(Snoring.snorer.name);
    }
    if (state.nightWork == NightWork.nightShift) {
      activeRoutines.add(NightWork.nightShift.name);
    }
    if (state.homebody == Homebody.homebody) {
      activeRoutines.add(Homebody.homebody.name);
    }
    if (state.morningShower == MorningShower.morningShower) {
      activeRoutines.add(MorningShower.morningShower.name);
    }
    if (state.shareItems == ShareItems.sharing) {
      activeRoutines.add(ShareItems.sharing.name);
    }
    if (state.callInDorm == CallInDorm.callsAllowed) {
      activeRoutines.add(CallInDorm.callsAllowed.name);
    }
    if (state.eatInDorm == EatInDorm.eatingAllowed) {
      activeRoutines.add(EatInDorm.eatingAllowed.name);
    }
    if (state.personality == Personality.extrovert) {
      activeRoutines.add(Personality.extrovert.name);
    }
    if (state.cleaning == Cleaning.sensitive) {
      activeRoutines.add(Cleaning.sensitive.name);
    }
    if (state.sleepPattern == SleepPattern.regularSleep) {
      activeRoutines.add(SleepPattern.regularSleep.name);
    }
    if (state.drinking == Drinking.drinksOften) {
      activeRoutines.add(Drinking.drinksOften.name);
    }

    return activeRoutines;
  }

  void applyRoutineCodes(List<String> routines) {
    state = state.copyWith(
      smoking: routines.contains(Smoking.smoker.name)
          ? Smoking.smoker
          : Smoking.nonSmoker,
      snoring: routines.contains(Snoring.snorer.name)
          ? Snoring.snorer
          : Snoring.nonSnorer,
      nightWork: routines.contains(NightWork.nightShift.name)
          ? NightWork.nightShift
          : NightWork.noNightShift,
      homebody: routines.contains(Homebody.homebody.name)
          ? Homebody.homebody
          : Homebody.notHomebody,
      morningShower: routines.contains(MorningShower.morningShower.name)
          ? MorningShower.morningShower
          : MorningShower.noMorningShower,
      shareItems: routines.contains(ShareItems.sharing.name)
          ? ShareItems.sharing
          : ShareItems.nonSharing,
      callInDorm: routines.contains(CallInDorm.callsAllowed.name)
          ? CallInDorm.callsAllowed
          : CallInDorm.noCalls,
      eatInDorm: routines.contains(EatInDorm.eatingAllowed.name)
          ? EatInDorm.eatingAllowed
          : EatInDorm.noEating,
      personality: routines.contains(Personality.extrovert.name)
          ? Personality.extrovert
          : Personality.introvert,
      cleaning: routines.contains(Cleaning.sensitive.name)
          ? Cleaning.sensitive
          : Cleaning.lessSensitive,
      sleepPattern: routines.contains(SleepPattern.regularSleep.name)
          ? SleepPattern.regularSleep
          : SleepPattern.irregularSleep,
      drinking: routines.contains(Drinking.drinksOften.name)
          ? Drinking.drinksOften
          : Drinking.drinksRarely,
    );
  }

  bool isRoutineChanged(List<String> originalRoutines) {
    final List<String> currentRoutines = getActiveRoutineCodes();
    print(currentRoutines);
    print(originalRoutines);

    if (currentRoutines.length != originalRoutines.length) {
      return true;
    }
    for (final routine in currentRoutines) {
      if (!originalRoutines.contains(routine)) {
        return true;
      }
    }
    return false;
  }
}
