import 'package:flutter/material.dart';
class TextFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  final Icon icon;
  const TextFieldWidget({super.key, required this.controller, required this.hint, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 70,
      decoration: BoxDecoration(
          color: Color(
            0xFFF5F4F8,
          ),
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: controller.text.length>=1?null:icon,
          ),
          Expanded(child: TextField(
            controller: controller,
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hint,
                hintStyle: TextStyle(fontSize: 15,color: Color(0xFFA1A5C1))
            ),
          )),
          controller.text.length>1?Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: icon
          ):SizedBox()

        ],
      ),);
  }
}
