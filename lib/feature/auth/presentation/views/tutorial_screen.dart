import 'package:dotori/core/constants/app_colors.dart';
import 'package:dotori/core/constants/app_sizes.dart';
import 'package:dotori/core/constants/paths/route_path.dart';
import 'package:dotori/core/themes/app_text_styles.dart';
import 'package:dotori/core/themes/text_theme_extension.dart';
import 'package:dotori/core/widgets/app_bars/app_bar_logo.dart';
import 'package:dotori/core/widgets/buttons/custom_elevated_button.dart';
import 'package:dotori/feature/auth/presentation/widgets/indicataors/custom_page_indicator.dart';
import 'package:dotori/feature/auth/presentation/widgets/tutorial_widget.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class TutorialScreen extends HookWidget {
  const TutorialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController pageController = usePageController();
    final currentIndex = useState(0);

    final List<String> description = [
      '이제 도토리을 시작할 수 있어요\n도토리와 함께 즐거운 기숙사 생활을 시작해요!',
      '텍스트2\n텍스트2',
      '텍스트3\n텍스트3',
      '텍스트4\n텍스트4',
    ];
    return Scaffold(
      appBar: AppBarLogo.logo(),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 32.h),
            Text(
              '축하합니다!',
              style: context.textStyles.headLine1.copyWith(
                color: AppColors.gray500,
              ),
            ),
            SizedBox(height: 12.h),
            ExpandablePageView.builder(
              controller: pageController,
              itemCount: description.length,
              onPageChanged: (index) => currentIndex.value = index,
              itemBuilder: (context, index) {
                return TutorialWidget(description: description[index]);
              },
            ),
            Spacer(),
            CustomPageIndicator(
              currentIndex: currentIndex.value,
              itemCount: description.length,
            ),
            SizedBox(height: 42.h),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: AppSizes.defaultPadding,
              ),
              child: CustomElevatedButton.primary(
                text: '시작하기',
                height: 60.h,
                width: double.infinity,
                onPressed: () {
                  context.go(RoutePath.home);
                },
                textStyle: context.textStyles.btnText,
                radius: AppSizes.radiusMD,
              ),
            ),
            SizedBox(height: AppSizes.bottomPadding),
          ],
        ),
      ),
    );
  }
}
