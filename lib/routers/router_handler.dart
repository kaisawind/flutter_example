import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_example/views/my_home_page.dart';
import 'package:flutter_example/views/root_page.dart';
import 'package:flutter_example/views/my_images_page.dart';
import 'package:flutter_example/views/my_shared_preferences.dart';
import 'package:flutter_example/widgets/404.dart';
import 'package:flutter_example/widgets/my_stateful_widget.dart';
import 'package:flutter_example/widgets/my_stateless_widget.dart';

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

/// 无状态组件 页面
var myStatelessWidgetHandler = new Handler(handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return MyStatelessWidget();
});

/// 首页
var rootPageHandler = new Handler(handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return RootPage();
});

/// 图片 页面
var myImagesPageHandler = new Handler(handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return MyImagesPage();
});

/// 存储 页面
var mySharedPreferencesHandler = new Handler(handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return MySharedPreferences();
});