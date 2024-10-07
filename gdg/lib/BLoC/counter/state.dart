import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gdg/BLoC/counter/event.dart';
// import 'package:gdg/errors/custom.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<Increment>((event, emit) {
      emit(state+1);
    });

    on<Decrement>((event, emit) {
      emit(state-1);
    });
  }
}
