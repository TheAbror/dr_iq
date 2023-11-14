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
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 190.w,
        childAspectRatio: 5 / 6,
        crossAxisSpacing: 10,
        mainAxisSpacing: 0,
      ),
      itemCount: 4,
      shrinkWrap: true,
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      physics: AlwaysScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        String image;
        String cardTitle;

        if (index == 0) {
          image = 'assets/images/improve_iq_assets/bouncy-planet-earth.png';
          cardTitle = 'IQ Questions';
        } else if (index == 1) {
          image = 'assets/images/improve_iq_assets/usaflag.png';
          cardTitle = 'Random Questions';
        } else if (index == 2) {
          image = 'assets/images/improve_iq_assets/3d-fluency-rubiks-cube.png';
          cardTitle = 'Critical Thinking Questions';
        } else if (index == 3) {
          image = 'assets/images/improve_iq_assets/random.png';
          cardTitle = 'Critical Thinking Questions';
        } else {
          image = 'assets/images/improve_iq_assets/3d-fluency-rubiks-cube.png';
          cardTitle = 'Critical Thinking Questions';
        }

        return MyCard(
          text: cardTitle,
          image: image,
        );
      },
    );
  }
}

class MyCard extends StatelessWidget {
  final String image;
  final String text;

  const MyCard({
    super.key,
    required this.image,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
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
        ),
        SizedBox(height: 10.h),
        Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10.h),
      ],
    );
  }
}
