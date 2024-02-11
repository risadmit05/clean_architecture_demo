import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:trust_ride/app/core/storage/app_local_storage.dart';
import 'package:trust_ride/features/onboarding/data/data_source/onboarding_data_source.dart';
import 'package:trust_ride/features/onboarding/data/data_source/onboarding_data_source_impl.dart';

import 'package:trust_ride/features/onboarding/data/repositories/onboarding_repositories_impl.dart';
import 'package:trust_ride/features/onboarding/domain/repositories/onboarding_repository.dart';
import 'package:trust_ride/features/onboarding/domain/use_cases/onboarding_usecase.dart';
import 'package:trust_ride/features/onboarding/presentation/controller/onboarding_controller.dart';

final sl = GetIt.instance;

Future<void> inject() async {
  final pref = await SharedPreferences.getInstance();
  AppLocalStorage.init(pref);
  sl.registerLazySingleton<SharedPreferences>(() => pref);

// ++++++++++++++++++++++++++++ START ONBOARD REGISTER ++++++++++++++++++++++++++++
//Repo
  sl.registerLazySingleton<OnboardingRepository>(
      () => OnboardingRepositoryImpl(onBoardingDataSource: sl.call()));
  //UseCase
  sl.registerLazySingleton<OnboardingUsecase>(
      () => OnboardingUsecase(onboardingRepository: sl.call()));

  // current location repository

  sl.registerFactory<OnboardController>(
      () => OnboardController(onboardingUsecase: sl.call()));
  //
  sl.registerLazySingleton<OnBoardingDataSource>(
      () => OnBoardingDataSourceIMPL());
  // ++++++++++++++++++++++++++++ END ONBOARD REGISTER ++++++++++++++++++++++++++++
}
