import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:getwidget/getwidget.dart';

void main() {
  testWidgets('GFFloating Widget  can be created', (WidgetTester tester) async {
    const Widget child = Text('This is a floating text');

    final Widget body = GFToast(
      text: 'This item already has the label “travel”',
      button: GFButton(
        onPressed: () {},
        text: 'Close',
        type: GFButtonType.transparent,
        color: Colors.red,
      ),
      autoDismiss: false,
    );
    await tester.pumpWidget(
      MaterialApp(
        home: Directionality(
            textDirection: TextDirection.ltr,
            child: StatefulBuilder(
                builder: (BuildContext context, StateSetter setState) =>
                    Material(
                        child: GFFloatingWidget(
                      child: child,
                      body: body,

                      // autoDismiss: dismisToast,
                    )))),
      ),
    );

    await tester.pumpAndSettle();

    await tester.tap(find.byWidget(child));
    await tester.tap(find.byWidget(body));
  });

  testWidgets('GFFloating Widget  with positions parameter',
      (WidgetTester tester) async {
    const Widget child = Text('This is a floating text');

    final Widget body = GFToast(
      text: 'This item already has the label “travel”',
      button: GFButton(
        onPressed: () {},
        text: 'Close',
        type: GFButtonType.transparent,
        color: Colors.red,
      ),
      autoDismiss: false,
    );

    const verticalposition = 20.0;
    const horizontalposition = 40.0;

    await tester.pumpWidget(
      MaterialApp(
        home: Directionality(
            textDirection: TextDirection.ltr,
            child: StatefulBuilder(
                builder: (BuildContext context, StateSetter setState) =>
                    Material(
                        child: GFFloatingWidget(
                      child: child,
                      body: body,
                      verticalPosition: verticalposition,
                      horizontalPosition: horizontalposition,

                      // autoDismiss: dismisToast,
                    )))),
      ),
    );

    await tester.pumpAndSettle();

    await tester.tap(find.byWidget(child));
    await tester.tap(find.byWidget(body));
  });

  testWidgets(
      'GFFloating Widget  with blurness of the body when showing alert or error messages',
      (WidgetTester tester) async {
    const Widget child = Text('This is a floating text');
    const bool blur = true;

    const blurcolor = Colors.black12;

    final Widget body = GFToast(
      text: 'This item already has the label “travel”',
      button: GFButton(
        onPressed: () {},
        text: 'Close',
        type: GFButtonType.transparent,
        color: Colors.red,
      ),
      autoDismiss: false,
    );

    const verticalposition = 20.0;
    const horizontalposition = 40.0;

    await tester.pumpWidget(
      MaterialApp(
        home: Directionality(
            textDirection: TextDirection.ltr,
            child: StatefulBuilder(
                builder: (BuildContext context, StateSetter setState) =>
                    Material(
                        child: GFFloatingWidget(
                      child: child,
                      body: body,
                      verticalPosition: verticalposition,
                      horizontalPosition: horizontalposition,
                      showBlurness: blur,
                      blurnessColor: blurcolor,

                      // autoDismiss: dismisToast,
                    )))),
      ),
    );

    await tester.pumpAndSettle();

    await tester.tap(find.byWidget(child));
    await tester.tap(find.byWidget(body));
  });
}
