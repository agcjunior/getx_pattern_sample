import 'package:get/route_manager.dart';
import 'package:getx_modelo/app/modules/splash_binding.dart';
import 'package:getx_modelo/app/modules/splash_view.dart';
import 'package:getx_modelo/app/routes/app_routes.dart';

class AppPages {
  static const INITIAL = Routes.INITIAL;

  static final routes = [
    GetPage(
      name: Routes.INITIAL,
      page: () => SplashView(),
      binding: SplashBinding())
  ];
}