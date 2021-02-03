import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController{
  final String  passPattern = r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
  final String emailPattern = r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
  RxBool passWordValidate = false.obs;
  RxBool passWordStrength = false.obs;
  RxBool passMixIn = false.obs;
  RxBool emailValidate = false.obs;

  TextEditingController textEditingControllerEmail;
  TextEditingController textEditingControllerPassword;

  List<String> title = <String>['Buying', 'Selling', 'Renting', 'I’m Just Looking'];
  List<int> selected = <int>[].obs;
  List<String> dropDownItem = <String>['06902, Stamford, CT, USA','06902, Stamford, CT, USA','06902, Stamford, CT, USA','06902, Stamford, CT, USA','06902, Stamford, CT, USA','06902, Stamford, CT, USA',];
  @override
  void onInit() {
    textEditingControllerEmail = TextEditingController();
    textEditingControllerPassword = TextEditingController();
    super.onInit();
  }
  void validatePasswordAndStrength(String password){
    var passValid = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$').hasMatch(password);
    passValid?passMixIn.value = true:passMixIn.value = false;
    password.length > 8?passWordValidate.value = true:passWordValidate.value = false;
    print(passValid);
  }

  void validateEmail(String email) {
    var emailValid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(email);
    emailValid?emailValidate.value = true:emailValidate.value = false;
    print(emailValid);
  }
  void clickRegister(){
    print(textEditingControllerEmail.text);
    print(textEditingControllerPassword.text);
    Get.toNamed<dynamic>('/LandingPage1');
  }
}