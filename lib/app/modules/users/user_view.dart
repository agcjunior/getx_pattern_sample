import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_modelo/app/data/model/user.dart';
import 'package:getx_modelo/app/modules/users/user_controller.dart';

class UserView extends GetView<UserController> {
  Widget _buildCard(User user) {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text(user.name),
            subtitle: Text(user.email),
            tileColor: Colors.grey[200],            
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Users')),
      body: SafeArea(
        child: GetX<UserController>(
          builder: (_) {
            return ListView.builder(
              itemCount: _.users.length,
              itemBuilder: (context, index) {
                return _buildCard(_.users[index]);
              },
            );
          },
        ),
      ),
    );
  }
}
