  import 'package:dotori/core/constants/app_colors.dart';
  import 'package:dotori/core/constants/app_sizes.dart';
  import 'package:dotori/core/constants/paths/icon_path.dart';
  import 'package:dotori/core/themes/app_text_styles.dart';
  import 'package:dotori/core/themes/text_theme_extension.dart';
  import 'package:flutter/material.dart';
  import 'package:flutter_hooks/flutter_hooks.dart';
  import 'package:flutter_screenutil/flutter_screenutil.dart';
  import 'package:flutter_svg/flutter_svg.dart';
import 'package:oktoast/oktoast.dart';

  class ChattingTextField extends HookWidget {
    final TextEditingController textEditingController;
    final VoidCallback onPressed;

    const ChattingTextField({
      super.key,
      required this.textEditingController,
      required this.onPressed,
    });

    @override
    Widget build(BuildContext context) {
      final ValueNotifier<bool> isRotated = useState(false);
      final FocusNode focusNode = useFocusNode();
      const int maxLength = 10;

      useEffect(() {
        void listener() {
          if (focusNode.hasFocus) {
            isRotated.value = false;
          }
        }

        focusNode.addListener(listener);
        return () => focusNode.removeListener(listener);
      }, [focusNode]);

      return SafeArea(
        child: Container(
          color: AppColors.background,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppSizes.defaultPadding,
                  vertical: 10.h,
                ),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        isRotated.value = !isRotated.value;
                        if (isRotated.value) {
                          FocusScope.of(context).unfocus();
                        } else {
                          focusNode.requestFocus();
                        }
                      },
                      child: SizedBox(
                        height: 32.r,
                        width: 32.r,
                        child: AnimatedRotation(
                          turns: isRotated.value ? 0.125 : 0.0,
                          duration: const Duration(milliseconds: 250),
                          curve: Curves.easeOut,
                          child: Center(
                            child: SvgPicture.asset(
                              IconPath.plus,
                              width: 16.r,
                              height: 16.r,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 4.w),
                    Expanded(
                      child: ConstrainedBox(
                        constraints: BoxConstraints(maxHeight: 80.h),
                        child: Scrollbar(
                          child: SingleChildScrollView(
                            reverse: true,
                            child: TextField(
                              controller: textEditingController,
                              focusNode: focusNode,
                              style: context.textStyles.body3.copyWith(
                                color: AppColors.gray500,
                              ),
                              keyboardType: TextInputType.multiline,
                              maxLines: null,
                              textInputAction: TextInputAction.newline,
                              cursorColor: AppColors.gray500,
                              cursorRadius: Radius.circular(1.r),
                              maxLength: maxLength,
                              buildCounter:
                                  (
                                    _, {
                                    required currentLength,
                                    required isFocused,
                                    maxLength,
                                  }) {
                                    return const SizedBox.shrink();
                                  },
                              onChanged: (value) {
                                if (value.length == maxLength) {
                                  showToastWidget(
                                    position: ToastPosition(align: Alignment.bottomCenter),
                                    Container(
                                      margin: EdgeInsets.only(bottom: 76.h),
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 24.w,
                                        vertical: 10.h,
                                      ),
                                      decoration: BoxDecoration(
                                        color: AppColors.gray100,
                                        borderRadius: BorderRadius.circular(22.r),
                                        boxShadow: [
                                          BoxShadow(
                                            color: AppColors.shadow.withValues(alpha: 0.25),
                                            blurRadius: 24.r,
                                            spreadRadius: 0,
                                            offset: Offset(0, 4.h),
                                          ),
                                        ],
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          SvgPicture.asset(
                                            IconPath.warningToast,
                                            width: 20.r,
                                            height: 20.r,
                                          ),
                                          SizedBox(width: 10.w),
                                          Text(
                                            '최대 ${maxLength.toString()}자 까지 입력 할 수 있습니다.',
                                            style: context.textStyles.body3.copyWith(
                                              color: AppColors.gray300,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ],
                                      ),
                                    ),
                                    animationDuration: const Duration(milliseconds: 300),
                                    duration: const Duration(seconds: 1),
                                  );
                                }
                              },
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                  vertical: 9.h,
                                  horizontal: 14.w,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(21.r),
                                ),
                                hintText: '메세지 보내기...',
                                hintStyle: context.textStyles.body1.copyWith(
                                  color: AppColors.gray200,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(21.r),
                                ),
                                filled: true,
                                fillColor: AppColors.gray100,
                                isDense: true,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 4.w),
                    IconButton(
                      padding: EdgeInsets.zero,
                      constraints: const BoxConstraints(),
                      onPressed: onPressed,
                      icon: SvgPicture.asset(
                        IconPath.send,
                        width: 32.r,
                        height: 32.r,
                      ),
                    ),
                  ],
                ),
              ),
              if (isRotated.value) ...[
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppSizes.defaultPadding,
                    vertical: 16.h,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 83.r,
                        height: 83.r,
                        child: Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              CircleAvatar(
                                radius: 21.5.r,
                                backgroundColor: AppColors.gray100,
                                child: SvgPicture.asset(
                                  IconPath.pictureChat,
                                  width: 24.r,
                                  height: 20.r,
                                ),
                              ),
                              SizedBox(height: 4.h),
                              Text(
                                '사진',
                                style: context.textStyles.caption1.copyWith(
                                  color: AppColors.gray300,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 83.r,
                        height: 83.r,
                        child: Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              CircleAvatar(
                                radius: 21.5.r,
                                backgroundColor: AppColors.gray100,
                                child: SvgPicture.asset(
                                  IconPath.cameraChat,
                                  width: 22.r,
                                  height: 16.r,
                                ),
                              ),
                              SizedBox(height: 4.h),
                              Text(
                                '카메라',
                                style: context.textStyles.caption1.copyWith(
                                  color: AppColors.gray300,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 83.r,
                        height: 83.r,
                        child: Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              CircleAvatar(
                                radius: 21.5.r,
                                backgroundColor: AppColors.gray100,
                                child: SvgPicture.asset(
                                  IconPath.requestChat,
                                  width: 22.r,
                                  height: 16.r,
                                ),
                              ),
                              SizedBox(height: 4.h),
                              Text(
                                '하우스 요청',
                                style: context.textStyles.caption1.copyWith(
                                  color: AppColors.gray300,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 83.r,
                        height: 83.r,
                        child: Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              CircleAvatar(
                                radius: 21.5.r,
                                backgroundColor: AppColors.gray100,
                                child: SvgPicture.asset(
                                  IconPath.exitChat,
                                  width: 19.r,
                                  height: 18.r,
                                ),
                              ),
                              SizedBox(height: 4.h),
                              Text(
                                '방 나가기',
                                style: context.textStyles.caption1.copyWith(
                                  color: AppColors.gray300,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16.h),
              ],
            ],
          ),
        ),
      );
    }
  }
