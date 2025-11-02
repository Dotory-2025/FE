import 'package:dotori/core/constants/paths/route_path.dart';
import 'package:dotori/core/utils/image_picker_utils.dart';
import 'package:dotori/core/widgets/list_tiles/custom_modal_list_tile.dart';
import 'package:dotori/core/widgets/modal_bottom_sheets/blurred_bottom_sheet.dart';
import 'package:dotori/feature/auth/presentation/viewmodels/auth_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';

class ProfileModal extends ConsumerWidget {
  const ProfileModal({super.key});

  ///TODO: IOS 권한 설정
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BlurredBottomSheet(
      padding: EdgeInsets.zero,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 24.h),
          CustomModalListTile.black(
            title: '갤러리 바로가기',
            onPressed: () async {
              final AuthViewModel authViewModel = ref.read(authViewModelProvider.notifier);

              final XFile? xFile =
              await ImagePickerUtils().pickImage(ImageSource.gallery);

              if (xFile != null) {
                final Uint8List profileImage = await xFile.readAsBytes();
                authViewModel.setProfileImage(profileImage);
                if (!context.mounted) return;
                context.pop();
                context.push(RoutePath.imageCropper);
              }
            },
          ),
          CustomModalListTile.black(
            title: '카메라 바로가기',
            onPressed: () async {
              final AuthViewModel authViewModel = ref.read(authViewModelProvider.notifier);

              final XFile? xFile =
              await ImagePickerUtils().pickImage(ImageSource.camera);

              if (xFile != null) {
                final Uint8List profileImage = await xFile.readAsBytes();
                authViewModel.setProfileImage(profileImage);
                if (!context.mounted) return;
                context.pop();
                context.push(RoutePath.imageCropper);
              }
            },
          ),
          SizedBox(height: 16.h),
        ],
      ),
    );
  }
}
