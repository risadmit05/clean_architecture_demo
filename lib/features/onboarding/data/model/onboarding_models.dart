import 'package:trust_ride/features/onboarding/domain/onboarding_entity.dart';

class OnboardingModels extends OnboardingEntity {
  const OnboardingModels(
      {required String image, required String title, required String subTitle})
      : super(image: image, title: title, subTitle: subTitle);

  Map<String, dynamic> toJson() {
    return {"image": image, "title": title, "subTitle": subTitle};
  }

  factory OnboardingModels.fromJson({required Map<String, dynamic> data}) {
    return OnboardingModels(
        image: data['image'], title: data['title'], subTitle: data['subTitle']);
  }
}
