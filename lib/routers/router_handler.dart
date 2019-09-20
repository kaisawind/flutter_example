import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_example/views/my_home_page.dart';
import 'package:flutter_example/widgets//404.dart';

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
