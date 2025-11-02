import 'dart:typed_data';

import 'package:cropperx/cropperx.dart';
import 'package:dotori/core/constants/app_sizes.dart';
import 'package:dotori/core/themes/app_text_styles.dart';
import 'package:dotori/core/themes/text_theme_extension.dart';
import 'package:dotori/core/widgets/app_bars/app_bar_back.dart';
import 'package:dotori/core/widgets/buttons/custom_elevated_button.dart';
import 'package:dotori/feature/auth/presentation/viewmodels/auth_view_model.dart';
import 'package:dotori/feature/auth/presentation/viewmodels/states/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ImageCropperScreen extends ConsumerWidget {
  final GlobalKey _cropperKey = GlobalKey(debugLabel: 'cropperKey');

  ImageCropperScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AuthState authState = ref.watch(authViewModelProvider);
    return Scaffold(
      appBar: AppBarBack.back(),
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
              height: double.infinity,
              child: Cropper(
                overlayType: OverlayType.circle,
                cropperKey: _cropperKey,
                image: Image.memory(authState.profileImage!),
                onScaleStart: (details) {
                  // todo: define started action.
                },
                onScaleUpdate: (details) {
                  // todo: define updated action.
                },
                onScaleEnd: (details) {
                  // todo: define ended action.
                },
              ),
            ),
            Positioned(
              bottom: 16.h,
              left: 16.w,
              right: 16.w,
              child: CustomElevatedButton(
                height: 60.h,
                width: double.infinity,
                text: '이미지 선택하기',
                onPressed: () async {
                  Uint8List? profileImage = await Cropper.crop(
                    cropperKey: _cropperKey,
                  );
                  if (profileImage != null) {
                    ref
                        .read(authViewModelProvider.notifier)
                        .setCroppedProfileImage(profileImage);
                    if (!context.mounted) return;
                    context.pop();
                  }
                },
                textStyle: context.textStyles.btnText,
                radius: AppSizes.radiusMD,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
