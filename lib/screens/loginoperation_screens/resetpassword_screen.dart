import 'package:flutter/material.dart';

import 'login_screen.dart';



class ResetpasswordScreen extends StatelessWidget {
  const ResetpasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                Text("Reset Password",style: TextStyle(
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
                        child: Text("login",style: TextStyle(
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
                      prefixIcon: const Icon(Icons.lock_open_sharp) ,
                      hintText: "Old password",
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
                    hintText: "New Password",
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
                      onPressed: (){}, child: Padding(
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

              ],
            ),
          ),
        ),
      ),
    );
  }
}
