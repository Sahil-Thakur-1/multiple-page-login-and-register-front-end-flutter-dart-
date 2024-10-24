import 'package:farmer_eats/screens/loginoperation_screens/optverification_screen.dart';
import 'package:flutter/material.dart';

import 'login_screen.dart';


class ForgotpasswordScreen extends StatelessWidget {
  const ForgotpasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("FarmerEats",style:TextStyle(
                  fontSize: 20,
                ),),
                SizedBox(
                  height: MediaQuery.of(context).size.height/12,
                ),
                Text("Forget Password?",style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width/10,
                    fontWeight: FontWeight.bold
                ),),
                Row(
                  children: [
                    Text("Remember your password?",style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey
                    ),),
                    InkWell(onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                    },
                        child: Text("Login",style: TextStyle(
                            fontSize: 15,
                            color: Color.fromRGBO(213, 113, 91, 1)
                        ),))
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height/15,
                ),
                TextField(
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.local_phone) ,
                      hintText: "Phone Number",
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
                SizedBox(height: 30,),
                Center(
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(213, 113, 91, 1)
                      ),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>OptverificationScreen()));
                      }, child: Padding(
                    padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width/3.2,right: MediaQuery.of(context).size.width/3.2),
                    child: const Text("Send OTP",style: TextStyle(
                        color: Colors.white
                    ),),
                  )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
