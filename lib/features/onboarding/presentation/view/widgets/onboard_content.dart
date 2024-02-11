import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trust_ride/app/config/styles/app_color.dart';
import 'package:trust_ride/app/config/styles/app_style.dart';
import 'package:trust_ride/app/widgets/size_box.dart';
import 'package:trust_ride/features/onboarding/presentation/controller/onboarding_controller.dart';

class OnboardContent extends StatelessWidget {
  const OnboardContent({
    Key? key,
    required this.image,
    required this.title,
    required this.description,
    required this.controller,
  }) : super(key: key);

  final String image, title, description;
  final OnboardController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          image,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.5,
          fit: BoxFit.fill,
        ),
        addVerticalSpace(10),
        Text(
          title,
          style: getTitle(color: AppColors.black),
        ),
        addVerticalSpace(8),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: Text(description,
              textAlign: TextAlign.center, style: getSubTitle()),
        ),
      ],
    );
  }
}
