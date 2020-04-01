import 'package:flutter/material.dart';
import 'package:login_bloc/scr/blocs/provider.dart';
import 'package:login_bloc/scr/screens/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
      child: MaterialApp(
        title: 'Login BLoC',
        home: Scaffold(
          appBar: AppBar(
            title: Text('Login'),
          ),
          body: HomePage(),
        ),
      ),
    );
  }
}
