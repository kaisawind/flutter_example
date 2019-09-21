import 'package:fluro/fluro.dart';
import 'router_handler.dart';

class Routes {
  static String root = '/';
  static String home = '/home';
  static String statefulWidget = '/widget/stateful';

  static void configureRoutes(Router router) {
    router.notFoundHandler = notFoundWidgetHandler;
    router.define(root, handler: rootPageHandler);
    router.define(home, handler: homePageHandler);
    router.define(statefulWidget, handler: myStatefulWidgetHandler);
  }
}
