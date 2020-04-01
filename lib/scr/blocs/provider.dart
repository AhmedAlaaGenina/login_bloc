import 'package:flutter/material.dart';
import 'package:login_bloc/scr/blocs/bloc.dart';

class Provider extends InheritedWidget {
  final bloc = Bloc();
  Provider({Key key, Widget child}) : super(key: key, child: child);
  @override
  bool updateShouldNotify(_) {
    return true;
  }

  static Bloc of(BuildContext context) {
    return (context.dependOnInheritedWidgetOfExactType as Provider).bloc;
  }
}
