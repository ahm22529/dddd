import 'package:dartz/dartz.dart';
import 'package:e_coomer/core/error/execption.dart';
import 'package:e_coomer/core/error/fauiler.dart';
import 'package:e_coomer/core/services/fire_base/fire_base_aut_services.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthoRepo {
  Future<Either<Failure, User>> loginWithEmailAndPassword(
      {required String email, required String password});

  Future<Either<Failure, User>> loginWithGoogle();
   Future<Either<Failure, UserCredential>> loginWithFacebook();
  Future<Either<Failure, User>> createUserWithEmailAndPassword(
      {required String email, required String password});
}

class AuthoRepoImp extends AuthoRepo {
  FireBaseAutServices fireBaseAutServices = FireBaseAutServices();
  @override
  Future<Either<Failure, User>> loginWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      return right(await fireBaseAutServices.signInWithEmailAndPassword(
          email: email, password: password));
    } on CustomExpection catch (e) {
      return left(ServerFailure(e.toString()));
    } catch (e) {
      return left(
        const ServerFailure("please try later"),
      );
    }
  }

  Future<Either<Failure, User>> loginWithGoogle() async {
    try {
      return right(await fireBaseAutServices.signInWithGoogle());
    } on CustomExpection catch (e) {
      return left(ServerFailure(e.toString()));
    } catch (e) {
      return left(
        const ServerFailure("please try later"),
      );
    }
  }

  Future<Either<Failure, User>> createUserWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      return right(await fireBaseAutServices.createUserWithEmailAndPassword(
          email: email, password: password));
    } on CustomExpection catch (e) {
      return left(ServerFailure(e.toString()));
    } catch (e) {
      return left(
        const ServerFailure("please try later"),
      );
    }
  }
  
  @override
  Future<Either<Failure, UserCredential>> loginWithFacebook() async{
 try {
      return right(await fireBaseAutServices.signInWithFacebook());
    } on CustomExpection catch (e) {
      return left(ServerFailure(e.toString()));
    } catch (e) {
      return left(
        const ServerFailure("please try later"),
      );
    }
  }
}
