import 'package:flutter/material.dart';
import 'package:flutter_mvp_architecture/model/model.dart';

class HomePage extends StatefulWidget {
  final String title;

  HomePage({this.title, Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AppModel _appModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          TextField(
            controller: _appModel.controller1,
          ),
          TextField(
            controller: _appModel.controller2,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Icon(Icons.close),
          ),
          Text(
            "Result:",
            style: TextStyle(fontSize: 30.0),
          )
        ],
      ),
    );
  }
}
