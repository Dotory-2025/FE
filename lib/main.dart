import 'package:dotori/core/constants/app_colors.dart';
import 'package:dotori/core/routes/app_router.dart';
import 'package:dotori/feature/setting/presentation/viewmodels/setting_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:oktoast/oktoast.dart';

import 'core/themes/app_theme.dart';
import 'core/utils/custom_logger.dart';
import 'core/utils/screen_util_service.dart';

final container = ProviderContainer();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  logger.d('🚀 앱 초기화 시작');
  await container.read(settingViewModelProvider.notifier).getMyInfo();
  logger.d('✅ 사용자 정보 로딩 완료');

  runApp(
    UncontrolledProviderScope(
      container: container,
      child: const MyApp(),
    ),
  );
}

class MyApp extends HookConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.transparent,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
      child: OKToast(
        child: ScreenUtilInit(
          designSize: ScreenService.getDesignSize(context),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (context, child) {
            return MaterialApp.router(
              routerConfig: appRouter,
              title: 'Dotori',
              debugShowCheckedModeBanner: false,
              theme: AppTheme.kThemeData,
            );
          },
        ),
      ),
    );
  }
}
