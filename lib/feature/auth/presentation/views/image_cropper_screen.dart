import 'dart:typed_data';

import 'package:cropperx/cropperx.dart';
import 'package:dotori/core/constants/app_sizes.dart';
import 'package:dotori/core/themes/app_text_styles.dart';
import 'package:dotori/core/themes/text_theme_extension.dart';
import 'package:dotori/core/widgets/app_bars/app_bar_back.dart';
import 'package:dotori/core/widgets/buttons/custom_elevated_button.dart';
import 'package:dotori/feature/auth/presentation/viewmodels/auth_view_model.dart';
import 'package:dotori/feature/auth/presentation/viewmodels/states/auth_state.dart';
import 'package:dotori/feature/setting/presentation/viewmodels/edit_user_view_model.dart';
import 'package:dotori/feature/setting/presentation/viewmodels/states/edit_user_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

enum ImageCropperType { auth, edit }

class ImageCropperScreen extends ConsumerWidget {
  final ImageCropperType type;
  final GlobalKey _cropperKey = GlobalKey(debugLabel: 'cropperKey');

  ImageCropperScreen({super.key, required this.type});

  factory ImageCropperScreen.auth() =>
      ImageCropperScreen(type: ImageCropperType.auth);

  factory ImageCropperScreen.edit() =>
      ImageCropperScreen(type: ImageCropperType.edit);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AuthState authState = ref.watch(authViewModelProvider);
    final EditUserState editUserState = ref.watch(editUserViewModelProvider);
    final Uint8List? imageBytes = switch (type) {
      ImageCropperType.auth => authState.profileImage,
      ImageCropperType.edit => editUserState.profileImage,
    };

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
                image: Image.memory(
                  imageBytes!,
                  fit: BoxFit.cover,
                ),
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
                  final Uint8List? cropped = await Cropper.crop(
                    cropperKey: _cropperKey,
                  );

                  if (cropped == null) return;
                  switch (type) {
                    case ImageCropperType.auth:
                      ref
                          .read(authViewModelProvider.notifier)
                          .setCroppedProfileImage(cropped);
                      break;
                    case ImageCropperType.edit:
                      ref
                          .read(editUserViewModelProvider.notifier)
                          .setCroppedProfileImage(cropped);
                      break;
                  }

                  if (!context.mounted) return;
                  context.pop();
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
