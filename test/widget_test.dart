import 'package:flutter_test/flutter_test.dart';
import 'package:farm_management_app/main.dart'; // Make sure this path is correct

void main() {
  testWidgets('Marketplace page displays correctly', (WidgetTester tester) async {
    // Build the app and trigger a frame.
    await tester.pumpWidget(const FarmApp());

    // Verify that the Marketplace page is displayed.
    expect(find.text('Marketplace Page'), findsOneWidget);
    
    // Optionally verify other UI elements or interactions.
  });
}