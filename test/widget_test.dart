import 'package:flutter_test/flutter_test.dart';
import 'package:the_builder_studio/main_app.dart';

void main() {
  testWidgets('shows theBuilderStudio home screen', (tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Home'), findsWidgets);
    expect(find.text('Jordan Rivers'), findsOneWidget);
    expect(find.text('Followed Apps'), findsOneWidget);
  });
}
