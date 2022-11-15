import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class TestApp extends MaterialApp {
  const TestApp({
    super.key,
    super.localizationsDelegates = AppLocalizations.localizationsDelegates,
    super.supportedLocales = AppLocalizations.supportedLocales,
    super.home,
  });
}
