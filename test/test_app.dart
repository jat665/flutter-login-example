import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:kripton/app_config.dart';
import 'package:kripton/repository/impl/user_repository_impl.dart';
import 'package:kripton/repository/user_repository.dart';

import 'api/api_mock.dart';

class TestApp extends StatelessWidget {
  final Widget? home;

  const TestApp({Key? key, this.home}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppConfig(
      environment: Environment.dev,
      appName: 'kripton test',
      baseUrl: '',
      child: MultiRepositoryProvider(
        providers: [
          RepositoryProvider<UserRepository>(create: (context) => UserRepositoryImpl(api: ApiMock())),
        ],
        child: MaterialApp(
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          home: home,
        ),
      ),
    );
  }
}
