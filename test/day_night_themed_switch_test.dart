import 'package:day_night_themed_switch/day_night_themed_switch.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

abstract class OnChangedCallback {
  void call(bool value);
}

class MockOnChangedCallback extends Mock implements OnChangedCallback {}

void main() {
  DayNightSwitch createWidget({bool? value, void Function(bool)? onChanged}) {
    return DayNightSwitch(
      value: value ?? false,
      onChanged: onChanged ?? (_) {},
    );
  }

  Finder getSwitchFinder() {
    return find.byType(DayNightSwitch);
  }

  DayNightSwitch getSwitchWidget(WidgetTester tester) {
    return tester.widget<DayNightSwitch>(getSwitchFinder());
  }

  DayNightSwitchState getSwitchState(WidgetTester tester) {
    return tester.state(getSwitchFinder());
  }

  testWidgets('Can initialize widget with true value', (tester) async {
    await tester.pumpWidget(createWidget(value: true));
    final widget = getSwitchWidget(tester);
    expect(widget.value, true);
  });

  testWidgets('Can initialize widget with false value', (tester) async {
    await tester.pumpWidget(createWidget(value: false));
    final widget = getSwitchWidget(tester);
    expect(widget.value, false);
  });

  testWidgets('Change the switch value', (tester) async {
    final switchCallback = MockOnChangedCallback();

    await tester.pumpWidget(createWidget(onChanged: switchCallback));
    final widget = getSwitchWidget(tester);
    final state = getSwitchState(tester);
    expect(widget.value, false);
    expect(state.value, false);
    expect(state.animation.value, 0);

    await tester.tap(find.byType(DayNightSwitch));
    await tester.pumpAndSettle();

    verify(switchCallback(true)).called(1);
    expect(state.value, true);
    expect(state.animation.value, 1);
  });
}
