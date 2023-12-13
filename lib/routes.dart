import 'package:go_router/go_router.dart';
import 'package:router_ex/view/aboutus.dart';
import 'package:router_ex/view/contactus.dart';
import 'package:router_ex/view/home.dart';
import 'package:router_ex/view/setting.dart';

class Routes {
  static String home = "/";
  static String setting = "/setting";
  static String contactus = "/contactus";
  static String aboutus = "/aboutus";

  GoRouter get router => _router;

  late final GoRouter _router = GoRouter(initialLocation: home, routes: [
    GoRoute(path: home, builder: (context, state) => const Home()),
    GoRoute(path: setting, builder: (context, state) => const Setting()),
    GoRoute(path: contactus, builder: (context, state) => const ContactUs()),
    GoRoute(path: aboutus, builder: (context, state) => const AboutUs()),
  ]);
}


// http://localhost:61858/
// http://localhost:61858/#/setting
// http://localhost:61858/#/contactus
// http://localhost:61858/#/aboutus
// http://localhost:61858/home