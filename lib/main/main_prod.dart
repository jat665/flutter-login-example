import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';

import 'package:kripton/app_config.dart';
import 'package:kripton/constants.dart';
import 'package:kripton/my_app.dart';
import 'package:kripton/ui/login/login_page.dart';
import 'package:kripton/ui/welcome/welcome_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final initialRoute = !await _wasWelcomeShowed() ? WelcomePage.route : LoginPage.route;

  final configuredApp = AppConfig(
    environment: Environment.prod,
    appName: 'Kriptón',
    baseUrl: 'https://uhd.urbano.com.ec/api/iridio-hd/',
    child: MyApp(initialRoute: initialRoute),
  );
  runApp(configuredApp);
}

Future<bool> _wasWelcomeShowed() async {
  final preferences = await SharedPreferences.getInstance();
  return preferences.getBool(PreferencesKeys.wasWelcomeShowed) ?? false;
}