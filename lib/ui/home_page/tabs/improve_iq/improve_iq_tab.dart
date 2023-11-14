import 'package:dr_iq/core/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImproveIQTab extends StatelessWidget {
  const ImproveIQTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.float,
      appBar: AppBar(
        backgroundColor: AppColors.float,
        elevation: 0,
        leading: IconButton(
          color: AppColors.textMain,
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        children: const [
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MyCard(image: 'assets/images/improve_iq_assets/bouncy-planet-earth.png'),
              MyCard(
                image: 'assets/images/improve_iq_assets/usaflag.png',
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // MyCard(),
              // MyCard(),
            ],
          ),
        ],
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  final String image;

  const MyCard({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180.w,
      width: 190.w,
      padding: EdgeInsets.all(8.w),
      decoration: BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(
          color: AppColors.outline,
          width: 0.5.w,
        ),
      ),
      child: Image.asset(image),
    );
  }
}
