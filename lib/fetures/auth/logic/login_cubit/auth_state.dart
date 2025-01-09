part of 'auth_cubit.dart';

@immutable
sealed class AuthState {}

final class AuthInitial extends AuthState {}

final class Authloading extends AuthState {}

final class AuthSucess extends AuthState {}

final class AuthFauiler extends AuthState {
  final String message;
  AuthFauiler({required this.message});
}
