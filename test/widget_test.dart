// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:firebase/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // // Build our app and trigger a frame.

    final email = find.byKey(ValueKey("Email"));
    final password = find.byKey(ValueKey("Password"));
    final button = find.byKey(ValueKey("Submit"));

    await tester.pumpWidget(MyApp());
    await tester.enterText(email, "admin@gmail.com");
    await tester.enterText(password, "123456789");
    await tester.tap(button);
    await tester.pump(Duration(seconds: 4));

    expect(find.text("admin@gmail.com"), findsOneWidget);
    expect(find.text("123456789"), findsOneWidget);



    //
    // // Verify that our counter starts at 0.
    // expect(find.text('0'), findsOneWidget);
    // expect(find.text('1'), findsNothing);
    //
    // // Tap the '+' icon and trigger a frame.
    // await tester.tap(find.byIcon(Icons.add));
    // await tester.pump();
    //
    // // Verify that our counter has incremented.
    // expect(find.text('0'), findsNothing);
    // expect(find.text('1'), findsOneWidget);
  });
}
