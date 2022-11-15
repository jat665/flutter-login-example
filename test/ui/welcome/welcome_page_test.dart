import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kripton/ui/welcome/welcome_page.dart';

import '../../test_app.dart';

Future<void> main() async {
  testWidgets('WelcomePage content test', (WidgetTester tester) async {
    await tester.pumpWidget(const TestApp(home: WelcomePage()));
    expect(find.image(const AssetImage('assets/images/logo_white.png')), findsOneWidget);
    expect(find.text('Comenzar ahora mismo'), findsOneWidget);
    expect(find.text('Te damos la bienvenida a ser parte de Urbano, empresa líder en distribución logistica de última milla, con Kriptón HD podrás gestionar tus pedidos.'), findsOneWidget);
    expect(find.text('SIGUIENTE'), findsOneWidget);
  });
}