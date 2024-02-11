import 'package:get/get.dart';
import 'package:trust_ride/app/core/network/network_checker_controller.dart';
import 'package:trust_ride/features/onboarding/data/repositories/onboarding_repositories_impl.dart';
import 'package:trust_ride/features/onboarding/domain/repositories/onboarding_repository.dart';
import 'package:trust_ride/features/onboarding/domain/use_cases/onboarding_usecase.dart';
import 'package:trust_ride/features/onboarding/presentation/controller/onboarding_controller.dart';
import 'package:trust_ride/injection_container.dart' as di;

class AppBinding extends Bindings {
  @override
  void dependencies() {
    injectStorageProvider();
    injectNetworkProvider();
    // injectService();
    // injectRepository();
    // injectUseCase();
  }

  void injectStorageProvider() {
    Get.put(AppNetWorkStatusChecker(), permanent: true);
    // Get.put(UserStorage());
  }

  void injectNetworkProvider() {
    Get.put(di.sl<OnboardController>());
    //   Get.lazyPut(
    //     () => DioBuilder(
    //       ignoredToken: false,
    //       options: BaseOptions(baseUrl: AppConfig.baseUrl),
    //       dioRefresh: Get.find<DioBuilder>(tag: DioBulderType.refresh.name),
    //     ),
    //     tag: DioBulderType.withToken.name,
    //     fenix: true,
    //   );
    //   Get.lazyPut(
    //     () => DioBuilder(
    //       ignoredToken: true,
    //       options: BaseOptions(baseUrl: AppConfig.baseUrl),
    //     ),
    //     tag: DioBulderType.ignoredToken.name,
    //     fenix: true,
    //   );
    //   Get.lazyPut(
    //     () => RefreshTokenAPI(
    //         Get.find<DioBuilder>(tag: DioBulderType.refresh.name)),
    //     fenix: true,
    //   );
    //   Get.lazyPut(
    //     () => AuthAPI(Get.find<DioBuilder>(tag: DioBulderType.ignoredToken.name)),
    //     fenix: true,
    //   );
    //   Get.lazyPut(
    //     () => UserAPI(Get.find<DioBuilder>(tag: DioBulderType.withToken.name)),
    //     fenix: true,
    //   );
  }

  // void injectService() {
  //   Get.put(LogServiceImpl());
  //   Get.put<ConnectivityService>(ConnectivityServiceImpl());
  //   Get.put<PermissionService>(PermissionServiceImpl());
  //   Get.put<AuthService>(AuthServiceImpl());
  //   // Get.put(PushNotificationService());
  // }

  // void injectRepository() {
  //   Get.put<AuthRepo>(AuthRepoImpl());
  //   Get.put<UserRepo>(UserRepoImpl());
  // }

  // void injectUseCase() {
  //   Get.put(UserUseCase());
  // }
}
