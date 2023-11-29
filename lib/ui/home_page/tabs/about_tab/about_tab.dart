import 'package:dr_iq/core/colors/app_colors.dart';
import 'package:dr_iq/ui/home_page/tabs/about_tab/widgets/bold_text.dart';
import 'package:dr_iq/ui/home_page/tabs/about_tab/widgets/rich_text.dart';
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
    return SingleChildScrollView(
      child: Padding(
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
            SizedBox(height: 5.h),
            MyRichText(
              underlineText: 'Academic Performance: ',
              text:
                  'IQ is often correlated with academic success. People with higher IQ scores may find it easier to grasp complex concepts and excel in educational settings.',
            ),
            SizedBox(height: 5.h),
            MyRichText(
              underlineText: 'Career Success: ',
              text:
                  'Some professions and roles require higher cognitive abilities. Individuals with higher IQs might find it easier to navigate intellectually demanding careers, such as those in science, technology, engineering, and mathematics (STEM) fields.',
            ),
            SizedBox(height: 5.h),
            MyRichText(
              underlineText: 'Problem Solving: ',
              text:
                  'High IQ is associated with better problem-solving skills. Individuals with a higher IQ may be more adept at finding creative solutions to challenges in various aspects of life.',
            ),
            SizedBox(height: 5.h),
            MyRichText(
              underlineText: 'Adaptability: ',
              text:
                  ' Intelligence is linked to the ability to adapt to new situations and learn from experience. Those with higher IQs may navigate changes and uncertainties more effectively.',
            ),
            SizedBox(height: 5.h),
            Center(
              child: Image.asset(
                'assets/images/improve_iq_assets/handy-gear.png',
                width: 200.h,
              ),
            ),
            SizedBox(height: 5.h),
            BoldText(text: 'What IQ Solves:'),
            SizedBox(height: 5.h),
            MyRichText(
              underlineText: 'Predictive Measure: ',
              text: ' IQ tests are often used as a predictive measure of academic and professional success.',
            ),
            SizedBox(height: 5.h),
            MyRichText(
              underlineText: 'Identifying Strengths and Weaknesses: ',
              text:
                  'IQ tests can help identify cognitive strengths and weaknesses, which can guide educational and career choices.',
            ),
            SizedBox(height: 5.h),
            MyRichText(
              underlineText: 'Research and Analysis: ',
              text:
                  'IQ research is used in psychology and neuroscience to understand the nature of intelligence and its impact on human behavior.',
            ),
            SizedBox(height: 5.h),
            Center(
              child: Image.asset(
                'assets/images/improve_iq_assets/3d-casual-life-line-brain-idea.png',
                width: 200.h,
              ),
            ),
            SizedBox(height: 15.h),
            BoldText(text: 'Do We Need to Have a High IQ?'),
            SizedBox(height: 5.h),
            SmallText(
              text:
                  '''While a high IQ can offer advantages in certain contexts, it is not the sole determinant of success or happiness. Emotional intelligence, social skills, creativity, perseverance, and other factors play crucial roles in personal and professional fulfillment. A well-rounded set of skills often contributes more to overall success and life satisfaction than IQ alone.''',
            ),
            //
            //
            //
            SizedBox(height: 5.h),
            Center(
              child: Image.asset(
                'assets/images/improve_iq_assets/biro-planting-and-watering-new-trees-to-improve-the-environment-1.png',
                width: 200.h,
              ),
            ),
            SizedBox(height: 10.h),

            //
            //
            //
            //
            BoldText(text: 'How to Improve IQ:'),
            SizedBox(height: 5.h),
            MyRichText(
              underlineText: 'Continuous Learning: ',
              text:
                  'Engage in lifelong learning, explore new subjects, and challenge your mind with diverse information.',
            ),
            SizedBox(height: 5.h),
            Center(
              child: Image.asset(
                'assets/images/improve_iq_assets/cyborg-117.gif',
                width: 200.h,
              ),
            ),
            SizedBox(height: 10.h),
            MyRichText(
              underlineText: 'Problem-Solving Exercises: ',
              text:
                  'Practice solving problems, puzzles, and logical reasoning exercises to enhance cognitive abilities.',
            ),
            SizedBox(height: 5.h),
            Center(
              child: Image.asset(
                'assets/images/improve_iq_assets/3d-fluency-rubiks-cube.png',
                width: 200.h,
              ),
            ),
            SizedBox(height: 10.h),
            MyRichText(
              underlineText: 'Physical Exercise: ',
              text:
                  'Regular physical activity is linked to improved cognitive function and can positively impact overall brain health.',
            ),
            SizedBox(height: 5.h),
            Center(
              child: Image.asset(
                'assets/images/improve_iq_assets/transistor-person-looking-into-the-distance-for-new-versions.png',
                width: 200.h,
              ),
            ),
            SizedBox(height: 10.h),

            MyRichText(
              underlineText: 'Healthy Lifestyle: ',
              text: 'Adequate sleep, a balanced diet, and stress management contribute to optimal cognitive function.',
            ),
            SizedBox(height: 5.h),
            Center(
              child: Image.asset(
                'assets/images/improve_iq_assets/crafty-vegetable-salad-for-a-healthy-diet-1.png',
                width: 200.h,
              ),
            ),
            MyRichText(
              underlineText: 'Mental Stimulation: ',
              text:
                  'Engage in activities that stimulate the mind, such as reading, playing musical instruments, or learning a new language.',
            ),
            SizedBox(height: 5.h),
            Padding(
              padding: EdgeInsets.only(left: 80.w),
              child: Center(
                child: Image.asset(
                  'assets/images/improve_iq_assets/casual-life-3d-tall-stack-of-books.png',
                  width: 200.h,
                ),
              ),
            ),
            SizedBox(height: 5.h),
            SizedBox(height: 5.h),
            SmallText(
              text:
                  '''It's important to note that while IQ measures certain aspects of intelligence, it doesn't capture the full spectrum of human capabilities. Cultivating a diverse set of skills and focusing on personal growth and well-being are essential for a fulfilling life.''',
            ),
            SizedBox(height: 15.h),
            Divider(
              height: 3,
              thickness: 2,
            ),

            SizedBox(height: 15.h),

            SmallText(
              text:
                  '''Questions used in this app were sourced from "The Ultimate IQ Test Book" and "What am I?" Riddles.\nWe appreciate the authors and creators of these resources for their valuable content.

"The Ultimate IQ Test Book" - PHILIP CARTER & KEN RUSSELL.
"What am I?" Riddles - Riddle Users

We would like to express our gratitude for the inspiration and intellectual content provided by these sources. If you have any concerns or would like specific attribution, please feel free to contact us. Thank you for contributing to the enrichment of our app's content.
 ''',
            ),
            SizedBox(height: 25.h),
          ],
        ),
      ),
    );
  }
}
