import 'package:flutter/material.dart';
import 'package:flutter_example/widgets/images/network_image.dart';
import 'package:flutter_example/widgets/images/asset_image.dart';

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
          MyAssetImage(),
        ],
      ),
    );
  }
}