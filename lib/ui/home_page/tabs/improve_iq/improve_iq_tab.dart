import 'package:dr_iq/core/app_colors.dart';
import 'package:flutter/material.dart';

class ImproveIQTab extends StatelessWidget {
  const ImproveIQTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.float,
      appBar: AppBar(
        backgroundColor: AppColors.float,
        elevation: 0,
        leading: IconButton(
          color: AppColors.textMain,
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(),
      ],
    );
  }
}
