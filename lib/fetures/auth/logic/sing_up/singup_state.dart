part of 'singup_cubit.dart';

@immutable
sealed class SingupState {}

final class SingupInitial extends SingupState {}

final class SingupLoad extends SingupState {}

final class Singupsuces extends SingupState {
  final User user;
  Singupsuces(this.user);
}

final class Singupfauiler extends SingupState {
  final String message;
  Singupfauiler(this.message);
}

final class SingupAcceptChanged extends SingupState {
  final bool isAccept;
  SingupAcceptChanged(this.isAccept);
}
