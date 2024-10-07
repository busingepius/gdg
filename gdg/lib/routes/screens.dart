import 'package:equatable/equatable.dart';

class Routes extends Equatable {
  static const splash = '/';

  static const nav = '/nav';

  @override
  List<Object?> get props => [splash, nav];
}
