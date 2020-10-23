import 'package:getx_modelo/app/data/model/user.dart';
import 'package:getx_modelo/app/data/provider/user_provider.dart';
import 'package:meta/meta.dart';

class UserRepository {

  final UserProvider apiClient;

  UserRepository({@required this.apiClient}) : assert(apiClient != null);

  Future<User> getUserById(id) async {
    return User.fromJson(await apiClient.getUser(id));
  }

}