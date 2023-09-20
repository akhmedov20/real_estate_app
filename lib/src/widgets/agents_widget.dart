import 'package:flutter/material.dart';

class AgentsWidget extends StatelessWidget {
  final String image;
  final String name;
  const AgentsWidget({super.key, required this.image, required this.name});

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15)),
      width: 96,
      height: 76,
      child: Column(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50)
            ),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(image,fit: BoxFit.cover,)),
          ),
          Text(name),
        ],
      ),
    );
  }
}
