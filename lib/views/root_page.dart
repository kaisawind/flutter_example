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
            ),
            ListTile(
              title: Text('Stateful Widget'),
              onTap: () {
                Navigator.of(context).pushNamed(Routes.statefulWidget);
              },
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
            ListTile(
              title: Text('Stateless Widget'),
              onTap: () {
                Navigator.of(context).pushNamed(Routes.statelessWidget);
              },
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
          ],
        ));
  }
}
