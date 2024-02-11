import 'package:trust_ride/features/onboarding/data/model/onboarding_models.dart';

abstract class OnboardingRepository {
  Future<List<OnboardingModels>> getOnboardingData();
}
