import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:getx_modelo/app/modules/splash/splash_controller.dart';
import 'package:getx_modelo/app/routes/app_routes.dart';
import 'package:splashscreen/splashscreen.dart';

class SplashView extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(      
      body: Stack(
        children: [
          SplashScreen(
            seconds: 1,
            gradientBackground: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Colors.cyan[100], Colors.cyan[700]],
            ),
            navigateAfterSeconds: Routes.USERS,
            loaderColor: Colors.transparent,
          ),
          Container(
            padding: EdgeInsets.all(30.0),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/dollar.png"),
              ),
            ),
          )
        ],
      ),
    );
  }
}
