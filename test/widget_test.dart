import 'package:flutter_test/flutter_test.dart';
import 'package:the_builder_app/main_app.dart';

void main() {
  testWidgets('shows theBuilderApp home screen', (tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Home'), findsWidgets);
    expect(find.text('Jordan Rivers'), findsOneWidget);
    expect(find.text('Followed Apps'), findsOneWidget);
  });
}
