import 'package:dotori/core/constants/app_colors.dart';
import 'package:dotori/core/constants/enums/ui_status.dart';
import 'package:dotori/core/themes/app_text_styles.dart';
import 'package:dotori/core/themes/text_theme_extension.dart';
import 'package:dotori/core/widgets/app_bars/app_bar_logo.dart';
import 'package:dotori/core/widgets/buttons/custom_elevated_button.dart';
import 'package:dotori/core/widgets/tab_bars/custom_tab_bar.dart';
import 'package:dotori/feature/notification/presentation/viewmodels/invitation_view_model.dart';
import 'package:dotori/feature/notification/presentation/viewmodels/notification_view_model.dart';
import 'package:dotori/feature/notification/presentation/widgets/invitation_item_widget.dart';
import 'package:dotori/feature/notification/presentation/widgets/notification_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class NotificationScreen extends HookConsumerWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final invitationState = ref.watch(invitationViewModelProvider);
    final notificationState = ref.watch(notificationViewModelProvider);

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBarLogo.logo(),
        body: Column(
          children: [
            const CustomTabBar(
              tabs: [
                Tab(text: '알림'),
                Tab(text: '초대'),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  // Notification Tab
                  Builder(
                    builder: (context) {
                      if (notificationState.status == UiStatus.success) {
                        if (notificationState.notifications.isEmpty) {
                          // Empty State
                          return Column(
                            children: [
                              Container(
                                height: 256.h,
                                alignment: Alignment.center,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '아무 알림이 없어요..',
                                      style: context.textStyles.sectionHeadline1
                                          .copyWith(color: AppColors.gray500),
                                    ),
                                    SizedBox(height: 4.h),
                                    Text(
                                      '방을 생성하고 멤버를 모아보세요!',
                                      style: context.textStyles.body1.copyWith(
                                        color: AppColors.gray300,
                                      ),
                                    ),
                                    SizedBox(height: 24.h),
                                    CustomElevatedButton.primary(
                                      text: '방 생성하기',
                                      onPressed: () {
                                        // TODO: 방 생성 화면으로 이동
                                      },
                                      width: 145.w,
                                      height: 40.h,
                                      radius: 6.r,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          );
                        }
                        // List State
                        return ListView.builder(
                          padding: EdgeInsets.only(bottom: 96.h),
                          itemCount: notificationState.notifications.length,
                          itemBuilder: (context, index) {
                            final notification =
                                notificationState.notifications[index];
                            return NotificationItemWidget(
                              title: notification.title,
                              description: notification.description,
                              time: notification.timeAgo,
                            );
                          },
                        );
                      } else if (notificationState.status == UiStatus.error) {
                        // Error State
                        return Column(
                          children: [
                            Container(
                              height: 256.h,
                              alignment: Alignment.center,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '서비스 이용이 원활하지 않아요',
                                    style: context.textStyles.sectionHeadline1
                                        .copyWith(color: AppColors.gray500),
                                  ),
                                  SizedBox(height: 4.h),
                                  Text(
                                    '잠시 후에 다시 시도해 주세요.',
                                    style: context.textStyles.body1.copyWith(
                                      color: AppColors.gray300,
                                    ),
                                  ),
                                  SizedBox(height: 24.h),
                                  CustomElevatedButton.secondary(
                                    text: '다시 시도',
                                    onPressed: () {
                                      ref
                                          .read(
                                            notificationViewModelProvider
                                                .notifier,
                                          )
                                          .loadNotifications();
                                    },
                                    width: 145.w,
                                    height: 40.h,
                                    radius: 6.r,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        );
                      }
                      return Center(
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
                      );
                    },
                  ),

                  // Invitation Tab
                  Builder(
                    builder: (context) {
                      if (invitationState.status == UiStatus.success) {
                        if (invitationState.invitations.isEmpty) {
                          // Empty State
                          return Center(
                            child: Text(
                              '받은 초대가 없습니다.',
                              style: context.textStyles.body1.copyWith(
                                color: AppColors.gray500,
                              ),
                            ),
                          );
                        }
                        // List State
                        return ListView.builder(
                          padding: EdgeInsets.only(bottom: 96.h),
                          itemCount: invitationState.invitations.length,
                          itemBuilder: (context, index) {
                            final invitation =
                                invitationState.invitations[index];
                            return InvitationItemWidget(
                              title: invitation.title,
                              titleColor: invitation.type.color,
                              description: invitation.description,
                              time: invitation.timeAgo,
                              onAccept: () {
                                // TODO: 수락 로직
                              },
                              onDecline: () {
                                // TODO: 거절 로직
                              },
                            );
                          },
                        );
                      } else if (invitationState.status == UiStatus.error) {
                        // Error State
                        return Column(
                          children: [
                            Container(
                              height: 256.h,
                              alignment: Alignment.center,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '서비스 이용이 원활하지 않아요',
                                    style: context.textStyles.sectionHeadline1
                                        .copyWith(color: AppColors.gray500),
                                  ),
                                  SizedBox(height: 4.h),
                                  Text(
                                    '잠시 후에 다시 시도해 주세요.',
                                    style: context.textStyles.body1.copyWith(
                                      color: AppColors.gray500,
                                    ),
                                  ),
                                  SizedBox(height: 24.h),
                                  CustomElevatedButton.secondary(
                                    text: '다시 시도',
                                    onPressed: () {
                                      ref
                                          .read(
                                            invitationViewModelProvider
                                                .notifier,
                                          )
                                          .loadInvitations();
                                    },
                                    width: 145.w,
                                    height: 40.h,
                                    radius: 6.r,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        );
                      }
                      return Center(
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
                      );
                    },
                  ),
                ],
              ),
            ),
            Container(height: 96.h, color: Colors.white),
          ],
        ),
      ),
    );
  }
}
