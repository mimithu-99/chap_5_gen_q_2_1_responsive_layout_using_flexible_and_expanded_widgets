// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:chap_5_gen_q_2_1_responsive_layout_using_flexible_and_expanded_widgets/main.dart';
void main() {
  testWidgets('Responsive Layout Test', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp()); // Replace MyApp with your main app widget name
 
    // Verify the Row widget is used
    expect(find.byType(Row), findsOneWidget);
 
    // Finding containers by color and verifying their presence
    expect(find.byWidgetPredicate((widget) => widget is Container && widget.color == Colors.red), findsOneWidget);
    expect(find.byWidgetPredicate((widget) => widget is Container && widget.color == Colors.green), findsOneWidget);
    expect(find.byWidgetPredicate((widget) => widget is Container && widget.color == Colors.blue), findsOneWidget);
 
    // Verifying the flex factors for Flexible widgets
    final flexibleWidgets = tester.widgetList<Flexible>(find.byType(Flexible));
    expect(flexibleWidgets.length, 2);
    expect(flexibleWidgets.first.flex, 1);
    expect(flexibleWidgets.last.flex, 2);
  });
}