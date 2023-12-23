
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../../views/login/login_screen.dart';
import '../componants/bottom_nav_bar_screen.dart';
import '../helpers/navigator_helper.dart';
import '../helpers/shared_helper.dart';
import 'controllers.dart';
import 'end_points.dart';



class DioHelper {


static late Dio dio;
static void init(){
  dio = Dio();
}

  
 static createAccount(BuildContext context) {
    DioHelper.dio.post(createUserApiUrl, data: {
      "name": SignupControllers.nameController.text,
      "email": SignupControllers.emailController.text,
      "password": SignupControllers.passwordController.text,
      "avatar": "https://picsum.photos/800"
    
    }).then((response) {
     
      
      if (response.statusCode == 201) {
        NavigatorHelper.showMessage(context, "Account Created Successfully");
        SignupControllers.emailController.text = "";
        SignupControllers.nameController.text = "";
        SignupControllers.passwordController.text = "";
        NavigatorHelper.goToAndOff(context, const LoginScreen());
        
      } else {
        NavigatorHelper.showMessage(context, "Falied try again");
       
      }
    }).catchError((error) {
      NavigatorHelper.showMessage(context, "Falied try again");
     
    });
  }
 
 static login(BuildContext context) async {
    DioHelper.dio.post(loginApiUrl, data: {
      "email": LoginControllers.emailController.text,
      "password": LoginControllers.passwordController.text

     
    }).then(
      (response) async {
        if (response.statusCode == 201) {
          await SharedHelper.prefs.setBool("isLogin", true);
          await SharedHelper.prefs
              .setString(
            "token",
            response.data["access_token"].toString(),
          )
              .then((value) {
            NavigatorHelper.showMessage(context, "Login successfully");
            LoginControllers.emailController.text = "";
            LoginControllers.passwordController.text = "";
            NavigatorHelper.goToAndOff(
              context,
               BottomNavBarScreen(),
            );
          });
        } else {
          NavigatorHelper.showMessage(context, "Login failed");
        }
      },
    ).catchError((error) {
      NavigatorHelper.showMessage(context, "Login failed");
    });
  }

}