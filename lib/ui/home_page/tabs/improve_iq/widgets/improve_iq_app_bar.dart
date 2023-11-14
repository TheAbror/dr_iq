import 'package:dr_iq/core/app_colors.dart';
import 'package:flutter/material.dart';

class ImproveIQAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ImproveIQAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
        'Improve your IQ',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: AppColors.textMain,
        ),
      ),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
