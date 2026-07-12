import 'package:flutter_test/flutter_test.dart';
import 'package:the_builder_app/main_app.dart';

void main() {
  testWidgets('shows theBuilderApp profile screen', (tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Builder Profile'), findsOneWidget);
    expect(find.text('Maya Chen'), findsOneWidget);
    expect(find.text('About'), findsOneWidget);
  });
}
