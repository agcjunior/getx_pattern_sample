import 'package:get/get.dart';
import 'package:getx_modelo/app/data/model/user.dart';
import 'package:getx_modelo/app/data/provider/user_provider.dart';
import 'package:getx_modelo/app/data/repositoy/user_repository.dart';

class UserController extends GetxController {
  RxList<User> users = List<User>().obs;  

  @override
  void onInit() async {
    super.onInit();
    users.value = await UserRepository(apiClient: UserProvider()).getUserList();    
  }

  User getUserDetails(int index) {
    return users[index];
  }
}
