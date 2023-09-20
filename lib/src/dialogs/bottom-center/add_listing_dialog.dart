import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utils/utils.dart';
import '../../widgets/buttonWidget/button_widget.dart';
import '../../widgets/textStyle/textsyle_widget.dart';

class AddListingDialog{
  static void addlistingdialog (BuildContext context){
    double h = Utils.getHeight(context);
    double w = Utils.getWidth(context);
    showModalBottomSheet(context: context, builder: (BuildContext context){
      return Container(
        width: MediaQuery.of(context).size.width,
        height: 454,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
          SizedBox(height: 80,),
          Center(child: Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(70),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 40,
                        color: Colors.lightGreen
                    )
                  ]
              ),
              child: Center(child: SvgPicture.asset("assets/icons/true.svg"))
          ),),
          SizedBox(height: 40,),
          Center(child: Text("Sizning ro'yxatingiz",style: Appstyle.twentyfourbold(Color(0xFF252B5C)),),),
          Center(child: Text("hozir nashr etilgan",style: Appstyle.twentyfour(Color(0xFF252B5C)),),),
          SizedBox(height: 20,),
          Center(child: Text("Lorem ipsum dolor sit amet, consectetur.",style: Appstyle.twelve(Color(0xFF252B5C)),),),
          SizedBox(height: 35,),
          Row(
            children: [
              SizedBox(width: 24 * w,),
              ButtonWidget(text: "Yana qo'sh", height: 70 * h, circle: 10, horizontal: 0, width: 158, onTap: (){
                Navigator.pop(context);
              },
                  vertical: 0, fontsize: 16, color: Colors.white, textcolor: Color(0xff252B5C)),
              Spacer(),
              ButtonWidget(text: "Yop", height: 70 * h, circle: 10, horizontal: 0, width: 158, onTap: (){
                Navigator.pop(context);
              },
                  vertical: 0, fontsize: 16, color: Color(0xFF8BC83F), textcolor: Colors.white),
              SizedBox(width: 24 * w,)
            ],
          ),
          SizedBox(height: 20,)
        ],),
      );
    });
  }
}