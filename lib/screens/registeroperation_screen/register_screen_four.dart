import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';


class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  var imageName;
  Future pickImage() async{
    final ImagePicker picker = ImagePicker();
    final response = await picker.pickImage(source: ImageSource.gallery);
    imageName = response?.name;
    setState(() {

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("FarmerEats",style:TextStyle(
                fontSize: 20,
              ),),
              SizedBox(
                height: MediaQuery.of(context).size.height/20,
              ),
              Text("Signup 4 of 4",style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey
              ),),
              Text("Verification",style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width/10,
                  fontWeight: FontWeight.bold
              ),),
              SizedBox(
                height: MediaQuery.of(context).size.height/20,
              ),
              Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Attach Proof of Registeration",style: TextStyle(
                    fontSize: 15
                  ),),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(213, 113, 91, 1),
                      shape: CircleBorder()
                    ),
                      onPressed: (){
                      pickImage();
                      }, child: Padding(padding: EdgeInsets.all(10),
                      child:Icon(Icons.camera_alt_outlined,color: Colors.white,size: 35,)))
                ],
              ),
             SizedBox(
               height: 20,
             ),
             imageName!=null?
             Container(
               width: MediaQuery.of(context).size.width,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(10),
               color: Colors.grey.shade300,
             ),
             child: Padding(
               padding: const EdgeInsets.all(8.0),
               child: Text(imageName,style: TextStyle(
                            decoration: TextDecoration.underline
                            ),),
             )):SizedBox(),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: (){
                    Navigator.pop(context);
                  }, icon: Icon(Icons.arrow_back,size: 30,)),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(213, 113, 91, 1),
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> VerificationScreen()));
                    },
                    child: const Text(
                      "Submit",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
    );
  }
}
