import 'package:dr_iq/core/colors/app_colors.dart';
import 'package:dr_iq/core/constants/global_constants.dart';
import 'package:dr_iq/core/roots/app_routes.dart';
import 'package:dr_iq/ui/home_page/tabs/improve_iq/widgets/improve_iq_app_bar.dart';
import 'package:dr_iq/ui/home_page/tabs/improve_iq/widgets/my_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImproveIQTab extends StatelessWidget {
  const ImproveIQTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.float,
      appBar: ImproveIQAppBar(),
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
      itemCount: 11,
      shrinkWrap: true,
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.w),
      physics: AlwaysScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        String image;
        String cardTitle;
        List<Map<String, dynamic>> questionsList;

        switch (index) {
          case 0:
            image = 'assets/images/improve_iq_assets/logical.png';
            cardTitle = 'Logical Reasoning';
            questionsList = GlobalConstants.logicalReasoning;
            break;
          case 1:
            image = 'assets/images/improve_iq_assets/3d-fluency-rubiks-cube.png';
            cardTitle = 'Random Questions';
            questionsList = GlobalConstants.randomQuestions;
            break;
          case 2:
            image = 'assets/images/improve_iq_assets/random.png';
            cardTitle = 'Critical Thinking Questions';
            questionsList = GlobalConstants.criticalThinkingQuestions;
            break;
          case 3:
            image = 'assets/images/improve_iq_assets/math.png';
            cardTitle = 'Mathematical Problem Solving';
            questionsList = GlobalConstants.math;
            break;
          case 4:
            image = 'assets/images/improve_iq_assets/general_k.png';
            cardTitle = 'General Knowledge';
            questionsList = GlobalConstants.generalKnowledge;
            break;
          case 5:
            image = 'assets/images/improve_iq_assets/3d-casual-life-map.png';
            cardTitle = 'Countries';
            questionsList = GlobalConstants.countries;
            break;
          case 6:
            image = 'assets/images/improve_iq_assets/verbal_r.png';
            cardTitle = 'Verbal Reasoning';
            questionsList = GlobalConstants.verbalReasoning;
            break;
          case 7:
            image = 'assets/images/improve_iq_assets/statistics.png';
            cardTitle = 'Analytical Reasoning';
            questionsList = GlobalConstants.analyticalReasoning;
            break;
          case 8:
            image = 'assets/images/improve_iq_assets/flame-tricky.png';
            cardTitle = 'Tricky Questions';
            questionsList = GlobalConstants.trickyQuestions;
            break;
          case 9:
            image = 'assets/images/improve_iq_assets/more_t.png';
            cardTitle = 'More Tricky Questions';
            questionsList = GlobalConstants.moreTrickyQuestions;
            break;
          case 10:
            image = 'assets/images/improve_iq_assets/more_t.png';
            cardTitle = 'More Tricky Questions';
            questionsList = GlobalConstants.chapter1;
            break;
          default:
            image = 'assets/images/improve_iq_assets/3d-fluency-faq.png';
            cardTitle = 'Critical Thinking Questions';
            questionsList = GlobalConstants.criticalThinkingQuestions;
        }

        return MyCard(
          onTap: () => Navigator.pushNamed(
            context,
            AppRoutes.takeiqtest,
            arguments: questionsList,
          ),
          text: cardTitle,
          image: image,
        );
      },
    );
  }
}
