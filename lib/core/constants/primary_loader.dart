import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:dr_iq/core/colors/app_colors.dart';

class PrimaryLoader extends StatelessWidget {
  final bool withCentering;
  final EdgeInsets padding;
  final double size;
  final double strokeWidth;

  const PrimaryLoader({
    Key? key,
    this.padding = EdgeInsets.zero,
    this.withCentering = true,
    this.size = 36,
    this.strokeWidth = 4.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (withCentering) {
      return Center(
        child: Container(
          width: size,
          height: size,
          padding: padding,
          child: CircularProgressIndicator(color: AppColors.primary, strokeWidth: strokeWidth),
        ),
      );
    } else {
      return Container(
        width: size,
        height: size,
        padding: padding,
        child: CircularProgressIndicator(color: AppColors.primary, strokeWidth: strokeWidth),
      );
    }
  }
}

class PrimaryBottomSheetLoader extends StatelessWidget {
  const PrimaryBottomSheetLoader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 80.h),
        child: const CircularProgressIndicator(color: AppColors.primary),
      ),
    );
  }
}
