import 'package:equatable/equatable.dart';

abstract class IndexEvent implements Equatable {
  IndexEvent();

  @override
  List<Object> get props => [];

  @override
  bool get stringify => true;
}

class CurrentIndex extends IndexEvent {
  final int value;
  CurrentIndex({required this.value});

  int get getValue => value;
}
