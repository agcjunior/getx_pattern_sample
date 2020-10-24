import 'package:get/get.dart';
import 'package:getx_modelo/app/modules/users/user_controller.dart';

class UserBinding implements Bindings {
@override
void dependencies() {
  Get.lazyPut<UserController>(() => UserController());
    
  }
}