import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

class MyTestWidget extends StatelessWidget {
  
  const MyTestWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Test Widget'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              final logger = Logger();
             logger.d('message');
            },
            child: const Text('Test Button'),
          ),
        ),
      ),
    );
  }
}

void main() {
  testWidgets('MyTestWidget test', (WidgetTester tester) async {
    // Build the widget
  //  await tester.pumpWidget(const MyTestWidget());

    // Find the test button
 //   final testButton = find.byType(ElevatedButton);

    // Tap the test button
 //   await tester.tap(testButton);
 //   await tester.pump();

    // Verify the button press
 //   expect(find.text('Button pressed!'), findsOneWidget);
  });
}

