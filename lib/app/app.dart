import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trust_ride/config/observer/app_navigation_observer.dart';
import 'package:trust_ride/config/routes/app_pages.dart';
import 'package:trust_ride/config/routes/routes.dart';
import 'package:trust_ride/config/theme/application_theme.dart';
import 'package:trust_ride/core/storage/app_local_storage.dart';
import 'package:trust_ride/translation/app_translation.dart';
import 'package:trust_ride/utils/key.string/app_storage_key_strings.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: Routes.initialRoute,
      getPages: AppPages.routes,
      translationsKeys: AppTranslation.translationsKeys,
      debugShowCheckedModeBanner: false,
      theme: getApplicationTheme(),
      navigatorObservers: [AppNavigatorObserver()],
      themeMode: ThemeMode.dark,
      defaultTransition: Transition.fade,
      locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('en', 'US'),
    );
  }
}
