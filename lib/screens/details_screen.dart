import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DetailsScreen  extends StatelessWidget {
  final String firstname;  
  final String lastname;
  final String email;


  const DetailsScreen (
    {required this.firstname,
    required this.lastname,
    required this.email,  });


    @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title:Text( "Registration Details",),
      ),


      body: Padding(padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          Text("First name: $firstname"),
          Text("last name: $lastname"),
          Text("email: $email"),


        ],
        
      )
      ),

    );
  }
  
  
  }


