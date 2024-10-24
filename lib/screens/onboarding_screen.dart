import 'package:farmer_eats/components/onboard_view.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
   OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  var pageNo = 0;
  List<Map<String, String>> pages = [
    {
      'title': 'Quality',
      'description':
      'Sell your farm fresh products directly to consumers, cutting out the middleman and reducing emissions.',
      'color':'Colors.green',
      'images': 'images/Group.png'
    },
    {
      'title': 'Convinent',
      'description':
      'Our team of delivery drivers will make sure your orders are picked up on time and promptly delivered to your customers.',
      'color':'Colors.red',
      'images':'images/Group2.png'
    },
    {
      'title': 'Local',
      'description':
      'We love the earth and know you do too! Join us in reducing our local carbon footprint one order at a time. ',
      'color':'Colors.yellow',
      'images':'images/Group3.png'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      onPageChanged: (value){
        setState(() {
          pageNo = value;
        });
      },
        itemCount: pages.length,
        itemBuilder: (context, index) {
          var data = pages[index];
      return OnboardView(title: data['title']!,
        description: data['description']!,
        pageNo: index,
        image: data['images'],
        );
    });
  }
}
