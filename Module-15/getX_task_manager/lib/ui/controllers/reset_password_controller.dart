import 'package:flutter/material.dart';
import 'package:getX_task_manager/ui/screens/login_screen.dart';
import 'package:getX_task_manager/ui/widgets/body_background.dart';

import '../../data/network_caller/network_caller.dart';
import '../../data/network_caller/network_response.dart';
import '../../data/utility/urls.dart';
import '../widgets/snack_message.dart';
import 'package:get/get.dart';

class ResetPassWordController extends GetxController {
  bool _resetPasswordInProgress = false;

  bool get resetPasswordInProgress => _resetPasswordInProgress;
  String _message = '';

  String get message => _message;

  Future<bool> resetPass(
    String email,
    String otp,
    String password,
  ) async {
    _resetPasswordInProgress = true;
    bool isSuccess = false;

    update();
    final NetworkResponse response =
        await NetworkCaller().postRequest(Urls.recoverResetPassword, body: {
      "email": email,
      "OTP": otp,
      "password": password,
    });
    _resetPasswordInProgress = false;
    update();
    if (response.isSuccess) {
      isSuccess = true;
      _message = 'Password Updated.';
    } else {
      isSuccess = false;
      _message = 'Set password Failed.';
    }
    update();
    return isSuccess;
  }
}
