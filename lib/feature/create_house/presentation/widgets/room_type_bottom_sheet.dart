import 'package:dotori/core/constants/app_colors.dart';
import 'package:dotori/core/themes/app_text_styles.dart';
import 'package:dotori/core/widgets/modal_bottom_sheets/blurred_bottom_sheet.dart';
import 'package:dotori/feature/create_house/domain/entities/house_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// 기숙사 인실 선택 바텀시트
class RoomTypeBottomSheet extends StatelessWidget {
  final HouseType houseType;
  final Function(int) onRoomSelected;

  const RoomTypeBottomSheet({
    super.key,
    required this.houseType,
    required this.onRoomSelected,
  });

  @override
  Widget build(BuildContext context) {
    final roomOptions = _getRoomOptions(houseType);

    return BlurredBottomSheet(
      backgroundColor: Colors.white,
      radius: 20.r,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // 핸들바
          Container(
            margin: EdgeInsets.only(top: 12.h, bottom: 20.h),
            width: 40.w,
            height: 4.h,
            decoration: BoxDecoration(
              color: AppColors.gray200,
              borderRadius: BorderRadius.circular(2.r),
            ),
          ),
          // 리스트
          ...roomOptions.map(
            (roomType) => _buildRoomTypeItem(context, roomType),
          ),
          SizedBox(height: 20.h),
        ],
      ),
    );
  }

  Widget _buildRoomTypeItem(BuildContext context, int roomCount) {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
        onRoomSelected(roomCount);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 14.h),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '회원님을 제외한 ${roomCount - 1}명의 사용자를 더 모집해요!',
                    style: Theme.of(
                      context,
                    ).textTheme.caption1.copyWith(color: AppColors.gray400),
                  ),
                  Text(
                    '${houseType.displayName} ${roomCount}인실',
                    style: Theme.of(context).textTheme.sectionHeadline1
                        .copyWith(color: AppColors.gray500),
                  ),
                ],
              ),
            ),
            SvgPicture.asset('assets/icons/go.svg', width: 28.w, height: 28.w),
          ],
        ),
      ),
    );
  }

  /// 기숙사 타입별 인실 옵션 반환 (모두 2,3,4인실로 통일)
  List<int> _getRoomOptions(HouseType type) {
    return [2, 3, 4]; // 모든 기숙사 2인실, 3인실, 4인실
  }

  /// 바텀시트 표시 헬퍼 메서드
  static void show(
    BuildContext context, {
    required HouseType houseType,
    required Function(int) onRoomSelected,
  }) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (context) => RoomTypeBottomSheet(
        houseType: houseType,
        onRoomSelected: onRoomSelected,
      ),
    );
  }
}
