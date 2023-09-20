import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widgets/textStyle/textsyle_widget.dart';

class SearchHistoryDialog{
  static void searchhistorydialog (BuildContext context){
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return SizedBox(
            width: 340,
            height: 241,
            child: AlertDialog(
              backgroundColor: Colors.transparent,
              content: Center(
                child: Container(
                  width: 340,
                  height: 241,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25)
                  ),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        SizedBox(width: 16,),
                        Text("Oxirgi qidiruv",style: Appstyle.twenty(Color(0xFF252B5C)),),
                        Spacer(),
                        Text("tozalash",style: Appstyle.eleven(Color(0xFF252B5C)),),
                        SizedBox(width: 16,)
                      ],),
                    SizedBox(height: 20,),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: ListTile(
                        trailing: Icon(Icons.close,size: 20,color: Colors.grey,),
                        title: Text("Zamonaviy Uy",style: Appstyle.fourteen(Color(0xFF53587A)),),
                        leading: Icon(CupertinoIcons.clock_solid,color: Colors.grey,),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: ListTile(
                        trailing: Icon(Icons.close,size: 20,color: Colors.grey,),
                        title: Text("Bali",style: Appstyle.fourteen(Color(0xFF53587A)),),
                        leading: Icon(CupertinoIcons.clock_solid,color: Colors.grey,),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: ListTile(
                        trailing: Icon(CupertinoIcons.clear,color: Colors.grey,),
                        title: Text("Zamonaviy Uy",style: Appstyle.fourteen(Color(0xFF53587A)),),
                        leading: Image.asset("assets/images/housesmall.png"),
                      ),
                    )
                  ],),
                ),
              ),
            ),
          );
        }
    );
  }
}