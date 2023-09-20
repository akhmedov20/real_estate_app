import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widgets/buttonWidget/button_widget.dart';
import '../../widgets/textStyle/textsyle_widget.dart';

class LocationDialog {
  static void locationdialog (BuildContext context) {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (BuildContext context) {
          return Container(
            width: MediaQuery.of(context).size.width,
            height: 400,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50),
              )
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 70,),
                Row(
                  children: [
                    SizedBox(width: 24,),
                    Text("Lokatsiya masofasi",style: Appstyle.twenty(Color(0xFf252B5C)),),
                    Spacer(),
                    ButtonWidget(text: "Tahrirlash", height: 50, circle: 20, horizontal: 0, width: 90,
                        onTap: (){Navigator.pop(context);}, vertical: 0, fontsize: 11, color: Color(0xFF8BC83F),
                        textcolor: Colors.white),
                    SizedBox(width: 24,)
                  ],
                ),
                SizedBox(height: 20,),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 24),
                  width: MediaQuery.of(context).size.width,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 1
                      )
                    ],
                    borderRadius: BorderRadius.circular(25)
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 24,),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Color(0xFFF5F4F8)
                        ),
                        child: Center(child: Icon(Icons.location_on,color: Colors.black,size: 18,),),
                      ),
                      Spacer(),
                      SizedBox(
                        width: 212,
                        height: 40,
                        child: Text.rich(
                          TextSpan(
                            text: "2.5 km  ",style: Appstyle.twelvebold(Color(0xFF252B5C)),
                            children: [
                              TextSpan(text: "Srengseng dan, Kembangan, West Jakarta City, Jakarta 11630",
                              style: Appstyle.twelve(Color(0xFF53587A)))
                            ]
                          )
                        )
                      ),
                      SizedBox(width: 30,)
                    ],
                  ),
                ),
                SizedBox(height: 15,),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 24),
                  width: MediaQuery.of(context).size.width,
                  height: 80,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 1
                        )
                      ],
                      borderRadius: BorderRadius.circular(25)
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 24,),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Color(0xFFF5F4F8)
                        ),
                        child: Center(child: Icon(Icons.location_on,color: Colors.black,size: 18,),),
                      ),
                      Spacer(),
                      SizedBox(
                          width: 212,
                          height: 40,
                          child: Text.rich(
                              TextSpan(
                                  text: "2.5 km  ",style: Appstyle.twelvebold(Color(0xFF252B5C)),
                                  children: [
                                    TextSpan(text: "Srengseng dan, Kembangan, West Jakarta City, Jakarta 11630",
                                        style: Appstyle.twelve(Color(0xFF53587A)))
                                  ]
                              )
                          )
                      ),
                      SizedBox(width: 30,)
                    ],
                  ),
                ),
              ],
            ),
          );
        }
    );
  }
}