import 'package:equatable/equatable.dart';

class Picture extends Equatable {
  final String file;
  const Picture({required this.file});

  @override
  List<Object> get props => [file];

  @override
  bool get stringify => true;
}
