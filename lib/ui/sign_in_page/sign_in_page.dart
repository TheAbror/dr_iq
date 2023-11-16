import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:dr_iq/core/colors/app_colors.dart';
import 'package:dr_iq/core/preference_services/preference_services.dart';
import 'package:dr_iq/core/roots/app_routes.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  void initState() {
    Future.delayed(Duration.zero, () {
      // _showMyDialog();
    });
    super.initState();
  }

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
                    controller: _nameController,
                    textInputAction: TextInputAction.next,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Age',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextFormField(
                    controller: _ageController,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const Spacer(),
              GestureDetector(
                onTap: () async {
                  final name = _nameController.text.trim();
                  final age = _ageController.text.trim();
                  await PreferencesServices.saveName(name);
                  await PreferencesServices.saveAge(age);

                  // ignore: use_build_context_synchronously
                  Navigator.pushNamed(context, AppRoutes.homePage);
                },
                child: Container(
                  height: 45,
                  width: double.infinity,
                  padding: EdgeInsets.all(8.w),
                  decoration: BoxDecoration(
                    color: AppColors.textMain,
                    borderRadius: BorderRadius.circular(8.r),
                    border: Border.all(
                      width: 0.5.w,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Save',
                      style: TextStyle(
                        color: AppColors.float,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.sp,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
