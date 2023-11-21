import 'package:dr_iq/core/bottom_sheet/default_bottom_sheet.dart';
import 'package:dr_iq/core/colors/app_colors.dart';
import 'package:dr_iq/ui/home_page/tabs/profile_tab/bloc/profile_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryBottomSheet extends StatefulWidget {
  final String title;
  final String name;
  final String age;
  final String phone;
  final String email;

  const PrimaryBottomSheet({
    super.key,
    required this.title,
    required this.name,
    required this.age,
    required this.phone,
    required this.email,
  });

  static Future<String?> show(
    BuildContext parentContext, {
    required String title,
    required String name,
    required String age,
    required String phone,
    required String email,
  }) async {
    return showModalBottomSheet<String>(
      backgroundColor: Theme.of(parentContext).colorScheme.background,
      context: parentContext,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.r),
          topRight: Radius.circular(20.r),
        ),
      ),
      isScrollControlled: true,
      builder: (context) {
        return PrimaryBottomSheet(
          title: title,
          name: name,
          age: age,
          phone: phone,
          email: email,
        );
      },
    );
  }

  @override
  State<PrimaryBottomSheet> createState() => _PrimaryBottomSheetState();
}

class _PrimaryBottomSheetState extends State<PrimaryBottomSheet> {
  late final TextEditingController _controllerName;
  late final TextEditingController _controllerAge;
  late final TextEditingController _controllerPhone;
  late final TextEditingController _controllerEmail;

  @override
  void initState() {
    super.initState();

    _controllerName = TextEditingController();
    _controllerAge = TextEditingController();
    _controllerPhone = TextEditingController();
    _controllerEmail = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    disposeTextEditingControllers();
  }

  void disposeTextEditingControllers() {
    _controllerName.dispose();
    _controllerAge.dispose();
    _controllerPhone.dispose();
    _controllerEmail.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.float,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.r),
          topRight: Radius.circular(20.r),
        ),
      ),
      child: DefaultBottomSheet(
        title: widget.title,
        heightRatio: 0.6,
        actionText: 'Save',
        isConfirmationNeeded: true,
        action: () {
          // Navigator.pop(
          //     context,
          //     context.read<ProfileBloc>().changeProfileInfo(
          //           _controllerName.text,
          //           _controllerAge.text,
          //           _controllerPhone.text,
          //           _controllerEmail.text,
          //         ));
        },
        child: Column(
          children: [
            const Divider(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w),
              child: Column(
                children: [
                  SizedBox(height: 5.h),

                  TextFormField(
                    controller: _controllerName,
                    decoration: InputDecoration(
                      filled: true,
                      border: InputBorder.none, // Remove border color
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.stroke, width: 0.5.w),
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.primary, width: 0.5.w),
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.stroke, width: 0.5.w),
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.stroke, width: 0.5.w),
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      fillColor: AppColors.background,
                      labelText: 'Name',
                      labelStyle: TextStyle(color: AppColors.textMain, fontWeight: FontWeight.bold),
                      hintText: 'dsfd',
                      hintStyle: const TextStyle(color: AppColors.textSecondary),
                    ),
                    textInputAction: TextInputAction.next,
                    onChanged: (value) {},
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your email';
                      }

                      return null;
                    },
                  ),
                  SizedBox(height: 4.h),

                  TextFormField(
                    controller: _controllerAge,
                    decoration: InputDecoration(
                      filled: true,
                      border: InputBorder.none, // Remove border color
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.stroke, width: 0.5.w),
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.primary, width: 0.5.w),
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.stroke, width: 0.5.w),
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.stroke, width: 0.5.w),
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      fillColor: AppColors.background,
                      labelText: 'Age',
                      labelStyle: TextStyle(color: AppColors.textMain, fontWeight: FontWeight.bold),
                      hintText: 'dsfd',
                      hintStyle: const TextStyle(color: AppColors.textSecondary),
                    ),
                    textInputAction: TextInputAction.next,
                    onChanged: (value) {},
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter value';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 4.h),

                  TextFormField(
                    controller: _controllerPhone,
                    decoration: InputDecoration(
                      filled: true,
                      border: InputBorder.none, // Remove border color
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.stroke, width: 0.5.w),
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.primary, width: 0.5.w),
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.stroke, width: 0.5.w),
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.stroke, width: 0.5.w),
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      fillColor: AppColors.background,
                      labelText: 'Phone',
                      labelStyle: TextStyle(color: AppColors.textMain, fontWeight: FontWeight.bold),
                      hintText: 'dsfd',
                      hintStyle: const TextStyle(color: AppColors.textSecondary),
                    ),
                    onChanged: (value) {},
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter value';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 4.h),

                  TextFormField(
                    controller: _controllerEmail,
                    decoration: InputDecoration(
                      filled: true,
                      border: InputBorder.none, // Remove border color
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.stroke, width: 0.5.w),
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.primary, width: 0.5.w),
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.stroke, width: 0.5.w),
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.stroke, width: 0.5.w),
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      labelText: 'Email',
                      labelStyle: TextStyle(color: AppColors.textMain, fontWeight: FontWeight.bold),
                      hintText: 'dsfd',
                      fillColor: AppColors.background,

                      hintStyle: const TextStyle(color: AppColors.textSecondary),
                    ),
                    onChanged: (value) {},
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter value';
                      }
                      return null;
                    },
                  ),
                  // INFO: Always needed for Scrollable Bottom sheets
                  SizedBox(height: 24.h),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
