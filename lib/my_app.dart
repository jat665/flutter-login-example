import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kripton/api/impl/api_impl.dart';
import 'package:kripton/repository/impl/user_repository_impl.dart';
import 'package:kripton/repository/user_repository.dart';
import 'package:kripton/ui/home/home_page.dart';
import 'package:kripton/ui/login/login_page.dart';
import 'package:kripton/ui/welcome/welcome_page.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'app_config.dart';

class MyApp extends StatelessWidget {
  final String initialRoute;

  const MyApp({
    super.key,
    required this.initialRoute,
  });

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<UserRepository>(create: (context) => UserRepositoryImpl(api: ApiImpl())),
      ],
      child: MaterialApp(
        title: AppConfig.of(context).baseUrl,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        routes: {
          WelcomePage.route: (context) => const WelcomePage(),
          LoginPage.route: (context) => const LoginPage(),
          HomePage.route: (context) => const HomePage(),
        },
        initialRoute: initialRoute,
      ),
    );
  }
}
