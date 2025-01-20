import 'package:bloc/bloc.dart';
import 'package:e_coomer/core/components/custom_loader.dart';
import 'package:e_coomer/core/components/toast_manager.dart';
import 'package:e_coomer/core/services/cash.dart/cash_hepler.dart';
import 'package:e_coomer/core/services/cash.dart/cash_keys.dart';
import 'package:e_coomer/fetures/auth/data/repo/autho_repo.dart';
import 'package:e_coomer/routing/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  GlobalKey<FormState> loginkey = GlobalKey();
  AuthoRepo authoRepo = AuthoRepoImp();
  Future<void> login() async {
    emit(Authloading());
    startLoading();
    var res = await authoRepo.loginWithEmailAndPassword(
        email: email.text, password: password.text);
    stopLoading();
    res.fold((fauiler) {
      emit(AuthFauiler(message: fauiler.message));
      ToastManager.showError(fauiler.message);
    }, (user) {
      emit(AuthSucess());
      ToastManager.showSuccess("تم تسجيل الدخول بنجاح", true);
      CashHelper.setData(CacheKeys.isLogin, true);
      Get.offAllNamed(Routes.homeScreen);
    });
  }

  Future<void> loginWithGoogle() async {
    emit(Authloading());
    startLoading();
    var res = await authoRepo.loginWithGoogle();
    stopLoading();
    res.fold((fauiler) {
      emit(AuthFauiler(message: fauiler.message));
      ToastManager.showError(fauiler.message);
    }, (user) {
      emit(AuthSucess());
      ToastManager.showSuccess("تم تسجيل الدخول بنجاح", true);
    });
  }

  void singinWithFaceBook() async {
    emit(Authloading());
    startLoading();
    var res = await authoRepo.loginWithFacebook();
    stopLoading();
    res.fold((fauiler) {
      emit(AuthFauiler(message: fauiler.message));
      ToastManager.showError(fauiler.message);
    }, (user) {
      emit(AuthSucess());
      ToastManager.showSuccess("تم تسجيل الدخول بنجاح", true);
    });
  }
}
