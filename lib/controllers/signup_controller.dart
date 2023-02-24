import 'package:doc_hub/Repository/authentication_repo.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class SignUpController extends GetxController{
  static SignUpController get instance=>Get.find();

   final email=TextEditingController();
   final password=TextEditingController();
   final fullName=TextEditingController();
   final phoneNo=TextEditingController();

   void registerUser(String email,String password){
     print("sign up email");
      AuthenticationRepository.instance.createUserWithEmailAndPassword(email, password);
   }

   void phoneAuthentication(String phoneNo){
      AuthenticationRepository.instance.phoneAuthentication(phoneNo);
   }


}