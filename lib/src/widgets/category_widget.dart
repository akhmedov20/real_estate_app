import 'package:flutter/cupertino.dart';

class CategoryWidget extends StatelessWidget {
  final String data;
  const CategoryWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 65,
      height: 45,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Color(0xff234F68)),
      child: Center(child: Text(data,style: TextStyle(fontSize: 16),)),
    );
  }
}
