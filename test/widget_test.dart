import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mi_primera_app/main.dart';

void main() {
  testWidgets('Muestra el titulo y texto inicial', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Hola Flutter'), findsOneWidget);
    expect(find.text('Mi primera app en Flutter'), findsOneWidget);
    expect(find.byIcon(Icons.flutter_dash), findsOneWidget);
  });
}
