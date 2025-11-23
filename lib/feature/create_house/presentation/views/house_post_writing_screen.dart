import 'package:dotori/core/constants/app_colors.dart';
import 'package:dotori/core/constants/app_sizes.dart';
import 'package:dotori/core/constants/paths/icon_path.dart';
import 'package:dotori/core/constants/paths/route_path.dart';
import 'package:dotori/core/themes/app_text_styles.dart';
import 'package:dotori/core/themes/text_theme_extension.dart';
import 'package:dotori/feature/create_house/domain/entities/condition_type.dart';
import 'package:dotori/feature/create_house/domain/entities/house_type.dart';
import 'package:dotori/feature/create_house/presentation/widgets/exit_confirmation_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// 하우스 글 작성 화면
class HousePostWritingScreen extends HookConsumerWidget {
  final HouseType houseType;
  final int roomCount;
  final Set<ConditionType> selectedConditions;

  const HousePostWritingScreen({
    super.key,
    required this.houseType,
    required this.roomCount,
    required this.selectedConditions,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final titleController = useTextEditingController();
    final contentController = useTextEditingController();
    final currentTab = useState(0);

    // 글자 수 카운트
    final contentLength = useListenableSelector(
      contentController,
      () => contentController.text.length,
    );

    // 나가기 확인 함수
    Future<void> handleBackPress() async {
      final shouldExit = await showDialog<bool>(
        context: context,
        builder: (context) => const ExitConfirmationDialog(),
      );

      if (shouldExit == true && context.mounted) {
        context.go(RoutePath.houseTypeSelection);
      }
    }

    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) async {
        if (didPop) return;
        await handleBackPress();
      },
      child: Scaffold(
        backgroundColor: AppColors.background,
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: Row(
            children: [
              SizedBox(width: AppSizes.defaultPadding),
              IconButton(
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
                onPressed: handleBackPress,
                icon: SvgPicture.asset(
                  IconPath.backAppBar,
                  width: 24.r,
                  height: 24.r,
                ),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                // TODO: 하우스 생성 API 호출
                print('제목: ${titleController.text}');
                print('내용: ${contentController.text}');
                context.go(RoutePath.houseCreationComplete);
              },
              child: Text(
                '작성하기',
                style: context.textStyles.btnText.copyWith(
                  color: AppColors.gray200,
                ),
              ),
            ),
            SizedBox(width: AppSizes.defaultPadding),
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(AppSizes.defaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // 선택한 학사 라벨
                    Text(
                      houseType.displayName,
                      style: context.textStyles.label1.copyWith(
                        color: houseType.iconColor,
                      ),
                    ),
                    SizedBox(height: 8.h),
                    // 제목 입력 필드
                    TextField(
                      controller: titleController,
                      textInputAction: TextInputAction.next,
                      style: context.textStyles.subHeadline2.copyWith(
                        color: AppColors.gray500,
                      ),
                      decoration: InputDecoration(
                        hintText: '제목을 입력하세요',
                        hintStyle: context.textStyles.subHeadline2.copyWith(
                          color: AppColors.gray200,
                        ),
                        border: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        contentPadding: EdgeInsets.zero,
                        isDense: true,
                      ),
                    ),
                    SizedBox(height: 24.h),
                    // 본문 입력 필드
                    TextField(
                      controller: contentController,
                      maxLines: null,
                      maxLength: 300,
                      textInputAction: TextInputAction.newline,
                      keyboardType: TextInputType.multiline,
                      style: context.textStyles.body2.copyWith(
                        color: AppColors.gray500,
                      ),
                      decoration: InputDecoration(
                        hintText:
                            '욕설, 비방 등 상대방을 불쾌하게 하는 내용은 남기지 말아주세요.\n신고를 당하면 커뮤니티 이용이 제한될 수 있어요.',
                        hintStyle: context.textStyles.caption1.copyWith(
                          color: AppColors.gray300,
                        ),
                        border: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        contentPadding: EdgeInsets.zero,
                        counterText: '',
                        isDense: true,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // 글자 수 표시
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: AppSizes.defaultPadding,
                vertical: 8.h,
              ),
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  '${contentLength}자 / 300자',
                  style: context.textStyles.caption1.copyWith(
                    color: AppColors.gray300,
                  ),
                ),
              ),
            ),
            // 하단 탭바
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: AppSizes.defaultPadding,
                vertical: 12.h,
              ),
              decoration: BoxDecoration(
                color: AppColors.background,
                border: Border(
                  top: BorderSide(color: AppColors.gray100, width: 1),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  _buildTabItem(
                    context,
                    icon: Icons.home_outlined,
                    label: '기숙사',
                    isSelected: currentTab.value == 0,
                    onTap: () => currentTab.value = 0,
                  ),
                  SizedBox(width: 24.w),
                  _buildTabItem(
                    context,
                    icon: Icons.people_outline,
                    label: '인원',
                    isSelected: currentTab.value == 1,
                    onTap: () => currentTab.value = 1,
                  ),
                  SizedBox(width: 24.w),
                  _buildTabItem(
                    context,
                    icon: Icons.list_alt,
                    label: '조건',
                    isSelected: currentTab.value == 2,
                    onTap: () => currentTab.value = 2,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTabItem(
    BuildContext context, {
    required IconData icon,
    required String label,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: 24.r,
            color: isSelected ? AppColors.gray500 : AppColors.gray300,
          ),
          SizedBox(height: 4.h),
          Text(
            label,
            style: context.textStyles.caption1.copyWith(
              color: isSelected ? AppColors.gray500 : AppColors.gray300,
            ),
          ),
        ],
      ),
    );
  }
}
