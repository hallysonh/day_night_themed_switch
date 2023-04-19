// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:day_night_themed_switch/day_night_themed_switch.dart';
import 'package:example/main.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Should find the DayNightSwitch in the main app',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    expect(find.byType(DayNightSwitch), findsOneWidget);
  });
}
