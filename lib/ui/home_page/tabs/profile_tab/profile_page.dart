import 'package:dr_iq/core/bottom_sheet/primary_bottom_sheet.dart';
import 'package:dr_iq/core/preference_services/preference_services.dart';
import 'package:dr_iq/ui/home_page/tabs/profile_tab/bloc/profile_bloc.dart';
import 'package:dr_iq/ui/home_page/tabs/profile_tab/widgets/edit_profile_info_button.dart';
import 'package:dr_iq/ui/home_page/tabs/profile_tab/widgets/profile_body_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:dr_iq/core/colors/app_colors.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  late String name = 'User';
  late String age = 'Not Given';
  late String phone = 'Not Given';
  late String email = 'Not Given';

  void callDB() async {
    String? nameD = await PreferencesServices.getName();
    String? ageD = await PreferencesServices.getAge();
    String? phoneD = await PreferencesServices.getPhone();
    String? emailD = await PreferencesServices.getEmail();

// Assign retrieved values or default values if null
    name = nameD != null && nameD.isNotEmpty ? nameD : 'User';
    age = ageD != null && ageD.isNotEmpty ? ageD : 'Not Given';
    phone = phoneD != null && phoneD.isNotEmpty ? phoneD : 'Not Given';
    email = emailD != null && emailD.isNotEmpty ? emailD : 'Not Given';

    setState(() {});
  }

  @override
  void initState() {
    callDB();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.float,
      body: _Body(
        name: name,
        age: age,
        phone: phone,
        email: email,
      ),
    );
  }
}

class _Body extends StatelessWidget {
  final String name;
  final String age;
  final String phone;
  final String email;

  const _Body({
    Key? key,
    required this.name,
    required this.age,
    required this.phone,
    required this.email,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProfileBloc(),
      child: BlocBuilder<ProfileBloc, ProfileState>(
        builder: (context, state) {
          return Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                bottom: 0.h,
                child: Container(
                  padding: EdgeInsets.all(2.h),
                  height: 610.h,
                  width: 430.w,
                  decoration: BoxDecoration(
                    color: AppColors.profileColor,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(25.r),
                      topLeft: Radius.circular(25.r),
                    ),
                    //
                  ),
                  alignment: Alignment.center,
                ),
              ),
              Column(
                children: [
                  SizedBox(height: 350.h),
                  ProfileBodyItem(text: name, icons: Icons.person),
                  ProfileBodyItem(text: age, icons: Icons.calendar_month),
                  ProfileBodyItem(text: phone, icons: Icons.phone),
                  ProfileBodyItem(text: email, icons: Icons.email),
                  Spacer(flex: 2),
                  GestureDetector(
                    onTap: () async {
                      final result = await PrimaryBottomSheet.show(
                        context,
                        title: 'Edit',
                        name: name,
                        age: age,
                        phone: phone,
                        email: email,
                      );

                      print(result);
                    },
                    child: EditProfileInfoButton(),
                  ),
                  Spacer(),
                ],
              ),
              Positioned(
                top: 140.h,
                child: CircleAvatar(
                  backgroundColor: AppColors.profileColor,
                  radius: 70,
                  child: Icon(
                    Icons.person,
                    size: 80,
                    color: AppColors.float,
                  ),
                ),
              ),
              Positioned(
                top: 60.h,
                left: 12.w,
                child: GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Icon(
                    Icons.arrow_back,
                    color: AppColors.profileColor,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
