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
import 'package:dotori/feature/chatting/presentation/chatting_screen.dart';
import 'package:dotori/feature/home/presentation/views/home_screen.dart';
import 'package:dotori/feature/notification/presentation/notification_screen.dart';
import 'package:dotori/feature/setting/presentation/setting_screen.dart';
import 'package:go_router/go_router.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: RoutePath.home,
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
      path: RoutePath.imageCropper,
      builder: (context, state) => ImageCropperScreen(),
    ),
    GoRoute(
      path: RoutePath.termsAgreement,
      builder: (context, state) => const TermsAgreementScreen(),
    ),
    GoRoute(
      path: RoutePath.tutorial,
      builder: (context, state) => const TutorialScreen(),
    ),
    StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) => CustomScaffold(
          navigationShell: navigationShell,
        ),
        branches: [
          StatefulShellBranch(routes: [
            GoRoute(
              path: RoutePath.home,
              builder: (context, state) => HomeScreen(),
            ),
          ]),
          StatefulShellBranch(routes: [
            GoRoute(
              path: RoutePath.chatting,
              builder: (context, state) => ChattingScreen(),
            ),
          ]),
          StatefulShellBranch(routes: [
            GoRoute(
              path: RoutePath.notification,
              builder: (context, state) => NotificationScreen(),
            ),
          ]),
          StatefulShellBranch(routes: [
            GoRoute(
              path: RoutePath.setting,
              builder: (context, state) => SettingScreen(),
            ),
          ])
        ]),
  ],
);
