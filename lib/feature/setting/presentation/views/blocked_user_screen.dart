import 'package:dotori/core/constants/app_colors.dart';
import 'package:dotori/core/constants/app_sizes.dart';
import 'package:dotori/core/constants/enums/ui_status.dart';
import 'package:dotori/core/themes/app_text_styles.dart';
import 'package:dotori/core/themes/text_theme_extension.dart';
import 'package:dotori/core/widgets/app_bars/app_bar_back.dart';
import 'package:dotori/core/widgets/error_retry_widget.dart';
import 'package:dotori/feature/setting/data/models/block_users_response.dart';
import 'package:dotori/feature/setting/presentation/viewmodels/block_users_view_model.dart';
import 'package:dotori/feature/setting/presentation/viewmodels/states/block_users_state.dart';
import 'package:dotori/feature/setting/presentation/widgets/list_tiles/block_user_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BlockedUserScreen extends HookConsumerWidget {
  const BlockedUserScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(() {
      Future.microtask(() {
        ref.read(blockUsersViewModelProvider.notifier).getBlockUsers();
      });
      return null;
    }, const []);

    final BlockUsersState blockUsersState = ref.watch(
      blockUsersViewModelProvider,
    );

    if (blockUsersState.status == UiStatus.loading) {
      return Scaffold(
        appBar: AppBarBack.back(),
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 128.r,
                  height: 128.r,
                  color: AppColors.gray200,
                ),
                SizedBox(height: 28.h),
              ],
            ),
          ),
        ),
      );
    }

    if (blockUsersState.status == UiStatus.error) {
      return Scaffold(
        appBar: AppBarBack.back(),
        body: ErrorRetryWidget(
          onPressed: () {
            ref.read(blockUsersViewModelProvider.notifier).getBlockUsers();
          },
        ),
      );
    }

    final List<BlockUsersResponse> blockUsers = blockUsersState.blockUsers;

    return Scaffold(
      appBar: AppBarBack.back(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 24.h),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppSizes.defaultPadding,
                ),
                child: Row(
                  children: [
                    Text(
                      '차단된 사용자',
                      style: context.textStyles.body3.copyWith(
                        color: AppColors.gray400,
                      ),
                    ),
                    SizedBox(width: 4.w),
                    Text(
                      blockUsers.length.toString(),
                      style: context.textStyles.body2.copyWith(
                        color: AppColors.gray500,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24.h),
              ListView.builder(
                itemCount: blockUsers.length,
                shrinkWrap: true,
                primary: false,
                itemBuilder: (BuildContext context, int index) {
                  return BlockUserListTile(
                    blockUsersResponse: blockUsers[index],
                  );
                },
              ),
              SizedBox(height: 16.h),
            ],
          ),
        ),
      ),
    );
  }
}
