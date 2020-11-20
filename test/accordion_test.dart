import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:getwidget/getwidget.dart';

void main() {
  testWidgets(
      'Basic GFAccordion can be created using string type for title and content',
      (WidgetTester tester) async {
    const text = 'GF Accordion';
    const context =
        'GetFlutter is an open source library that comes with pre-build 1000+ UI components.';

    const GFAccordion accordion = GFAccordion(
      title: text,
      content: context,
    );

    const TestApp app = TestApp(accordion);

    expect(app.accordion.title, text);
    expect(app.accordion.content, context);
  });

  testWidgets(
      ' Basic GFAccordion can be created using widget type for title and content using titlechild and contentchild parameter ',
      (WidgetTester tester) async {
    const title = Text('GF Accordion');
    const child = Text(
        'GetFlutter is an open source library that comes with pre-build 1000+ UI components.');

    const GFAccordion accordion = GFAccordion(
      titleChild: title,
      contentChild: child,
    );

    const TestApp app = TestApp(accordion);

    expect(app.accordion.titleChild, title);
    expect(app.accordion.contentChild, child);
  });

  testWidgets(' GFAccordion can be created using trailing icons ',
      (WidgetTester tester) async {
    const title = Text('GF Accordion');
    const child = Text(
        'GetFlutter is an open source library that comes with pre-build 1000+ UI components.');

    const activeicon = Icon(Icons.add);
    const passiveicon = Icon(Icons.minimize);

    const GFAccordion accordion = GFAccordion(
      titleChild: title,
      contentChild: child,
      expandedIcon: passiveicon,
      collapsedIcon: activeicon,
    );

    const TestApp app = TestApp(accordion);

    expect(app.accordion.titleChild, title);
    expect(app.accordion.contentChild, child);
    expect(app.accordion.collapsedIcon, activeicon);
    expect(app.accordion.expandedIcon, passiveicon);
  });

  testWidgets(' GFAccordion can be created using trailing text ',
      (WidgetTester tester) async {
    const title = Text('GF Accordion');
    const child = Text(
        'GetFlutter is an open source library that comes with pre-build 1000+ UI components.');

    const activetext = Text('Show');

    const passivetext = Text('Hide');
    const GFAccordion accordion = GFAccordion(
      titleChild: title,
      contentChild: child,
      expandedIcon: passivetext,
      collapsedIcon: activetext,
    );

    const TestApp app = TestApp(accordion);

    expect(app.accordion.titleChild, title);
    expect(app.accordion.contentChild, child);
    expect(app.accordion.collapsedIcon, activetext);
    expect(app.accordion.expandedIcon, passivetext);
  });

  testWidgets(
      ' GFAccordion can be customised by changing background color of title and its content',
      (WidgetTester tester) async {
    const title = Text('GF Accordion');
    const child = Text(
        'GetFlutter is an open source library that comes with pre-build 1000+ UI components.');

    const activetext = Text('Show');

    const passivetext = Text('Hide');
    const collapsedtitlebg = Colors.black12;
    const expandedtitlebg = Colors.black26;

    const GFAccordion accordion = GFAccordion(
      titleChild: title,
      contentChild: child,
      expandedIcon: passivetext,
      collapsedIcon: activetext,
      expandedTitleBackgroundColor: expandedtitlebg,
      collapsedTitleBackgroundColor: collapsedtitlebg,
    );

    const TestApp app = TestApp(accordion);

    expect(app.accordion.titleChild, title);
    expect(app.accordion.contentChild, child);
    expect(app.accordion.collapsedIcon, activetext);
    expect(app.accordion.expandedIcon, passivetext);
    expect(app.accordion.expandedTitleBackgroundColor, expandedtitlebg);
    expect(app.accordion.collapsedTitleBackgroundColor, collapsedtitlebg);
  });

  testWidgets(' GFAccordion can be customised by changing padding and margin',
      (WidgetTester tester) async {
    const title = Text('GF Accordion');
    const child = Text(
        'GetFlutter is an open source library that comes with pre-build 1000+ UI components.');

    const titlepadding = EdgeInsets.all(10);
    const contentpadding = EdgeInsets.all(12);
    const margin = EdgeInsets.all(2);
    const GFAccordion accordion = GFAccordion(
      titleChild: title,
      contentChild: child,
      contentPadding: contentpadding,
      titlePadding: titlepadding,
      margin: margin,
    );

    const TestApp app = TestApp(accordion);

    expect(app.accordion.titleChild, title);
    expect(app.accordion.contentChild, child);
    expect(app.accordion.titlePadding, titlepadding);
    expect(app.accordion.contentPadding, contentpadding);
    expect(app.accordion.margin, margin);
  });

  testWidgets(
      ' GFAccordion can be customised by changing bordercolor and radius of title and content',
      (WidgetTester tester) async {
    const title = Text('GF Accordion');
    const child = Text(
        'GetFlutter is an open source library that comes with pre-build 1000+ UI components.');

    const titleborder = Border();
    const contentborder = Border();
    const titleradius = BorderRadius.all(Radius.circular(10));
    const contentradius = BorderRadius.all(Radius.circular(12));

    const GFAccordion accordion = GFAccordion(
      titleChild: title,
      contentChild: child,
      titleBorder: titleborder,
      contentBorder: contentborder,
      titleBorderRadius: titleradius,
      contentBorderRadius: contentradius,
    );

    const TestApp app = TestApp(accordion);

    expect(app.accordion.titleChild, title);
    expect(app.accordion.contentChild, child);
    expect(app.accordion.titleBorder, titleborder);
    expect(app.accordion.contentBorder, contentborder);
    expect(app.accordion.titleBorderRadius, titleradius);
    expect(app.accordion.contentBorderRadius, contentradius);
  });

  // testWidgets(
  //     'GFAccordion can be customised by changing padding of title and the content',
  //     (WidgetTester tester) async {
  //   const Widget child = Text(
  //       'GetFlutter is an open source library that comes with pre-build 1000+ UI components.');

  //   const Widget title = Text('GF Accordion');

  //   await tester.pumpWidget(
  //     MaterialApp(
  //       home: Directionality(
  //           textDirection: TextDirection.ltr,
  //           child: StatefulBuilder(
  //               builder: (BuildContext context, StateSetter setState) =>
  //                   const GFAccordion(
  //                     titleChild: title,
  //                     contentChild: child,
  //                   ))),
  //     ),
  //   );

  //   // await tester.tap(find.byWidget(child));
  //   // await tester.tap(find.byWidget(title));

  //   expect(find.byWidget(child), findsOneWidget);
  //   expect(find.byWidget(title), findsOneWidget);
  // });
}

class TestApp extends StatefulWidget {
  const TestApp(this.accordion);

  final GFAccordion accordion;
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
                child: widget.accordion,
              )
            ],
          ),
        ),
      );
}
