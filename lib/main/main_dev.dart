import 'package:flutter/material.dart';

import '../app_config.dart';
import '../my_app.dart';

void main() {
  const configuredApp = AppConfig(
    environment: Environment.dev,
    appName: 'Dev Kriptón',
    baseUrl: 'http://devuhd.urbano.com.ec/api/iridio-hd/',
    child: MyApp(),
  );
  runApp(configuredApp);
}
