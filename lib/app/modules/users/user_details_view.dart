import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_modelo/app/data/model/user.dart';

class UserDetailsView extends GetView {
  final User user = Get.parameters as User;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(user.name),
      ),
      body: Container(
          child: Center(
        child: Text(user.address.street),
      )),
    );
  }
}
