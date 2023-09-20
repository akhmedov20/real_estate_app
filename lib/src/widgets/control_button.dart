import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ControlButton extends StatefulWidget {
  final String title;
  const ControlButton({super.key, required this.title});

  @override
  State<ControlButton> createState() => _ControlButtonState();
}
int number = 0;



class _ControlButtonState extends State<ControlButton> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 70,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Color(0xFFF5F4F8)
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(widget.title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: Color(0xFF252B5C)),),
              Spacer(),
              GestureDetector(
                onTap: (){
                  setState(() {
                    number++;

                  });
                },
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Color(0xFFA1A5C1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(child: Icon(Icons.add,color: Colors.white,),),
                ),
              ),
              SizedBox(width: 15,),
              Text(number.toString(),style:TextStyle(fontSize: 16,color: Color(0xFF252B5C),fontWeight: FontWeight.bold)),
              SizedBox(width: 15,),
              GestureDetector(
                onTap: (){
                  setState(() {
                    number>=1?number--:null;

                  });
                },
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Color(0xFFA1A5C1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(child: Icon(CupertinoIcons.minus,color: Colors.white,),),
                ),
              ),

            ],
          ),
        ),

      ),
    );
  }
}
