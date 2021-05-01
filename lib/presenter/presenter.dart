import 'package:flutter/material.dart';
import 'package:flutter_mvp_architecture/view/view.dart';
import 'package:flutter_mvp_architecture/model/model.dart';

class AppPresenter {
  set view(AppView value) {}
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
}
