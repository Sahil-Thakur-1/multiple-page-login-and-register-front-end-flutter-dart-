import 'package:farmer_eats/screens/loginoperation_screens/forgotpassword_screen.dart';
import 'package:flutter/material.dart';


class LoginScreen extends StatelessWidget {
   LoginScreen({super.key});
  var email;
  var password;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
             children: [
              const Text("FarmerEats",style:TextStyle(
                 fontSize: 20,
               ),),
               SizedBox(
                 height: MediaQuery.of(context).size.height/12,
               ),
               Text("Welcome Back!",style: TextStyle(
                 fontSize: MediaQuery.of(context).size.width/10,
                 fontWeight: FontWeight.bold
               ),),
               Row(
                 children: [
                   Text("New here? ",style: TextStyle(
                     fontSize: 15,
                     color: Colors.grey
                   ),),
                   InkWell(onTap: (){
            
                   },
                       child: Text("Create account",style: TextStyle(
                           fontSize: 15,
                           color: Color.fromRGBO(213, 113, 91, 1)
                       ),))
                 ],
               ),
               SizedBox(
                 height: MediaQuery.of(context).size.height/15,
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
                     filled: true,
                   suffix: InkWell( onTap: (){
                     Navigator.push(context, 
                     MaterialPageRoute(builder: (context)=> const ForgotpasswordScreen()));
                   },
                     child: Text("Forgot?",style:TextStyle(
                       fontSize: 15,
                       color: Color.fromRGBO(213, 113, 91, 1)
                   ),),),
                 ),
               ),
               SizedBox(height: 15,),
               Center(
                 child: ElevatedButton(
                     style: ElevatedButton.styleFrom(
                   backgroundColor: const Color.fromRGBO(213, 113, 91, 1)
                 ),
                     onPressed: (){

                     }, child: Padding(
                       padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width/3,right: MediaQuery.of(context).size.width/3),
                       child: const Text("Login",style: TextStyle(
                                      color: Colors.white
                                    ),),
                     )),
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
              )
             ],
            ),
          ),
        ),
      ),
    );
  }
}
