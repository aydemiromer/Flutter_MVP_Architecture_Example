import 'package:flutter/material.dart';
import 'package:flutter_mvp_architecture/model/model.dart';
import 'package:flutter_mvp_architecture/presenter/presenter.dart';
import 'package:flutter_mvp_architecture/view/view.dart';

class HomePage extends StatefulWidget {
  final String title;
  final AppPresenter presenter;

  HomePage(this.presenter, {this.title, Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> implements AppView {
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
            onPressed: () {
              this.widget.presenter.buttonClick1();
            },
            child: Icon(Icons.close),
          ),
          Text(
            "Result: ${_appModel.result}",
            style: TextStyle(fontSize: 30.0),
          )
        ],
      ),
    );
  }

  @override
  void refreshData(AppModel model) {
    setState(() {
      this._appModel = model;
    });
  }

  @override
  void initState() {
    super.initState();
    this.widget.presenter.view = this;
  }
}
