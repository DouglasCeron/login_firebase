import 'package:get/route_manager.dart';
import 'package:login_firebase/core/presentation/home/home_binding.dart';
import 'package:login_firebase/core/presentation/home/home_page.dart';
import 'package:login_firebase/core/presentation/login/login_binding.dart';
import 'package:login_firebase/core/presentation/login/login_page.dart';

class AppRoutes {
  static const String initialRoute = '/login';
  static const String home = '/home';
  static const String login = '/login';

  static List<GetPage> pageList = [
    GetPage(
      name: home,
      binding: HomeBindings(),
      page: () => const HomePage(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: login,
      binding: LoginBindings(),
      page: () => const LoginPage(),
      transition: Transition.fadeIn,
    ),
  ];
}
