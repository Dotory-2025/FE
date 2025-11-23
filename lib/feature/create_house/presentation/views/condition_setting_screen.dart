import 'package:dotori/core/constants/app_colors.dart';
import 'package:dotori/core/constants/app_sizes.dart';
import 'package:dotori/core/constants/paths/route_path.dart';
import 'package:dotori/core/themes/app_text_styles.dart';
import 'package:dotori/core/themes/text_theme_extension.dart';
import 'package:dotori/core/widgets/app_bars/app_bar_back.dart';
import 'package:dotori/core/widgets/buttons/custom_elevated_button.dart';
import 'package:dotori/feature/create_house/domain/entities/condition_type.dart';
import 'package:dotori/feature/create_house/domain/entities/house_type.dart';
import 'package:dotori/feature/create_house/presentation/widgets/condition_item.dart';
import 'package:dotori/feature/create_house/presentation/widgets/house_creation_warning_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// 조건 설정 화면
class ConditionSettingScreen extends HookConsumerWidget {
  final HouseType houseType;
  final int roomCount;

  const ConditionSettingScreen({
    super.key,
    required this.houseType,
    required this.roomCount,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedConditions = useState<Set<ConditionType>>({});

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBarBack.back(),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(
                  horizontal: AppSizes.defaultPadding,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 24.h),
                    // 타이틀
                    Text(
                      '조건 설정',
                      style: Theme.of(
                        context,
                      ).textTheme.headLine1.copyWith(color: AppColors.gray500),
                    ),
                    SizedBox(height: 8.h),
                    // 설명
                    Text(
                      '룸에서 지켜져야 할 태그를 선택해주세요.',
                      style: context.textStyles.body1.copyWith(
                        color: AppColors.gray400,
                      ),
                    ),
                    SizedBox(height: 24.h),
                    // 조건 그리드
                    GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 5,
                        mainAxisSpacing: 24.h,
                        crossAxisSpacing: 12.w,
                        childAspectRatio: 0.75,
                      ),
                      itemCount: ConditionType.values.length,
                      itemBuilder: (context, index) {
                        final condition = ConditionType.values[index];
                        final isSelected = selectedConditions.value.contains(
                          condition,
                        );

                        return ConditionItem(
                          conditionType: condition,
                          isSelected: isSelected,
                          onTap: () {
                            final newSet = Set<ConditionType>.from(
                              selectedConditions.value,
                            );
                            if (isSelected) {
                              newSet.remove(condition);
                            } else {
                              newSet.add(condition);
                            }
                            selectedConditions.value = newSet;
                          },
                        );
                      },
                    ),
                    SizedBox(height: 32.h),
                  ],
                ),
              ),
            ),
            // 하단 버튼
            Padding(
              padding: EdgeInsets.all(AppSizes.defaultPadding),
              child: CustomElevatedButton.primary(
                text: '선택완료',
                width: double.infinity,
                height: 56.h,
                onPressed: selectedConditions.value.isEmpty
                    ? null
                    : () {
                        // 경고 바텀시트 표시
                        HouseCreationWarningBottomSheet.show(
                          context,
                          onConfirm: () {
                            Navigator.pop(context); // 바텀시트 닫기
                            // 글 작성 화면으로 이동
                            context.push(
                              RoutePath.housePostWriting,
                              extra: {
                                'houseType': houseType,
                                'roomCount': roomCount,
                                'selectedConditions': selectedConditions.value,
                              },
                            );
                          },
                        );
                      },
                textStyle: context.textStyles.btnText.copyWith(
                  color: selectedConditions.value.isEmpty
                      ? AppColors.gray200
                      : AppColors.background,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
