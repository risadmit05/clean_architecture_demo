import 'package:flutter/material.dart';

import 'package:trust_ride/app/config/styles/app_color.dart';
import 'package:trust_ride/app/config/styles/app_style.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({Key? key, required this.title, required this.onPresssed})
      : super(key: key);
  final String title;
  final VoidCallback onPresssed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPresssed,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
      ),
      child: Text(
        title,
        style: getMediumStyle(color: AppColors.white),
      ),
    );
  }
}
