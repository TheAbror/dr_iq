import 'package:dr_iq/core/app_colors.dart';
import 'package:dr_iq/ui/home_page/tabs/about_tab/widgets/bold_text.dart';
import 'package:dr_iq/ui/home_page/tabs/about_tab/widgets/small_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AboutTab extends StatelessWidget {
  const AboutTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.float,
        elevation: 0.5,
        leading: IconButton(
          color: AppColors.textMain,
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: Text(
          'About IQ',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: AppColors.textMain,
          ),
        ),
        centerTitle: true,
      ),
      body: _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BoldText(text: 'What is IQ (Intelligence Quotient)?'),
          SizedBox(height: 5.h),
          SmallText(
            text:
                '''IQ, or Intelligence Quotient, is a measure of a person's intellectual abilities in relation to others. It is typically derived from standardized tests designed to assess human intelligence. These tests evaluate various cognitive abilities, including problem-solving skills, logical reasoning, memory, and mathematical comprehension. The concept of IQ is based on the idea that intelligence is a general cognitive ability that can be quantified.''',
          ),
          SizedBox(height: 5.h),
          Center(
            child: Image.asset(
              'assets/images/improve_iq_assets/flame-brain-research.png',
              width: 300.h,
            ),
          ),
          BoldText(text: 'Role of IQ in Our Life:'),
          Text(
            'Academic Performance: ',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
            ),
          ),
          SmallText(
              text:
                  'IQ is often correlated with academic success. People with higher IQ scores may find it easier to grasp complex concepts and excel in educational settings.'),
        ],
      ),
    );
  }
}
