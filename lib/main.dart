import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_modelo/app/theme/app_theme.dart';

import 'app/routes/app_pages.dart';
import 'app/routes/app_routes.dart';

void main() {
  runApp(GetMaterialApp(
    title: "Exemplo",
    debugShowCheckedModeBanner: false,
    theme: appThemeData,
    initialRoute: Routes.INITIAL,
    getPages: AppPages.routes,
  ));
}
