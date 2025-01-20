import 'package:bloc/bloc.dart';
import 'package:e_coomer/core/components/custom_loader.dart';
import 'package:e_coomer/core/components/toast_manager.dart';
import 'package:e_coomer/core/services/sub_base_services/sub_base_storage.dart';
import 'package:e_coomer/fetures/auth/data/repo/autho_repo.dart';
import 'package:e_coomer/routing/app_routes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';

part 'singup_state.dart';

class SingupCubit extends Cubit<SingupState> {
  SingupCubit() : super(SingupInitial());

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> globalKey = GlobalKey();
  AuthoRepo authoRepo = AuthoRepoImp();
  SupabaseService service = SupabaseService();
  bool accept = false;
  Future<void> singUp() async {
    emit(SingupLoad());
    startLoading();
    var res = await authoRepo.createUserWithEmailAndPassword(
        email: emailController.text, password: passwordController.text);
    stopLoading();
    res.fold((fauiler) {
      emit(Singupfauiler(fauiler.message));
      ToastManager.showError(fauiler.message);
    }, (user) {
      emit(Singupsuces(user));
      service.insertData(
        tableName: "user",
        data: {
          "UserName": nameController.text,
        },
      );
      ToastManager.showSuccess("تم التسجيل بنجاح", true);
      Get.offAllNamed(Routes.loginScreen); // ));
    });
  }

  void updateAccept(bool value) {
    accept = value;
    emit(SingupAcceptChanged(accept)); // إرسال الحالة الجديدة
  }
}
