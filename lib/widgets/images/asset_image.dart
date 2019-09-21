import 'package:flutter/material.dart';
import 'package:flutter_example/resources/image_keys.dart';

class MyAssetImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text('Asset Image'),
          ),
          Divider(),
          Image.asset(ImageKeys.avatarAssets),
        ],
      ),
    );
  }
}
