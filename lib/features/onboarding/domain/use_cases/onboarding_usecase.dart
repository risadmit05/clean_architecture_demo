import 'package:trust_ride/features/onboarding/data/model/onboarding_models.dart';
import 'package:trust_ride/features/onboarding/domain/repositories/onboarding_repository.dart';

class OnboardingUsecase {
  final OnboardingRepository onboardingRepository;

  OnboardingUsecase({required this.onboardingRepository});

  Future<List<OnboardingModels>> call() async {
    return await onboardingRepository.getOnboardingData();
  }
}
