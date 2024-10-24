import 'package:flutter/material.dart';

class Template extends StatelessWidget {
   Template({super.key,
    required this.childWidget,
    required this.message,
    required this.title
  });

  var childWidget;
  var title;
  var message;

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
                  height: MediaQuery.of(context).size.height/20,
                ),
                Text(message,style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey
                ),),
                Text(title,style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width/10,
                    fontWeight: FontWeight.bold
                ),),
                SizedBox(
                  height: MediaQuery.of(context).size.height/20,
                ),
                childWidget
              ],
            ),
          ),
        ),
      ),
    );
  }
}
