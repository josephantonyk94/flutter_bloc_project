import 'dart:async';

import 'package:flutter_blocs_project/bloc/validator.dart';
class Bloc extends Object with Validators {
final _email= StreamController<String>();
final _password =StreamController<String>();

//add data to the stream

Stream<String> get email=> _email.stream.transform(validateEmail);
Stream<String> get password=>_password.stream.transform(validatePassword);

//change data

Function(String) get changeEmail=>_email.sink.add;
Function(String) get changePassword=>_password.sink.add;
dispose(){
  _password.close();
  _email.close();
}
}