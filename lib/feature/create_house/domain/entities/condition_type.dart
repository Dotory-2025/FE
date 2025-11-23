/// 룸메이트 조건 타입 열거형
enum ConditionType {
  smoking('흡연금지', 'smoking'),
  snoring('코골이', 'snoring'),
  nightOwl('성격', 'personality'),
  nightShift('야간규칙', 'night'),
  morningPerson('샤워규칙', 'shower'),
  drinking('음주빈도', 'drinking'),
  cleaning('청소규칙', 'cleaning'),
  lateReturn('취식규칙', 'eating'),
  sharing('물품공유', 'sharing'),
  curfew('취침규칙', 'sleeping'),
  indoorPet('통화규칙', 'call'),
  homebody('거주형태', 'type');

  final String displayName;
  final String iconName;

  const ConditionType(this.displayName, this.iconName);

  /// 아이콘 경로 반환
  String get iconPath => 'assets/icons/$iconName.svg';
}
