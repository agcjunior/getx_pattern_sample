import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_modelo/app/data/model/user.dart';

class UserDetailsView extends GetView {
  final User user = Get.arguments as User;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(user.name),
      ),
      body: Container(
        child: Column(
          children: [
            Text(user.address.street),
            Text(user.address.city),
            Text(user.address.zipcode)
          ],
        ),
      ),
    );
  }
}
