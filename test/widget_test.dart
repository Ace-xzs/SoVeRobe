import 'package:flutter_test/flutter_test.dart';

import 'package:soverobe/main.dart';

void main() {
  testWidgets('opens on the SoVeRobe welcome screen', (tester) async {
    await tester.pumpWidget(const SoVeRobeApp());

    expect(find.text('SoVeRobe'), findsOneWidget);
    expect(find.text('Find your next\nfavorite look.'), findsOneWidget);
    expect(find.text('Start exploring'), findsOneWidget);
  });

  testWidgets('opens the inspiration feed from the welcome screen', (
    tester,
  ) async {
    await tester.pumpWidget(const SoVeRobeApp());
    await tester.tap(find.text('Start exploring'));
    await tester.pumpAndSettle();

    expect(find.text('Find your kind of style.'), findsOneWidget);
    expect(find.text('Made for your mood'), findsOneWidget);
  });
}
