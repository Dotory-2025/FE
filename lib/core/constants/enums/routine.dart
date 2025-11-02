enum Smoking { smoker, nonSmoker }
enum Snoring { snorer, nonSnorer }
enum NightWork { nightShift, noNightShift }
enum Homebody { homebody, notHomebody }
enum MorningShower { morningShower, noMorningShower }
enum ShareItems { sharing, nonSharing }
enum CallInDorm { callsAllowed, noCalls }
enum EatInDorm { eatingAllowed, noEating }
enum Personality { extrovert, introvert }
enum Cleaning { sensitive, lessSensitive }
enum SleepPattern { regularSleep, irregularSleep }
enum Drinking { drinksOften, drinksRarely }

enum RoutineCategory {
  smoking,
  snoring,
  nightWork,
  homebody,
  morningShower,
  shareItems,
  callInDorm,
  eatInDorm,
  personality,
  cleaning,
  sleepPattern,
  drinking,
}

extension RoutineCategoryLabel on RoutineCategory {
  String get label => switch (this) {
    RoutineCategory.smoking => '흡연자 🚬',
    RoutineCategory.snoring => '코골이 👃',
    RoutineCategory.nightWork => '야간작업 💻',
    RoutineCategory.homebody => '집돌이 🏠',
    RoutineCategory.morningShower => '아침샤워 🛁',
    RoutineCategory.shareItems => '개인용품 공유 🥫',
    RoutineCategory.callInDorm => '기숙사 내 통화 ☎️',
    RoutineCategory.eatInDorm => '기숙사 내 취식 🍜',
    RoutineCategory.personality => '외향적 💬',
    RoutineCategory.cleaning => '청소예민 🧹',
    RoutineCategory.sleepPattern => '취침시간 규칙 🛏️',
    RoutineCategory.drinking => '음주 잦음 🍺',
  };
}