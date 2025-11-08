import 'package:dotori/core/constants/paths/route_path.dart';
import 'package:dotori/core/widgets/scaffolds/custom_scaffold.dart';
import 'package:dotori/feature/auth/presentation/views/auth_code_screen.dart';
import 'package:dotori/feature/auth/presentation/views/auth_info_screen.dart';
import 'package:dotori/feature/auth/presentation/views/auth_mail_screen.dart';
import 'package:dotori/feature/auth/presentation/views/auth_profile_screen.dart';
import 'package:dotori/feature/auth/presentation/views/auth_routine_screen.dart';
import 'package:dotori/feature/auth/presentation/views/image_cropper_screen.dart';
import 'package:dotori/feature/auth/presentation/views/onboarding_screen.dart';
import 'package:dotori/feature/auth/presentation/views/terms_agreement_screen.dart';
import 'package:dotori/feature/auth/presentation/views/tutorial_screen.dart';
import 'package:dotori/feature/chatting/presentation/views/chatting_screen.dart';
import 'package:dotori/feature/chatting/presentation/views/direct_message_screen.dart';
import 'package:dotori/feature/chatting/presentation/views/group_message_screen.dart';
import 'package:dotori/feature/chatting/presentation/views/image_detail_screen.dart';
import 'package:dotori/feature/home/presentation/views/home_screen.dart';
import 'package:dotori/feature/notification/presentation/views/notification_screen.dart';
import 'package:dotori/feature/setting/presentation/views/blocked_user_screen.dart';
import 'package:dotori/feature/setting/presentation/views/edit_routine_screen.dart';
import 'package:dotori/feature/setting/presentation/views/edit_user_screen.dart';
import 'package:dotori/feature/setting/presentation/views/my_feedbacks_detail_screen.dart';
import 'package:dotori/feature/setting/presentation/views/my_feedbacks_screen.dart';
import 'package:dotori/feature/setting/presentation/views/my_info_screen.dart';
import 'package:dotori/feature/setting/presentation/views/my_posts_screen.dart';
import 'package:dotori/feature/setting/presentation/views/setting_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: RoutePath.chatting,
  routes: [
    GoRoute(
      path: RoutePath.onboarding,
      builder: (context, state) => const OnboardingScreen(),
    ),
    GoRoute(
      path: RoutePath.authMail,
      builder: (context, state) => const AuthMailScreen(),
    ),
    GoRoute(
      path: RoutePath.authCode,
      builder: (context, state) => const AuthCodeScreen(),
    ),
    GoRoute(
      path: RoutePath.authInfo,
      builder: (context, state) => const AuthInfoScreen(),
    ),
    GoRoute(
      path: RoutePath.authRoutine,
      builder: (context, state) => const AuthRoutineScreen(),
    ),
    GoRoute(
      path: RoutePath.authProfile,
      builder: (context, state) => const AuthProfileScreen(),
    ),
    GoRoute(
      path: RoutePath.imageCropperAuth,
      builder: (context, state) => ImageCropperScreen.auth(),
    ),
    GoRoute(
      path: RoutePath.imageCropperEdit,
      builder: (context, state) => ImageCropperScreen.edit(),
    ),
    GoRoute(
      path: RoutePath.termsAgreement,
      builder: (context, state) => const TermsAgreementScreen(),
    ),
    GoRoute(
      path: RoutePath.tutorial,
      builder: (context, state) => const TutorialScreen(),
    ),
    GoRoute(
      path: RoutePath.myPosts,
      builder: (context, state) => const MyPostsScreen(),
    ),
    GoRoute(
      path: RoutePath.blockUsers,
      builder: (context, state) => const BlockedUserScreen(),
    ),
    GoRoute(
      path: RoutePath.editUser,
      builder: (context, state) => const EditUserScreen(),
    ),
    GoRoute(
      path: RoutePath.editRoutine,
      builder: (context, state) => const EditRoutineScreen(),
    ),
    GoRoute(
      path: RoutePath.myFeedbacks,
      builder: (context, state) => const MyFeedbacksScreen(),
    ),
    GoRoute(
      path: '${RoutePath.myFeedbacks}/:id',
      builder: (context, state) {
        final String? idString = state.pathParameters['id'];
        final int id = int.tryParse(idString ?? '') ?? 0;

        return MyFeedbacksDetailScreen(id: id);
      },
    ),
    GoRoute(
      path: RoutePath.myInfo,
      builder: (context, state) {
        final extra = state.extra;
        final int tabIndex =
            (extra is Map<String, dynamic> && extra['tabIndex'] is int)
            ? extra['tabIndex'] as int
            : 0;

        return MyInfoScreen(initialTabIndex: tabIndex);
      },
    ),
    GoRoute(
      path: '${RoutePath.directMessage}/:id',
      builder: (context, state) {
        final String? idString = state.pathParameters['id'];
        final int id = int.tryParse(idString ?? '') ?? 0;
        final extra = state.extra as Map<String, dynamic>?;

        final String? nickName = extra?['nickName'];
        final String? profileImage = extra?['profileImage'];
        return DirectMessageScreen(
          id: id,
          nickName: nickName!,
          profileImage: profileImage!,
        );
      },
    ),
    GoRoute(
      path: '${RoutePath.groupMessage}/:id',
      builder: (context, state) {
        final String? idString = state.pathParameters['id'];
        final int id = int.tryParse(idString ?? '') ?? 0;
        final extra = state.extra as Map<String, dynamic>?;

        final String? roomName = extra?['roomName'];
        final String? profileImage1 = extra?['profileImage1'];
        final String? profileImage2 = extra?['profileImage2'];
        return GroupMessageScreen(
          id: id,
          roomName: roomName!,
          profileImage1: profileImage1!,
          profileImage2: profileImage2!,
        );
      },
    ),
    GoRoute(
      path: RoutePath.imageDetail,
      pageBuilder: (context, state) {
        final extra = state.extra as Map<String, dynamic>;
        return CustomTransitionPage(
          key: state.pageKey,
          opaque: false,
          barrierColor: Colors.transparent,
          transitionDuration: const Duration(milliseconds: 200),
          reverseTransitionDuration: const Duration(milliseconds: 200),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(opacity: animation, child: child);
          },
          child: ImageDetailScreen(
            nickname: extra['nickname'],
            timeStamp: extra['timeStamp'],
            profileImage: extra['profileImage'],
            imageUrl: extra['imageUrl'],
          ),
        );
      },
    ),
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) =>
          CustomScaffold(navigationShell: navigationShell),
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: RoutePath.home,
              builder: (context, state) => HomeScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: RoutePath.chatting,
              builder: (context, state) => ChattingScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: RoutePath.notification,
              builder: (context, state) => NotificationScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: RoutePath.setting,
              builder: (context, state) => SettingScreen(),
            ),
          ],
        ),
      ],
    ),
  ],
);
