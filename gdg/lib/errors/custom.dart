import 'package:equatable/equatable.dart';

class CustomError extends Error implements Equatable {
  String message;
  CustomError({required this.message});

  void setMessage({required String message}) {
    this.message = message;
  }

  String getMessage() {
    return message;
  }
  
  @override
  List<Object?> get props => [message];
  
  @override
  bool? get stringify => true;
}
