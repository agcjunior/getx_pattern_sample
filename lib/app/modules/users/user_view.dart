import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_modelo/app/modules/users/user_controller.dart';


class UserView extends GetView<UserController> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
    appBar: AppBar(title: Text('Users')),

    body: Container(
      child: Text("Users"),
    ),
    );
  }
}