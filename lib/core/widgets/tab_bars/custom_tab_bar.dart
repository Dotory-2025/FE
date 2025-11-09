import 'package:dotori/core/constants/app_colors.dart';
import 'package:dotori/core/themes/app_text_styles.dart';
import 'package:dotori/core/themes/text_theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTabBar extends StatelessWidget {
  final TabController? tabController;
  final List<Widget> tabs;

  const CustomTabBar({
    super.key,
    this.tabController,
    required this.tabs
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4.w),
      alignment: Alignment.bottomCenter,
      child: TabBar(
        controller: tabController,
        padding: EdgeInsets.zero,
        isScrollable: true,
        tabAlignment: TabAlignment.start,
        dividerColor: AppColors.gray100,
        dividerHeight: 2.h,
        indicatorWeight: 8.h,
        indicator: UnderlineTabIndicator(
          borderSide: BorderSide(width: 2.h, color: AppColors.gray500),
          borderRadius: BorderRadius.circular(2.r),
        ),
        indicatorPadding: EdgeInsets.zero,
        overlayColor: const WidgetStatePropertyAll(Colors.transparent),
        labelColor: AppColors.gray500,
        unselectedLabelColor: AppColors.gray400,
        labelStyle: context.textStyles.btnText.copyWith(
          fontFamily: 'PretendardVariable',
          color: AppColors.primary,
        ),
        unselectedLabelStyle: context.textStyles.btnText.copyWith(
          fontFamily: 'PretendardVariable',
          color: AppColors.primary,
        ),
        indicatorColor: AppColors.primary,
        indicatorSize: TabBarIndicatorSize.label,
        labelPadding: EdgeInsets.only(left: 10.w, right: 10.w, ),
        tabs: tabs,
      ),
    );
  }
}
