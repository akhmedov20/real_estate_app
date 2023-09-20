import 'package:flutter/material.dart';

class InformationWidget extends StatelessWidget {
  final int number;
  final String name;
  const InformationWidget({super.key, required this.number, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 70,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Color(0xffECEDF3))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(number.toString()),
          SizedBox(
            height: 5,
          ),
          Text(
            name,
            style:
            TextStyle(fontSize: 10, color: Color(0xFF53587A)),
          )
        ],
      ),
    );
  }
}
