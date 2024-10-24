import 'package:farmer_eats/screens/registeroperation_screen/register_screen_four.dart';
import 'package:flutter/material.dart';

import '../../constants/style.dart';

class BusinessHoursPage extends StatefulWidget {
  const BusinessHoursPage({super.key});

  @override
  State<BusinessHoursPage> createState() => _BusinessHoursPageState();
}

class _BusinessHoursPageState extends State<BusinessHoursPage> {
  var daysOfWeek = ['M', 'T', 'W', 'Thu', 'F', 'S', 'Su'];
  var selected = 0; // Index for currently selected day
  var gridItems = [
    "8:00-10:00am",
    "10:00-1:00pm",
    "1:00-4:00pm",
    "4:00-7:00pm",
    "7:00-10:00pm"
  ];
  // List of selected time indices for each day
  List<List<int>> selectedTimes = List.generate(7, (index) => []); // Create a list of 7 empty lists

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "FarmerEats",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 20,
            ),
            Text(
              "signup 3 out of 4",
              style: TextStyle(fontSize: 15, color: Colors.grey),
            ),
            Text(
              "Business Hours",
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width / 10,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 20,
            ),
            // Days of the week
            Container(
              height: MediaQuery.of(context).size.height / 12,
              padding: EdgeInsets.symmetric(vertical: 10),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: daysOfWeek.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        selected = index; // Update selected day
                      });
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height / 20,
                      width: MediaQuery.of(context).size.height / 20,
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      padding: EdgeInsets.all(8),
                      decoration: selected == index
                          ? selectedDecoration
                          : selectedTimes[index].isEmpty
                          ? leftDecoration
                          : doneDecoration,
                      child: Center(
                        child: Text(
                          textAlign: TextAlign.center,
                          daysOfWeek[index],
                          style: TextStyle(
                              fontSize: 20,
                              color: selected == index
                                  ? Colors.white
                                  : selectedTimes[index].isEmpty
                                  ? Colors.grey
                                  : Colors.black),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            // Grid for time slots
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 8,
                    childAspectRatio: 1, // Adjust the aspect ratio as needed
                    mainAxisSpacing: 8,
                    mainAxisExtent: 40),
                itemCount: gridItems.length,
                itemBuilder: (context, index) {
                  bool isSelected = selectedTimes[selected].contains(index); // Check if this time is selected
                  return InkWell(
                    onTap: () {
                      setState(() {
                        if (isSelected) {
                          selectedTimes[selected].remove(index); // Remove if already selected
                        } else {
                          selectedTimes[selected].add(index); // Add to selected times
                        }
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: isSelected ? Colors.orangeAccent : Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Text(
                          gridItems[index],
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            // Login and Continue Button at the Bottom
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Row(
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
                      "Continue",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
