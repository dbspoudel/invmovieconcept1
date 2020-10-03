import 'package:flutter/material.dart';
import 'package:invmovieconcept1/AppLocalizations.dart';

import 'AppDimensions.dart';
import 'AppTheme.dart';
import 'TextStyles.dart';

class App {
  static BuildContext ctx;
  static bool isLtr;
  static bool showAds = false;

  static init(BuildContext context) {
    AppDimensions.init(context);
    TextStyles.init();
    AppTheme.init(context);
    App.ctx = context;

    isLtr = Directionality.of(context) == TextDirection.ltr;
  }

  static translate(String key, [BuildContext ctx]) {
    final base = AppLocalizations.of(ctx ?? App.ctx);
    if (base == null) {
      return key;
    }
    return base.translate(key) ?? key;
  }

  static bool isDark() => Theme.of(App.ctx).brightness == Brightness.dark;
}
