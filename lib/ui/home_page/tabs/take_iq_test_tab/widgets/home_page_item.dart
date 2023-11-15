import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:dr_iq/core/app_colors.dart';

class HomePageItem extends AnimatedWidget {
  final String text;
  final IconData icon;
  final Color color;
  final VoidCallback? onTap;
  final AnimationController controller;

  const HomePageItem({
    super.key,
    required this.text,
    required this.icon,
    required this.color,
    this.onTap,
    required this.controller,
  }) : super(listenable: controller);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: () {},
      onTap: onTap,
      onTapDown: _onTapDown,
      onTapUp: _onTapUp,
      child: Transform.scale(
        scale: 1 - controller.value,
        child: Container(
          height: 165.h,
          width: 189.w,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: AppColors.float),
            boxShadow: const [
              BoxShadow(
                color: Color(0x80000000),
                blurRadius: 10.0,
                offset: Offset(0.0, 2.0),
              ),
            ],
          ),
          child: Column(
            children: [
              const Spacer(),
              Icon(
                icon,
                size: 60,
                color: AppColors.float,
              ),
              const SizedBox(height: 5),
              Text(
                text,
                style: const TextStyle(
                  color: AppColors.float,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }

  void _onTapDown(TapDownDetails details) {
    controller.forward();
  }

  void _onTapUp(TapUpDetails details) {
    controller.reverse();
  }
}
