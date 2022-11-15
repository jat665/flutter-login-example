import 'package:flutter/material.dart';
import 'package:kripton/ui/login/login_page.dart';
import 'package:kripton/ui/welcome/welcome_page.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      routes: {
        WelcomePage.route: (context) => const WelcomePage(),
        LoginPage.route: (context) => const LoginPage(),
      },
      initialRoute: WelcomePage.route,

      home: const LoginPage(),
    );
  }
}
