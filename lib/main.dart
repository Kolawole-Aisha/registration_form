
import 'package:flutter/material.dart';
import 'Screens/Registration_Screen.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     title: "RegistrationForm",
     home: RegistrationScreen(),
    );
    
  }
}


