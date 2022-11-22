import 'package:flutter/material.dart';

import 'app_config.dart';
import 'my_app.dart';

void main() {
  final configuredApp = AppConfig(
    environment: Environment.prod,
    appName: 'Kriptón',
    baseUrl: 'https://uhd.urbano.com.ec/api/iridio-hd/',
    child: MyApp(),
  );
  runApp(configuredApp);
}
