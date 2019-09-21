import 'package:flutter/material.dart';
import 'package:flutter_example/resources/image_keys.dart';

class MyNetworkImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text('Network Image'),
          ),
          Divider(),
          Image.network(ImageKeys.avatar),
        ],
      ),
    );
  }
}
