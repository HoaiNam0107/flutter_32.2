import 'package:equatable/equatable.dart';

abstract class AuthEvent extends Equatable {
const AuthEvent();

@override
List<Object> get props => [];
}

class LoginSubmitted extends AuthEvent {
final String username;
final String password;

const LoginSubmitted(this.username, this.password);

@override
List<Object> get props => [username, password];
}
