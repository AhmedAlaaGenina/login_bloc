import 'dart:async';

import 'package:login_bloc/scr/blocs/valditor.dart';

class Bloc with Valditor {
  final _emailController = StreamController<String>();
  final _passwordController = StreamController<String>();

//  * Set Data
  Function(String) get changeEmail => _emailController.sink.add;
  Function(String) get changePassword => _emailController.sink.add;
  //  ch(pass){
  //   return _passwordController.sink.add(pass);
  // }
//  * get Data
  Stream<String> get email => _emailController.stream.transform(validateEmail);
  Stream<String> get password =>
      _emailController.stream.transform(validatePassword);

  dispose() {
    _emailController.close();
    _passwordController.close();
  }
}

// final bloc = Bloc();
