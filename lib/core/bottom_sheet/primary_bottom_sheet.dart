import 'package:dr_iq/core/bottom_sheet/default_bottom_sheet.dart';
import 'package:dr_iq/core/colors/app_colors.dart';
import 'package:dr_iq/core/preference_services/preference_services.dart';
import 'package:flutter/material.dart';
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

    _controllerName = TextEditingController(text: widget.name);
    _controllerAge = TextEditingController(text: widget.age);
    _controllerPhone = TextEditingController(text: widget.phone);
    _controllerEmail = TextEditingController(text: widget.email);
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
        action: () async {
          final name = _controllerName.text.trim();
          final age = _controllerAge.text.trim();
          final phone = _controllerPhone.text.trim();
          final email = _controllerEmail.text.trim();
          await PreferencesServices.saveName(name);
          await PreferencesServices.saveAge(age);
          await PreferencesServices.savePhone(phone);
          await PreferencesServices.saveEmail(email);
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
                    decoration: profileTextfieldDecoration(),
                    textInputAction: TextInputAction.next,
                    style: TextStyle(fontWeight: FontWeight.bold),
                    onChanged: (value) {},
                  ),
                  SizedBox(height: 8.h),

                  TextFormField(
                    controller: _controllerAge,
                    decoration: profileTextfieldDecoration(),
                    textInputAction: TextInputAction.next,
                    style: TextStyle(fontWeight: FontWeight.bold),
                    onChanged: (value) {},
                  ),
                  SizedBox(height: 8.h),

                  //TODO onchanged

                  TextFormField(
                    controller: _controllerPhone,
                    decoration: profileTextfieldDecoration(),
                    textInputAction: TextInputAction.next,
                    style: TextStyle(fontWeight: FontWeight.bold),
                    onChanged: (value) {},
                  ),
                  SizedBox(height: 8.h),

                  TextFormField(
                    controller: _controllerEmail,
                    decoration: profileTextfieldDecoration(),
                    style: TextStyle(fontWeight: FontWeight.bold),
                    onChanged: (value) {},
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

  InputDecoration profileTextfieldDecoration() {
    return InputDecoration(
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
      hintStyle: const TextStyle(color: AppColors.textSecondary),
    );
  }
}
