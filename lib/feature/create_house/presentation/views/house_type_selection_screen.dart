import 'package:dotori/core/constants/app_colors.dart';
import 'package:dotori/core/constants/app_sizes.dart';
import 'package:dotori/core/constants/paths/route_path.dart';
import 'package:dotori/core/themes/app_text_styles.dart';
import 'package:dotori/core/themes/text_theme_extension.dart';
import 'package:dotori/core/widgets/app_bars/app_bar_back.dart';
import 'package:dotori/feature/create_house/domain/entities/house_type.dart';
import 'package:dotori/feature/create_house/presentation/widgets/house_type_card.dart';
import 'package:dotori/feature/create_house/presentation/widgets/room_type_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// 하우스 타입 선택 화면
class HouseTypeSelectionScreen extends HookConsumerWidget {
  const HouseTypeSelectionScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBarBack.back(),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: AppSizes.defaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 24.h),
              // 타이틀
              Text(
                '하우스 생성',
                style: Theme.of(
                  context,
                ).textTheme.headLine1.copyWith(color: AppColors.gray500),
              ),
              SizedBox(height: 8.h),
              // 설명
              Text(
                '모집하는 기숙사 형태를 선택해주세요.',
                style: context.textStyles.body1.copyWith(
                  color: AppColors.gray400,
                ),
              ),
              SizedBox(height: 24.h),
              // 기숙사 타입 카드 리스트
              Column(
                children: [
                  // 매지학사
                  HouseTypeCard(
                    houseType: HouseType.maeji,
                    onTap: () {
                      RoomTypeBottomSheet.show(
                        context,
                        houseType: HouseType.maeji,
                        onRoomSelected: (roomCount) {
                          context.push(
                            RoutePath.conditionSetting,
                            extra: {
                              'houseType': HouseType.maeji,
                              'roomCount': roomCount,
                            },
                          );
                        },
                      );
                    },
                  ),
                  SizedBox(height: 16.h),
                  // 세연학사
                  HouseTypeCard(
                    houseType: HouseType.saeyeon,
                    onTap: () {
                      RoomTypeBottomSheet.show(
                        context,
                        houseType: HouseType.saeyeon,
                        onRoomSelected: (roomCount) {
                          context.push(
                            RoutePath.conditionSetting,
                            extra: {
                              'houseType': HouseType.saeyeon,
                              'roomCount': roomCount,
                            },
                          );
                        },
                      );
                    },
                  ),
                  SizedBox(height: 16.h),
                  // 청연학사
                  HouseTypeCard(
                    houseType: HouseType.chungyeon,
                    onTap: () {
                      RoomTypeBottomSheet.show(
                        context,
                        houseType: HouseType.chungyeon,
                        onRoomSelected: (roomCount) {
                          context.push(
                            RoutePath.conditionSetting,
                            extra: {
                              'houseType': HouseType.chungyeon,
                              'roomCount': roomCount,
                            },
                          );
                        },
                      );
                    },
                  ),
                ],
              ),
              SizedBox(height: 32.h),
            ],
          ),
        ),
      ),
    );
  }
}
