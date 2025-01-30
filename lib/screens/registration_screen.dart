
import 'package:flutter/material.dart';
import 'package:registration_form/screens/details_screen.dart';

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


      body: Padding(padding:
      EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.
        center,
        children: <Widget> [
          TextField(
            controller: 
            firstNameController,
            decoration: InputDecoration(
              labelText: "First Name"
            ),

          ),
          TextField(
            controller: 
            lastNameController,
            decoration: InputDecoration(
              labelText: "Last Name"
            ),

          ),
          TextField(
            controller: 
            emailController,
            decoration: InputDecoration(
              labelText: "Email Address"
            ),
            ),


          const  SizedBox(height: 30,),
          GestureDetector(
        
        
               onTap: () {
              setState( () {
                isRegistered = !isRegistered;
              });
            },
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: isRegistered ? Colors.
                green : Colors.blue,
                borderRadius: BorderRadius.
                circular(10),
             ),
             child:  Text(
              isRegistered ?
              "Registration Successful" :
              "Register me",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),

             ),
              




            ),


          ),
          SizedBox(height: 40,),
          if (isRegistered)
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)
            =>DetailsScreen(
              firstname: firstNameController.text,
              lastname: lastNameController.text,
              email: emailController.text,
            ),
            ),
            );
          }, child: Text("Veiw Registration Details"),
          ),
        ]
  )

      

      ),
       );
    

  }

}
