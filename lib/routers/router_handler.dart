import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_example/views/my_home_page.dart';
import 'package:flutter_example/views/root_page.dart';
import 'package:flutter_example/widgets/404.dart';
import 'package:flutter_example/widgets/my_stateful_widget.dart';

/// 主页
var homePageHandler = new Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    String title = params['title']?.first ?? 'my home page';
    return MyHomePage(title: title);
  },
);

/// Not Found 页面
var notFoundWidgetHandler = new Handler(handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return NotFoundWidget();
});

/// 有状态组件 页面
var myStatefulWidgetHandler = new Handler(handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return MyStatefulWidget();
});

/// 首页
var rootPageHandler = new Handler(handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return RootPage();
});