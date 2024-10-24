
import 'package:farmer_eats/components/basic_template_%20of_screens.dart';
import 'package:farmer_eats/screens/registeroperation_screen/register_screen_two.dart';
import 'package:flutter/material.dart';


class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  var fullName;
  var email;
  var phone;
  var password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Template(message: "Signup 1 of 4", title: "Welcome!",childWidget: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: Image(image: AssetImage('images/icons/google.png')),
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(10)
              ),
              height: MediaQuery.of(context).size.height/16,
              width:  MediaQuery.of(context).size.width/5.2,
            ),
            Container(
              child: Image(image: AssetImage('images/icons/apple.png')),
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(10)
              ),
              height: MediaQuery.of(context).size.height/16,
              width:  MediaQuery.of(context).size.width/5.2,
            ),
            Container(
              child: Image(image: AssetImage('images/icons/facebook.png')),
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(10)
              ),
              height: MediaQuery.of(context).size.height/16,
              width:  MediaQuery.of(context).size.width/5.2,
            )
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height/20,
        ),
        const Center(
          child: Text("or sign with",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey,
            ),),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height/20,
        ),
        TextField(
          onChanged: (value){
            fullName = value;
          },
          decoration: InputDecoration(
              prefixIcon: const Icon(Icons.account_circle_outlined) ,
              hintText: "Full Name",
              hintStyle: TextStyle(
                  color: Colors.grey
              ),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none
              ),
              fillColor: Colors.grey.shade200,
              filled: true
          ),
        ),
        SizedBox(
          height: 10,
        ),
        TextField(
          onChanged: (value){
            email = value;
          },
          decoration: InputDecoration(
              prefixIcon: const Icon(Icons.alternate_email) ,
              hintText: "Email Address",
              hintStyle: TextStyle(
                  color: Colors.grey
              ),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none
              ),
              fillColor: Colors.grey.shade200,
              filled: true
          ),
        ),
        SizedBox(
          height: 10,
        ),
        TextField(
          onChanged: (value){
            phone = value;
          },
          decoration: InputDecoration(
              prefixIcon: const Icon(Icons.local_phone) ,
              hintText: "Phone",
              hintStyle: TextStyle(
                  color: Colors.grey
              ),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none
              ),
              fillColor: Colors.grey.shade200,
              filled: true
          ),
        ),
        SizedBox(
          height: 10,
        ),
        TextField(
          onChanged: (value){
            password = value;
          },
          decoration: InputDecoration(
              prefixIcon: const Icon(Icons.lock_open_sharp) ,
              hintText: "Password",
              hintStyle: TextStyle(
                  color: Colors.grey
              ),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none
              ),
              fillColor: Colors.grey.shade200,
              filled: true
          ),
        ),
        SizedBox(
          height: 10,
        ),
        TextField(
          decoration: InputDecoration(
              prefixIcon: const Icon(Icons.lock_open_sharp) ,
              hintText: "Re-enter Password",
              hintStyle: TextStyle(
                  color: Colors.grey
              ),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none
              ),
              fillColor: Colors.grey.shade200,
              filled: true
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height/10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text("Login",style: TextStyle(
              fontSize: 25,
              decoration: TextDecoration.underline
            ),),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(213, 113, 91, 1)
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>  RegisterScreenTwo()));
                }, child: const Text("Continue",style: TextStyle(
                    color: Colors.white
                ),)),
          ],
        ),
      ],
      ),
      ),
    );
  }
}
