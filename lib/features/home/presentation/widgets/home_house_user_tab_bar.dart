import 'package:dotori/core/constants/app_colors.dart';
import 'package:dotori/core/themes/app_text_styles.dart';
import 'package:dotori/core/themes/text_theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeHouseUserTabBar extends StatelessWidget {
  final TabController? tabController;
  final List<Widget> tabs;


  const HomeHouseUserTabBar({
    super.key,
  this.tabController,
  required this.tabs
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.background,
      child: TabBar(
        controller: tabController,
        padding: EdgeInsets.zero,
        labelPadding: EdgeInsets.fromLTRB(0.w, 8.h, 14.w, 8.h),
        isScrollable: true,
        tabAlignment: TabAlignment.start,
        overlayColor: const WidgetStatePropertyAll(Colors.transparent),
        labelColor: AppColors.gray500,
        unselectedLabelColor: AppColors.gray200,
        labelStyle: context.textStyles.sectionHeadline1.copyWith(
          color: AppColors.gray500
        ),
        unselectedLabelStyle: context.textStyles.sectionHeadline1.copyWith(
          color: AppColors.gray200
        ),
        indicator: const BoxDecoration(),
        dividerColor: Colors.transparent,
        dividerHeight: 0,
        tabs: tabs,
      ),
    );
  }
}
