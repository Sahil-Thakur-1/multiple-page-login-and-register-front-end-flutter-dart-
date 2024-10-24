import 'package:farmer_eats/screens/loginoperation_screens/login_screen.dart';
import 'package:farmer_eats/screens/loginoperation_screens/resetpassword_screen.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';


class OptverificationScreen extends StatelessWidget {
  const OptverificationScreen({super.key});

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
                Text("Welcome Back!",style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width/10,
                    fontWeight: FontWeight.bold
                ),),
                Row(
                  children: [
                    Text("Remember your password? ",style: TextStyle(
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
                PinCodeTextField(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  appContext: context,
                  length: 4, // The number of OTP digits
                  obscureText: false,
                  animationType: AnimationType.fade,
                  pinTheme: PinTheme(
                    selectedColor: Colors.black,
                    shape: PinCodeFieldShape.box,
                    activeColor: Colors.transparent,
                    inactiveColor: Colors.transparent,
                    selectedFillColor: Colors.grey.shade300,
                    inactiveFillColor: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(10),
                    fieldHeight: 60,
                    fieldWidth: 50,
                    activeFillColor: Colors.grey.shade300,
                  ),
                  animationDuration: Duration(milliseconds: 300),
                  enableActiveFill: true,
                  onCompleted: (v) {
                    print("Completed: $v"); // Handle OTP when all fields are filled
                  },
                  onChanged: (value) {
            
                  },
                ),
                SizedBox(height: 15,),
                Center(
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(213, 113, 91, 1)
                      ),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>ResetpasswordScreen()));
                      }, child: Padding(
                    padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width/3,right: MediaQuery.of(context).size.width/3),
                    child: const Text("Submit",style: TextStyle(
                        color: Colors.white
                    ),),
                  )),
                ),
                SizedBox(
                 height: 10,
                ),
                Center(
                  child: InkWell(
                    child: Text("Resend",style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontSize: 20
                    ),),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
