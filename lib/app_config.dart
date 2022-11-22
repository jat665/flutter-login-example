import 'package:flutter/cupertino.dart';

enum Environment { dev, prod }

class AppConfig extends InheritedWidget {
  final Environment environment;
  final String appName;
  final String baseUrl;

  const AppConfig({
    Key? key,
    required Widget child,
    required this.environment,
    required this.appName,
    required this.baseUrl,
  }) : super(
          key: key,
          child: child,
        );

  static AppConfig of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<AppConfig>()!;
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    throw UnimplementedError();
  }
}
