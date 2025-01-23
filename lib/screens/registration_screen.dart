
import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget{
  _RegistrationScreenState createState ()=> _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen>{
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  bool isRegistered = false;

  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Registration form"),
      ),
    );
  }

}
