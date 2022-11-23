import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:kripton/ui/login/login_page.dart';
import 'package:kripton/ui/welcome/welcome_page.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app_config.dart';
import 'constants.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<bool>(
      future: _wasWelcomeShowed(),
      builder: (context, AsyncSnapshot<bool> snapshot) {
        return MaterialApp(
          title: AppConfig.of(context).baseUrl,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          theme: ThemeData(
            primarySwatch: Colors.red,
          ),
          routes: {
            WelcomePage.route: (context) => const WelcomePage(),
            LoginPage.route: (context) => const LoginPage(),
          },
          initialRoute: snapshot.data ?? false ? LoginPage.route : WelcomePage.route,
          home: const LoginPage(),
        );
      },
    );
  }

  Future<bool> _wasWelcomeShowed() async {
    final preferences = await SharedPreferences.getInstance();
    return preferences.getBool(PreferencesKeys.wasWelcomeShowed) ?? false;
  }
}
