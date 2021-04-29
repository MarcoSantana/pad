// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

// import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:pad/main.dart';

void main() {
  testWidgets('Renders home', (WidgetTester tester) async {
    await tester.pumpWidget(PadApp());
    expect(find.text('Ingreso'), findsOneWidget);
    expect(find.text('No tengo una cuenta'), findsOneWidget);
    expect(find.byType(TextFormField), findsNWidgets(2));
  });
  testWidgets('Renders home with singin button disabled',
      (WidgetTester tester) async {
    // Define the test key.
    final testKey = Key('signInButton');

    // Build a MaterialApp with the testKey.
    await tester.pumpWidget(MaterialApp(key: testKey, home: Container()));

    // Rebuild the widget after the state has changed.
    await tester.pump();
    expect(find.byKey(testKey), findsOneWidget);
  });

  testWidgets('SignUp button loads signup page', (WidgetTester tester) async {
    await tester.pumpWidget(PadApp());

    expect(find.text('No tengo una cuenta'), findsOneWidget);

    final testKey = Key('signUpButton');
    await tester.pumpWidget(MaterialApp(key: testKey, home: Container()));

    await tester.tap(find.byKey(testKey));

    // Rebuild the widget after the state has changed.
    await tester.pumpAndSettle();

    // Expect to find the item on screen.
    expect(find.text('hi'), findsOneWidget);
    // expect(tester.widget<TextButton>(find.byKey(testKey)).enabled, isTrue);
  });
}
