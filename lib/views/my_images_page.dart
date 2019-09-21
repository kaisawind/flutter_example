import 'package:flutter/material.dart';
import 'package:flutter_example/widgets/images/network_image.dart';
import 'package:flutter_example/resources/image_keys.dart';

class MyImagesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Images Page'),
      ),
      body: ListView(
        children: <Widget>[
          MyNetworkImage(),
        ],
      ),
    );
  }
}