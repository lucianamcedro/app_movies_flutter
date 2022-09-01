import 'package:app_movies_flutter/application/application.dart';
import 'package:app_movies_flutter/services/services.dart';

import 'package:get/get.dart';

class LoginController extends GetxController with LoaderMixin, MessagesMixin {
  final LoginService _loginService;
  final loading = false.obs;
  final message = Rxn<MessageModel>();

  LoginController({
    required LoginService loginService,
  }) : _loginService = loginService;

  @override
  void onInit() {
    super.onInit();
    loaderListener(loading);
    messagesListener(message);
  }

  Future<void> login() async {
    try {
      loading(true);
      await _loginService.login();
      loading(false);
      message(
        MessageModel.info(
            title: 'Sucesso', message: 'Login realziado com sucesso!'),
      );
    } catch (e) {
      loading(false);
      message(
        MessageModel.error(
            title: 'Login Error', message: 'Erro ao realizar Login'),
      );
    }
  }
}
