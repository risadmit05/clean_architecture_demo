import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trust_ride/app/config/observer/app_navigation_observer.dart';
import 'package:trust_ride/app/config/routes/app_pages.dart';
import 'package:trust_ride/app/config/routes/routes.dart';
import 'package:trust_ride/app/config/theme/application_theme.dart';
import 'package:trust_ride/app/core/service/app_bindings.dart';
import 'package:trust_ride/app/translation/app_translation.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: Routes.initialRoute,
      getPages: AppPages.routes,
      translationsKeys: AppTranslation.translationsKeys,
      debugShowCheckedModeBanner: false,
      initialBinding: AppBinding(),
      theme: getApplicationTheme(),
      navigatorObservers: [AppNavigatorObserver()],
      themeMode: ThemeMode.dark,
      defaultTransition: Transition.fade,
      locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('en', 'US'),
    );
  }
}
