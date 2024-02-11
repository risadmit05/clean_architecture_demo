//AppTranslation.dart

import 'package:trust_ride/app/translation/bn.dart';
import 'package:trust_ride/app/translation/en.dart';

abstract class AppTranslation {
  static Map<String, Map<String, String>> translationsKeys = {
    "en_US": enUS,
    "bn": bn
  };
}
