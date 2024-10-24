import 'package:farmer_eats/components/basic_template_%20of_screens.dart';
import 'package:flutter/material.dart';
import 'register_screen_three.dart';

class RegisterScreenTwo extends StatelessWidget {
  RegisterScreenTwo({super.key});

  var businessName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Template(message: "sign up 2 of 4", title: "Form Info",childWidget: Column(
        children: [
          TextField(
            decoration: InputDecoration(
                prefixIcon: const Icon(Icons.account_circle_outlined) ,
                hintText: "Business Name",
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
                prefixIcon: const Icon(Icons.alternate_email) ,
                hintText: "company email address",
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
                prefixIcon: const Icon(Icons.place) ,
                hintText: "country",
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
                prefixIcon: const Icon(Icons.location_city) ,
                hintText: "city",
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
          SizedBox(height: MediaQuery.of(context).size.height/3),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              IconButton(onPressed: (){
                Navigator.pop(context);
              }, icon: Icon(Icons.arrow_back,size: 30,)),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(213, 113, 91, 1)
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> BusinessHoursPage()));
                  }, child: const Text("Next",style: TextStyle(
                color: Colors.white,
              ),)),
            ],
          ),
        ],
      ))
    );
  }
}
