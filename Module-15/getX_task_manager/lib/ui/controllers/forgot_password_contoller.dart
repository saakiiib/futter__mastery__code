import 'package:flutter/material.dart';
import 'package:getX_task_manager/ui/screens/pin_verification_screen.dart';
import 'package:getX_task_manager/ui/widgets/body_background.dart';
import 'package:getX_task_manager/data/network_caller/network_caller.dart';
import 'package:getX_task_manager/data/network_caller/network_response.dart';
import 'package:getX_task_manager/data/utility/urls.dart';
import 'package:getX_task_manager/ui/widgets/snack_message.dart';
import 'package:get/get.dart';

class ForgotPasswordController extends GetxController {
  bool _forgetPasswordInProgress = false;
  String _message = '';

  bool get forgetPasswordInProgress => _forgetPasswordInProgress;
  String get message => _message;

  Future<bool> forgetPassword(String email) async {
    bool isSuccess = false;
    _forgetPasswordInProgress = true;
    update();

    final NetworkResponse response =
        await NetworkCaller().getRequest(Urls.recoveryEmailUrl(email));
    _forgetPasswordInProgress = false;

    update();
    if (response.isSuccess) {
      isSuccess = true;
      _message = 'OTP sent to email address';
    } else {
      isSuccess = false;
      _message = 'OTP sent failed. Try again!';
    }
    update();
    return isSuccess;
  }
}
