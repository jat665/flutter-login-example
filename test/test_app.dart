import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:kripton/app_config.dart';

class TestApp extends StatelessWidget {
  final Widget? home;

  const TestApp({Key? key, this.home}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppConfig(
      environment: Environment.dev,
      appName: 'kripton test',
      baseUrl: '',
      child: MaterialApp(
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: home,
      ),
    );
  }
}
