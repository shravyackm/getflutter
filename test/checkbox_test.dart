import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

void main() {
  testWidgets('Basic GFCheckbox can be created', (WidgetTester tester) async {
    const size = GFSize.SMALL;
    const Key switchKey = Key('checkbox');
    bool value = false;
    const activebgcolor = GFColors.INFO;

    await tester.pumpWidget(
      MaterialApp(
        home: Directionality(
            textDirection: TextDirection.ltr,
            child: StatefulBuilder(
                builder: (BuildContext context, StateSetter setState) =>
                    Material(
                        child: GFCheckbox(
                      activeBgColor: activebgcolor,
                      size: size,
                      key: switchKey,
                      value: value,
                      onChanged: (val) {
                        setState(() {
                          value = val;
                        });
                      },
                    )))),
      ),
    );
    expect(find.byKey(switchKey), findsOneWidget);
  });

  testWidgets('GFCheckbox of type Square', (WidgetTester tester) async {
    const size = GFSize.SMALL;
    const Key switchKey = Key('checkbox');
    bool value = false;
    const activebgcolor = GFColors.INFO;
    const GFCheckboxType checkboxType = GFCheckboxType.square;

    await tester.pumpWidget(
      MaterialApp(
        home: Directionality(
            textDirection: TextDirection.ltr,
            child: StatefulBuilder(
                builder: (BuildContext context, StateSetter setState) =>
                    Material(
                        child: GFCheckbox(
                      activeBgColor: activebgcolor,
                      size: size,
                      key: switchKey,
                      type: checkboxType,
                      value: value,
                      onChanged: (val) {
                        setState(() {
                          value = val;
                        });
                      },
                    )))),
      ),
    );
    expect(find.byKey(switchKey), findsOneWidget);
    expect(find.byType(GFCheckbox), findsWidgets);
  });

  testWidgets('GFCheckbox of type circle', (WidgetTester tester) async {
    const size = GFSize.SMALL;
    const Key switchKey = Key('checkbox');
    bool value = false;
    const activebgcolor = GFColors.INFO;
    const GFCheckboxType checkboxType = GFCheckboxType.circle;

    await tester.pumpWidget(
      MaterialApp(
        home: Directionality(
            textDirection: TextDirection.ltr,
            child: StatefulBuilder(
                builder: (BuildContext context, StateSetter setState) =>
                    Material(
                        child: GFCheckbox(
                      activeBgColor: activebgcolor,
                      size: size,
                      key: switchKey,
                      type: checkboxType,
                      value: value,
                      onChanged: (val) {
                        setState(() {
                          value = val;
                        });
                      },
                    )))),
      ),
    );
    expect(find.byKey(switchKey), findsOneWidget);
    expect(find.byType(GFCheckbox), findsWidgets);
  });

  testWidgets(
      'GFCheckbox of type custom where in icons can be used for check and uncheck',
      (WidgetTester tester) async {
    const size = GFSize.SMALL;
    const Key switchKey = Key('checkbox');
    bool value = false;
    const activebgcolor = GFColors.INFO;
    const GFCheckboxType checkboxType = GFCheckboxType.custom;
    const activeicon = Icon(Icons.sentiment_satisfied);
    const passiveicon = Icon(Icons.sentiment_dissatisfied);

    await tester.pumpWidget(
      MaterialApp(
        home: Directionality(
            textDirection: TextDirection.ltr,
            child: StatefulBuilder(
                builder: (BuildContext context, StateSetter setState) =>
                    Material(
                        child: GFCheckbox(
                      activeIcon: activeicon,
                      inactiveIcon: passiveicon,
                      activeBgColor: activebgcolor,
                      size: size,
                      key: switchKey,
                      type: checkboxType,
                      value: value,
                      onChanged: (val) {
                        setState(() {
                          value = val;
                        });
                      },
                    )))),
      ),
    );
    expect(find.byKey(switchKey), findsOneWidget);
    expect(find.byType(GFCheckbox), findsWidgets);
  });
}
