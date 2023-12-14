// ignore_for_file: prefer_final_fields

import 'package:dr_iq/core/hive/box_person.dart';
import 'package:dr_iq/core/hive/person.dart';
import 'package:dr_iq/ui/sign_in_page/widgets/continue_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:dr_iq/core/colors/app_colors.dart';
import 'package:dr_iq/core/roots/app_routes.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    Person? person = boxPersons.get('name&age');

    TextEditingController nameController = TextEditingController(text: person?.name ?? '');
    TextEditingController ageController = TextEditingController(text: person?.age ?? '');

    return Scaffold(
      backgroundColor: AppColors.float,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(height: 70),
              Center(
                child: SvgPicture.asset(
                  'assets/images/Component 1.svg',
                  width: 350.w,
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(height: 70),
              ListBody(
                children: <Widget>[
                  const Text(
                    'Name',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextFormField(
                    controller: nameController,
                    textInputAction: TextInputAction.next,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Age',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextFormField(
                    controller: ageController,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const Spacer(),
              GestureDetector(
                onTap: () async {
                  final name = nameController.text.trim();
                  final age = ageController.text.trim();

                  boxPersons.put(
                    'name&age',
                    Person(
                      name: name,
                      age: age,
                    ),
                  );

                  Navigator.pushNamed(context, AppRoutes.homePage);
                },
                child: ContinueButton(),
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
