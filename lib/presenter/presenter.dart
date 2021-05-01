import 'package:flutter/material.dart';
import 'package:flutter_mvp_architecture/view/view.dart';
import 'package:flutter_mvp_architecture/model/model.dart';

class AppPresenter {
  set view(AppView value) {}
  void buttonClick1() {}
}

class BasicAppPresenter implements AppPresenter {
  AppModel _model;
  AppView _view;

  BasicAppPresenter() {
    this._model = AppModel();
  }

  @override
  set view(AppView value) {
    _view = value;
    this._view.refreshData(this._model);
  }

  @override
  void buttonClick1() {
    int v1 = int.parse(this._model.controller1.text);
    int v2 = int.parse(this._model.controller2.text);
    this._model.result = v1 * v2;
    this._view.refreshData(this._model);
  }
}
