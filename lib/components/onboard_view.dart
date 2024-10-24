import 'package:farmer_eats/screens/loginoperation_screens/login_screen.dart';
import 'package:farmer_eats/screens/registeroperation_screen/register_screen.dart';
import 'package:flutter/material.dart';


class OnboardView extends StatelessWidget {
   OnboardView({super.key,
    required this.title,
     required this.description,
     required this.pageNo,
     required this.image,
  });

  String title;
  String description;
  var pageNo;
  var image;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pageNo==0?Colors.green:pageNo==1?Colors.red:Colors.yellow,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image(image: AssetImage(image),
          fit: BoxFit.cover,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height/2),
          Container(
            height: MediaQuery.of(context).size.height/2.1,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(60),topRight: Radius.circular(60))
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(title,style: const TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w400,
                  ),),
                  Text(description,
                  textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black,
                        ),
                        height: 10,
                        width: pageNo==0?20:10,
                      ),
                      const SizedBox(
                        width: 2,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black,
                        ),
                        height: 10,
                        width: pageNo==1?20:10,
                      ),
                      const SizedBox(
                        width: 2,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black,
                        ),
                        height: 10,
                        width:  pageNo==2?20:10,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor:  pageNo==0?Colors.green:pageNo==1?Colors.red:Colors.yellow
                          ),
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterScreen()));
                          }, child: const Text("Join the Movement!",style: TextStyle(
                          color: Colors.white
                      ),)),
                       InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>  LoginScreen()));
                        },
                        child: const Text("Login",style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 20
                        ),),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
