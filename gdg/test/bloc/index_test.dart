import "package:flutter_test/flutter_test.dart";
import "package:bloc_test/bloc_test.dart";
import "package:gdg/BLoC/blocs.dart";

void main() {
  group("testing the index bloc", () {
    late IndexBloc indexBloc;
    setUp(
      () => indexBloc = IndexBloc(),
    );
    blocTest("test the index bloc",
        build: () => indexBloc,
        act: (bloc) => bloc.add(CurrentIndex(value: 1)),
        expect:()=>[1],
        );
    
  });
}
