import 'package:flutter/material.dart';
import 'package:flutter_example/utils/sp_utils.dart';
import 'package:flutter_example/resources/sp_keys.dart';

class MySharedPreferences extends StatefulWidget {
  @override
  _MySharedPreferencesState createState() => _MySharedPreferencesState();
}

class _MySharedPreferencesState extends State<MySharedPreferences> {
  String _date = '';

  _MySharedPreferencesState() : super();

  @override
  void initState() {
    super.initState();
    setDate();
  }

  void setDate() async {
    DateTime now = DateTime.now();
    SpUtil sp = await SpUtil.getInstance();
    await sp.setString(SpKeys.datetime, now.toString());
  }

  void updateDate() async {
    SpUtil sp = await SpUtil.getInstance();
    setState(() {
      _date = sp.getString(SpKeys.datetime);
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('Shared Preferences'),
      ),
      body: ListView(
        children: <Widget>[
          RaisedButton(
            child: Text('setString'),
            onPressed: () {
              setDate();
            },
          ),
          RaisedButton(
            child: Text('getString'),
            onPressed: () {
              updateDate();
            },
          ),
          Container(
            child: Align(
              child: Text(_date),
            ),
          ),
        ],
      ),
    );
  }
}
