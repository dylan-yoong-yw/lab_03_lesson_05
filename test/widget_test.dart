import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lab_03_lesson_05/main.dart';

void main() {
  testWidgets('Brew & Bean menu displays three coffee items', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const BrewAndBeanApp());

    expect(find.text('Brew & Bean'), findsOneWidget);
    expect(find.text('Our Coffee Menu'), findsOneWidget);

    expect(find.text('Caffè Latte'), findsOneWidget);
    expect(find.text('Cappuccino'), findsOneWidget);
    expect(find.text('Iced Mocha'), findsOneWidget);

    expect(find.byType(Card), findsNWidgets(3));
  });
}
