import 'package:cached_network_image/cached_network_image.dart';
import 'package:dotori/core/constants/app_colors.dart';
import 'package:dotori/core/constants/app_sizes.dart';
import 'package:dotori/core/utils/custom_cache_manager.dart';
import 'package:dotori/feature/chatting/presentation/widgets/app_bars/app_bar_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageDetailScreen extends StatelessWidget {
  final String nickname;
  final String timeStamp;
  final String profileImage;
  final String imageUrl;

  const ImageDetailScreen({
    super.key,
    required this.nickname,
    required this.timeStamp,
    required this.profileImage,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: AppColors.primary.withValues(alpha: 0.8),
      appBar: AppBarImage(
        nickname: nickname,
        timeStamp: timeStamp,
        profileImage: profileImage,
        imageUrl: imageUrl,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppSizes.defaultPadding),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(AppSizes.radiusMD),
                  child: CachedNetworkImage(
                    imageUrl: imageUrl,
                    cacheManager: CustomCacheManager(),
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(height: 28.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
