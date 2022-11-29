import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:kripton/constants.dart';
import 'package:kripton/ui/login/login_page.dart';

import '../../test_app.dart';

Future<void> main() async {
  testWidgets('LoginPage password visibility', (WidgetTester tester) async {
    await tester.pumpWidget(const TestApp(home: LoginPage()));
    var finder = find.byKey(const Key(WidgetKeys.passwordTextField));
    final passwordFieldBefore = tester.firstWidget<InputField>(finder);
    expect(passwordFieldBefore.obscureText, true);
    expect(find.widgetWithIcon(IconButton, CupertinoIcons.eye_fill), findsOneWidget);
    await tester.tap(find.byIcon(CupertinoIcons.eye_fill));
    await tester.pump();
    final passwordFieldAfter = tester.firstWidget<InputField>(finder);
    expect(passwordFieldAfter.obscureText, false);
    expect(find.widgetWithIcon(IconButton, CupertinoIcons.eye_slash_fill), findsOneWidget);
  });
}
