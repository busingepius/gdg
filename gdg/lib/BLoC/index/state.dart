import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gdg/BLoC/index/event.dart';

class IndexBloc extends Bloc<IndexEvent, int> {
  IndexBloc() : super(0) {
    on<CurrentIndex>((event, emit) {
      emit(event.getValue);
    });
  }
}
