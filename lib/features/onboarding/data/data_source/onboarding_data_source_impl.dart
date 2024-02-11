import 'package:trust_ride/features/onboarding/data/data_source/onboarding_data_source.dart';
import 'package:trust_ride/features/onboarding/data/model/onboarding_models.dart';

class OnBoardingDataSourceIMPL extends OnBoardingDataSource {
  @override
  Future<List<OnboardingModels>> getOnboardingData() async {
    return [
      const OnboardingModels(
        image: "assets/png/onboard-1.png",
        title: "Easy to Use",
        subTitle: "Use carbo anytime anywhere",
      ),
      const OnboardingModels(
        image: "assets/png/onboard-2.png",
        title: "Easy Hire",
        subTitle: "Make easy hire for your travels",
      ),
      const OnboardingModels(
        image: "assets/png/onboard-3.png",
        title: "Easy Navigator",
        subTitle: "Use Easy Navigatorto get to your destination faster",
      ),
      const OnboardingModels(
        image: "assets/png/onboard-4.png",
        title: "Easy Payment",
        subTitle: "Easy pay without any extra charges",
      ),
    ];
  }
}
