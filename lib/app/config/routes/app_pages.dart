
import 'package:get/get.dart';
import 'package:trust_ride/app/config/routes/routes.dart';
import 'package:trust_ride/features/onboarding/presentation/view/onboard_page.dart';

class AppPages {
  AppPages._();
  static final routes = [
    GetPage(
      name: Routes.initialRoute,
      page: () => const OnboardPage(),
    ),
  ];
}
