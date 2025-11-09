import 'package:dotori/core/constants/app_sizes.dart';
import 'package:dotori/core/widgets/app_bars/app_bar_logo.dart';
import 'package:dotori/features/home/presentation/widgets/home_house_user_tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabController = useTabController(initialLength: 2);

    return  Scaffold(
      appBar: AppBarLogo.logoWithMyHouseButton(onFirstButtonPressed: (){}, onSecondButtonPressed: (){}),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppSizes.defaultPadding),
        child: Column(
          children: [
            HomeHouseUserTabBar(
                tabController: tabController,
            tabs: const [
              Tab(text: '하우스'),
              Tab(text: '사용자'),
            ])
          ],
        ),
      ),
    );
  }
}
