import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:getwidget/getwidget.dart';

void main() {
  testWidgets('GFToast can be created', (WidgetTester tester) async {
    const bgColor = Color(0xFF00000);
    const text = 'Paired Susscesfully';
    const toastWidth = 20.0;

    const GFToast toast = GFToast(
      backgroundColor: bgColor,
      text: text,
      width: toastWidth,
    );

    const TestApp app = TestApp(toast);

    await tester.pumpWidget(app);
    await tester.pumpAndSettle();

    expect(app.toast.backgroundColor, bgColor);
    expect(app.toast.text, text);
    expect(app.toast.width, toastWidth);
  });

  testWidgets(
      ' GFToast inside GFFloadting widget with auto dismiss property, by default autodismiss is set to true',
      (WidgetTester tester) async {
    bool showFloatingToast = false;
    const bgColor = Color(0xFF00000);
    const text = 'Paired Susscesfully';
    const buttontext = 'ok';

    const dismisduration = Duration(milliseconds: 1000);
//button of type widget which on tap closes the toast
    final Widget button = Directionality(
        textDirection: TextDirection.ltr,
        child: StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) => GFButton(
                  onPressed: () {
                    setState(() {
                      showFloatingToast = !showFloatingToast;
                    });
                  },
                  text: buttontext,
                  type: GFButtonType.transparent,
                  color: GFColors.SUCCESS,
                )));

    await tester.pumpWidget(
      MaterialApp(
        home: Directionality(
            textDirection: TextDirection.ltr,
            child: StatefulBuilder(
                builder: (BuildContext context, StateSetter setState) =>
                    Material(
                        child: GFFloatingWidget(
                            child: GFToast(
                      backgroundColor: bgColor,
                      text: text,
                      textStyle: const TextStyle(color: Colors.black87),
                      button: button,
                      autoDismiss: false,
                      autoDismissDuration: dismisduration,

                      // autoDismiss: dismisToast,
                    ))))),
      ),
    );

    await tester.pumpAndSettle();
    await tester.pump(dismisduration);

    await tester.tap(find.byWidget(button));
  });

  testWidgets(
      ' GFToast inside GFFloadting widget with positioning of the toast on the body',
      (WidgetTester tester) async {
    bool showFloatingToast = false;
    const bgColor = Color(0xFF00000);
    const text = 'Paired Susscesfully';
    const buttontext = 'ok';
    const dismisduration = Duration(milliseconds: 1000);

    const verticalposition = 20.0;
    const horizontalposition = 40.0;

//button of type widget which on tap closes the toast
    final Widget button = Directionality(
        textDirection: TextDirection.ltr,
        child: StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) => GFButton(
                  onPressed: () {
                    setState(() {
                      showFloatingToast = !showFloatingToast;
                    });
                  },
                  text: buttontext,
                  type: GFButtonType.transparent,
                  color: GFColors.SUCCESS,
                )));

    await tester.pumpWidget(
      MaterialApp(
        home: Directionality(
            textDirection: TextDirection.ltr,
            child: StatefulBuilder(
                builder: (BuildContext context, StateSetter setState) =>
                    Material(
                        child: GFFloatingWidget(
                            verticalPosition: verticalposition,
                            horizontalPosition: horizontalposition,
                            child: GFToast(
                              backgroundColor: bgColor,
                              text: text,
                              textStyle: const TextStyle(color: Colors.black87),
                              button: button,
                              autoDismiss: false,
                              autoDismissDuration: dismisduration,

                              // autoDismiss: dismisToast,
                            ))))),
      ),
    );

    await tester.pumpAndSettle();
    await tester.pump(dismisduration);

    await tester.tap(find.byWidget(button));
  });

  testWidgets(' GFToast with different types and the default is a basic type',
      (WidgetTester tester) async {
    bool showFloatingToast = false;
    const bgColor = Color(0xFF00000);
    const text = 'Paired Susscesfully';
    const buttontext = 'ok';
    const dismisduration = Duration(milliseconds: 1000);

    const type = GFToastType.rounded;

//button of type widget which on tap closes the toast
    final Widget button = Directionality(
        textDirection: TextDirection.ltr,
        child: StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) => GFButton(
                  onPressed: () {
                    setState(() {
                      showFloatingToast = !showFloatingToast;
                    });
                  },
                  text: buttontext,
                  type: GFButtonType.transparent,
                  color: GFColors.SUCCESS,
                )));

    await tester.pumpWidget(
      MaterialApp(
        home: Directionality(
            textDirection: TextDirection.ltr,
            child: StatefulBuilder(
                builder: (BuildContext context, StateSetter setState) =>
                    Material(
                        child: GFFloatingWidget(
                            child: GFToast(
                      backgroundColor: bgColor,
                      type: type,
                      text: text,
                      textStyle: const TextStyle(color: Colors.black87),
                      button: button,
                      autoDismiss: false,
                      animationDuration: dismisduration,

                      // autoDismiss: dismisToast,
                    ))))),
      ),
    );

    await tester.pumpAndSettle();
    await tester.pump(dismisduration);

    await tester.tap(find.byWidget(button));
  });

  testWidgets(' GFToast with fullwidth', (WidgetTester tester) async {
    bool showFloatingToast = false;
    const bgColor = Color(0xFF00000);
    const text = 'Paired Susscesfully';
    const buttontext = 'ok';
    const dismisduration = Duration(milliseconds: 1000);

    const type = GFToastType.fullWidth;

//button of type widget which on tap closes the toast
    final Widget button = Directionality(
        textDirection: TextDirection.ltr,
        child: StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) => GFButton(
                  onPressed: () {
                    setState(() {
                      showFloatingToast = !showFloatingToast;
                    });
                  },
                  text: buttontext,
                  type: GFButtonType.transparent,
                  color: GFColors.SUCCESS,
                )));

    await tester.pumpWidget(
      MaterialApp(
        home: Directionality(
            textDirection: TextDirection.ltr,
            child: StatefulBuilder(
                builder: (BuildContext context, StateSetter setState) =>
                    Material(
                        child: GFFloatingWidget(
                            child: GFToast(
                      backgroundColor: bgColor,
                      type: type,
                      text: text,
                      textStyle: const TextStyle(color: Colors.black87),
                      button: button,
                      autoDismiss: false,
                      animationDuration: dismisduration,

                      // autoDismiss: dismisToast,
                    ))))),
      ),
    );

    await tester.pumpAndSettle();
    await tester.pump(dismisduration);

    await tester.tap(find.byWidget(button));
  });
}

class TestApp extends StatefulWidget {
  const TestApp(this.toast);

  final GFToast toast;

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
                child: widget.toast,
              ),
            ],
          ),
        ),
      );
}
