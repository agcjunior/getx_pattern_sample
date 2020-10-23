import 'package:get/get.dart';
import 'package:getx_modelo/app/modules/splash_controller.dart';

class SplashBinding implements Bindings {
@override
void dependencies() {
  Get.lazyPut<SplashController>(() => SplashController());
    
  }
}