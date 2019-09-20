import 'package:fluro/fluro.dart';
import 'router_handler.dart';

class Routes {
  static String root = "/";
  static String home = "/home";

  static void configureRoutes(Router router) {
    router.notFoundHandler = notFoundWidgetHandler;
    router.define(root, handler: homePageHandler);
    router.define(home, handler: homePageHandler);
  }
}
