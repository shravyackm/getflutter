import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:getwidget/getwidget.dart';

void main() {
  const activetext = 'On';
  const passivetext = 'Off';
  const activetumbColor = GFColors.INFO;
  const passivetumbColor = GFColors.SECONDARY;
  const duration = Duration(milliseconds: 1000);
  const activetrackColor = GFColors.SECONDARY;
  const passivetrackColor = GFColors.INFO;

  const bool value = true;

  testWidgets('GFToggle can toggle on tap ', (WidgetTester tester) async {
    final Key switchKey = UniqueKey();
    bool value = false;

    await tester.pumpWidget(
      Directionality(
          textDirection: TextDirection.ltr,
          child: StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) => Material(
                    child: Center(
                      child: GFToggle(
                        key: switchKey,
                        value: value,
                        onChanged: (bool newValue) {
                          setState(() {
                            value = newValue;
                          });
                        },
                      ),
                    ),
                  ))),
    );

    expect(value, isFalse);
    await tester.tap(find.byKey(switchKey));
    expect(value, isTrue);
  });

  testWidgets('GFToggle can be created with default android toggle',
      (WidgetTester tester) async {
    final GFToggle toggle = GFToggle(
      enabledText: activetext,
      disabledText: passivetext,
      enabledThumbColor: activetumbColor,
      disabledThumbColor: passivetumbColor,
      duration: duration,
      enabledTrackColor: activetrackColor,
      disabledTrackColor: passivetrackColor,
      onChanged: (val) {},
      value: value,
    );

    final TestApp app = TestApp(toggle);

    await tester.pumpWidget(app);

    expect(app.toggle.enabledText, activetext);
    expect(app.toggle.disabledText, passivetext);
    expect(app.toggle.enabledThumbColor, activetumbColor);
    expect(app.toggle.disabledThumbColor, passivetumbColor);
    expect(app.toggle.duration, duration);
    expect(app.toggle.enabledTrackColor, activetrackColor);
    expect(app.toggle.disabledTrackColor, passivetrackColor);
    expect(app.toggle.value, value);
  });

  testWidgets('GFToggle with ios type', (WidgetTester tester) async {
    const type = GFToggleType.ios;
    final GFToggle toggle = GFToggle(
      type: type,
      onChanged: (val) {},
      value: value,
    );

    final TestApp app = TestApp(toggle);

    await tester.pumpWidget(app);

    expect(app.toggle.value, value);
    expect(app.toggle.type, type);
  });

  testWidgets('GFToggle with sqaure type', (WidgetTester tester) async {
    const type = GFToggleType.square;
    final GFToggle toggle = GFToggle(
      type: type,
      onChanged: (val) {},
      value: value,
    );

    final TestApp app = TestApp(toggle);

    await tester.pumpWidget(app);

    expect(app.toggle.value, value);
    expect(app.toggle.type, type);
  });

  testWidgets(
      'GFToggle with custom type which has text like ON , OFF and shape ',
      (WidgetTester tester) async {
    const type = GFToggleType.custom;
    const shape = BoxShape.rectangle;

    final GFToggle toggle = GFToggle(
      type: type,
      onChanged: (val) {},
      value: value,
      enabledText: activetext,
      disabledText: passivetext,
      boxShape: shape,
    );

    final TestApp app = TestApp(toggle);

    expect(app.toggle.value, value);
    expect(app.toggle.type, type);
    expect(app.toggle.enabledText, activetext);
    expect(app.toggle.disabledText, passivetext);
    expect(app.toggle.boxShape, shape);
  });
}

class TestApp extends StatefulWidget {
  const TestApp(this.toggle);

  final GFToggle toggle;
  @override
  _TestAppState createState() => _TestAppState();
}

class _TestAppState extends State<TestApp> {
  @override
  Widget build(BuildContext context) => MaterialApp(
        home: Scaffold(
          body: Column(
            children: [
              Expanded(
                child: widget.toggle,
              )
            ],
          ),
        ),
      );
}
