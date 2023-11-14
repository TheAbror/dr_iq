import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MySpacer extends StatelessWidget {
  const MySpacer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20.h),
        Divider(
          thickness: 1,
          height: 1,
        ),
        SizedBox(height: 10.h),
      ],
    );
  }
}
