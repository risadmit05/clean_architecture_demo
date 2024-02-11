import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trust_ride/app/config/styles/app_style.dart';
import 'package:trust_ride/app/config/values/app_string.dart';
import 'package:trust_ride/features/onboarding/presentation/controller/onboarding_controller.dart';
import 'package:trust_ride/app/widgets/size_box.dart';
import 'package:trust_ride/features/onboarding/presentation/view/widgets/onboard_content.dart';

class OnboardPage extends GetView<OnboardController> {
  const OnboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Column(children: [
        addVerticalSpace(65),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.7,
          child: Obx(() => PageView.builder(
                controller: controller.pageController,
                onPageChanged: controller.selectedIndex,
                itemCount: controller.onboardingList.length,
                itemBuilder: (context, index) {
                  return OnboardContent(
                    image: controller.onboardingList[index].image,
                    title: controller.onboardingList[index].title,
                    description: controller.onboardingList[index].subTitle,
                    controller: controller,
                  );
                },
              )),
        ),
        Obx(() => controller.dotWidget()),
        addVerticalSpace(20),
        Obx(() => controller.buttonWidget()),
        addVerticalSpace(14),
        Obx(
          () => controller.isFirstPage ||
                  controller.isSecondPage ||
                  controller.isThirdPage
              ? GestureDetector(
                  onTap: controller.pageNavigate,
                  child: Text(
                    AppStrings.skip,
                    style: getMediumStyle(),
                  ),
                )
              : Container(),
        ),
      ]),
    );
  }
}
