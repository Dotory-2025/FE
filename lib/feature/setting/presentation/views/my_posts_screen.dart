import 'package:dotori/core/constants/app_colors.dart';
import 'package:dotori/core/constants/enums/ui_status.dart';
import 'package:dotori/core/utils/custom_logger.dart';
import 'package:dotori/core/widgets/app_bars/app_bar_back.dart';
import 'package:dotori/core/widgets/error_retry_widget.dart';
import 'package:dotori/feature/setting/data/models/my_posts_response.dart';
import 'package:dotori/feature/setting/presentation/viewmodels/states/my_posts_state.dart';
import 'package:dotori/feature/setting/presentation/viewmodels/my_posts_view_model.dart';
import 'package:dotori/feature/setting/presentation/widgets/list_tiles/my_post_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MyPostsScreen extends HookConsumerWidget {
  const MyPostsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(() {
      Future.microtask(() {
        ref.read(myPostsViewModelProvider.notifier).getMyPosts();
      });
      return null;
    }, const []);

    final MyPostsState myPostsState = ref.watch(myPostsViewModelProvider);

    if (myPostsState.status == UiStatus.loading) {
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
                SizedBox(height: 28.h,),
              ],
            ),
          ),
        ),
      );
    }

    if (myPostsState.status == UiStatus.error) {
      return Scaffold(
        appBar: AppBarBack.back(),
        body: ErrorRetryWidget(onPressed: () {
          ref.read(myPostsViewModelProvider.notifier).getMyPosts();
        }),
      );
    }

    final List<MyPostsResponse> myPosts = myPostsState.myPosts;

    return Scaffold(
      appBar: AppBarBack.back(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListView.builder(
                itemCount: myPosts.length,
                shrinkWrap: true,
                primary: false,
                itemBuilder: (BuildContext context, int index) {
                  return MyPostListTile(myPostsResponse: myPosts[index]);
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
