import 'package:flutter/material.dart';
import 'package:flutter_example/routers/routers.dart';

class RootPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('组件列表'),
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              title: Text('flutter默认组件'),
              onTap: () {
                Navigator.of(context).pushNamed(Routes.home);
              },
              trailing: Icon(Icons.keyboard_arrow_right),
            )
          ],
        )
    );
  }
}