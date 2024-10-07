import 'package:flutter_test/flutter_test.dart';
import "package:bloc_test/bloc_test.dart";
import 'package:gdg/BLoC/blocs.dart';

class MockCounterBloc extends CounterBloc {}

void main() {
  group("Testing Counter BLoC", () {
    late MockCounterBloc mockCounterBloc;

    setUp(() {
      mockCounterBloc = MockCounterBloc();
    });

    test("testing initial state", () {
      expect(mockCounterBloc.state, equals(0));
    });

    blocTest(
      "test increment event",
      build: () => mockCounterBloc,
      act: (bloc) => bloc.add(Increment()),
      expect: () => [1],
      tearDown: ()=> mockCounterBloc,
    );

    blocTest(
      "test decrement",
      build: () => mockCounterBloc,
      act: (bloc) => bloc.add(Decrement()),
      expect: () => [-1],
      tearDown:()=> mockCounterBloc,
    );

    tearDown(() => mockCounterBloc);
  });
}
