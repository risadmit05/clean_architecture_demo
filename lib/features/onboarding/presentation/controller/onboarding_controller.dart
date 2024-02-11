import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trust_ride/app/config/routes/routes.dart';
import 'package:trust_ride/app/config/styles/app_color.dart';
import 'package:trust_ride/app/config/values/app_string.dart';
import 'package:trust_ride/app/widgets/default_button.dart';
import 'package:trust_ride/features/onboarding/data/model/onboarding_models.dart';
import 'package:trust_ride/features/onboarding/domain/use_cases/onboarding_usecase.dart';

class OnboardController extends GetxController {
  final OnboardingUsecase onboardingUsecase;
  OnboardController({required this.onboardingUsecase});

  var selectedIndex = 0.obs;
  var pageController = PageController();
  var onboardingList = <OnboardingModels>[].obs;
  bool isLastPage = false;
  bool get isFirstPage => selectedIndex.value == 0;
  bool get isSecondPage => selectedIndex.value == 1;
  bool get isThirdPage => selectedIndex.value == 2;

  @override
  void onInit() {
    getInit();
    super.onInit();
  }

  getInit() async {
    onboardingList.value = await onboardingUsecase.call();
    isLastPage = selectedIndex.value == onboardingList.length;
  }

  void nextPage() {
    if (isLastPage) {
    } else {
      pageController.nextPage(
        duration: 300.milliseconds,
        curve: Curves.ease,
      );
    }
  }

  void backPage() {
    pageController.previousPage(
      duration: 300.milliseconds,
      curve: Curves.ease,
    );
  }

  pageNavigate() {
    // Get.toNamed(Routes.signInScreen);
  }

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      margin: const EdgeInsets.only(right: 5),
      height: 19,
      width: 19,
      decoration: BoxDecoration(
        color: index! <= selectedIndex.value ? AppColors.primary : Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: index <= selectedIndex.value
              ? AppColors.primary
              : AppColors.primaryDark,
          width: 1,
        ),
      ),
    );
  }

  dotWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        onboardingList.length,
        (index) => buildDot(index: index),
      ),
    );
  }

  buttonWidget() {
    var next;
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 36,
      ),
      child: SizedBox(
        width: 342.76,
        height: 55,
        child: DefaultButton(
          title: isFirstPage || isSecondPage || isThirdPage
              ? AppStrings.next
              : AppStrings.getStarted,
          onPresssed: () {
            isFirstPage || isSecondPage || isThirdPage
                ? nextPage()
                : pageNavigate();
          },
        ),
      ),
    );
  }
}
