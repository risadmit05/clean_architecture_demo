import 'package:trust_ride/features/onboarding/data/data_source/onboarding_data_source.dart';
import 'package:trust_ride/features/onboarding/data/model/onboarding_models.dart';
import 'package:trust_ride/features/onboarding/domain/repositories/onboarding_repository.dart';

class OnboardingRepositoryImpl extends OnboardingRepository {
  final OnBoardingDataSource onBoardingDataSource;

  OnboardingRepositoryImpl({required this.onBoardingDataSource});

  @override
  Future<List<OnboardingModels>> getOnboardingData() async {
    return await onBoardingDataSource.getOnboardingData();
  }
}
