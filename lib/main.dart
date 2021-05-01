import 'package:flutter/material.dart';
import 'package:flutter_mvp_architecture/view/home_page.dart';
import 'package:flutter_mvp_architecture/presenter/presenter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData(primarySwatch: Colors.orange),
      home: HomePage(BasicAppPresenter(), title: 'MVP'),
    );
  }
}
