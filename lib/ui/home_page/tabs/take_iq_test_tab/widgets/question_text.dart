import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:dr_iq/core/colors/app_colors.dart';

class QuestionText extends StatelessWidget {
  final String textQuestion;

  const QuestionText({
    super.key,
    required this.textQuestion,
  });

  @override
  Widget build(BuildContext context) {
    var image = textQuestion.contains('assets/');
    return InteractiveViewer(
      panEnabled: false, // Set it to false
      boundaryMargin: EdgeInsets.all(100),
      minScale: 0.5,
      maxScale: 2,
      child: Container(
        height: 300.h,
        padding: EdgeInsets.all(2),
        decoration: BoxDecoration(
          color: image ? AppColors.float : AppColors.textMain,
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(width: 1),
        ),
        child: Center(
          child: image
              ? Container(
                  decoration: BoxDecoration(image: DecorationImage(image: AssetImage(textQuestion))),
                  child: GestureDetector(
                    onTap: () async {
                      await showDialog(
                        context: context,
                        builder: (_) => Dialog(
                          child: Container(
                            width: 500.w,
                            height: 500.w,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: ExactAssetImage(textQuestion),
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                )
              : Text(
                  textQuestion,
                  style: TextStyle(
                    color: AppColors.float,
                    fontWeight: FontWeight.bold,
                    fontSize: 24.sp,
                  ),
                  textAlign: TextAlign.center,
                ),
        ),
      ),
    );
  }
}
