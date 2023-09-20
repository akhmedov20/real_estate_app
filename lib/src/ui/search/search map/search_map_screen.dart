import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../dialogs/centr-dialog/search_dialog.dart';
import '../../../widgets/search/search_widget.dart';
import '../../../widgets/textStyle/textsyle_widget.dart';


class SearchMapScreen extends StatefulWidget {
  const SearchMapScreen({Key? key}) : super(key: key);

  @override
  State<SearchMapScreen> createState() => _SearchMapScreenState();
}

class _SearchMapScreenState extends State<SearchMapScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        GoogleMap(
          zoomControlsEnabled: false,
            initialCameraPosition: CameraPosition(
              target: LatLng(40.8153561,72.1313147),
              zoom: 14.4746,
        )),
        Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
          SizedBox(height: 30,),
          Row(children: [
            Container(
              margin: EdgeInsets.only(left: 16),
              width: 193,
             decoration: BoxDecoration(
               color: Colors.white,
               borderRadius: BorderRadius.circular(20),
               boxShadow: [
                 BoxShadow(
                   blurRadius: 0.3
                 )
               ]
             ),
              child: ExpansionTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
                ),
                backgroundColor: Colors.white,
                leading: Icon(Icons.location_on,color: Color(0xFF1F4C6B)),
                title: Text("Jakarta, Indonesia",style: Appstyle.twelve(Color(0xFF252B5C)),),
                children: [
                  Text("Bali, Indonesia",style: Appstyle.twelve(Color(0xFF252B5C))),
                  Text("Andijon, O'zbekistan",style: Appstyle.twelve(Color(0xFF252B5C))),
                  Text("Toshkent, O'zbekistan",style: Appstyle.twelve(Color(0xFF252B5C))),
                ],
              ),
            ),
            Spacer(),
            GestureDetector(
              onTap: (){},
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 0.3
                      )
                    ],
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white
                ),
                child: Center(child: SvgPicture.asset("assets/icons/setting.svg",color: Colors.black,),),
              ),
            ),
            SizedBox(width: 24,)
          ],),
          SizedBox(height: 20,),
          SearchWidget(width: MediaQuery.of(context).size.width, height: 70, hintText:"Uy, kvartira va boshqalarni qidirish",
              left: 24, right: 24, height2: 35, onTap: (){
              SearchHistoryDialog.searchhistorydialog(context);
            },),
          Spacer(),
          Container(
            width: 167,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Color(0xFF234F68)
            ),
            child: Row(
              children: [
                SizedBox(width: 10,),
                Icon(Icons.error,color: Color(0xFF8BC83F),size: 35,),
                SizedBox(width: 5,),
                Text("Yaqin atrofda",style: Appstyle.fourteen(Colors.white),)
              ],
            ),
          ),
          SizedBox(height: 15,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            width: MediaQuery.of(context).size.width,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Color(0xFF1F4C6B)
            ),
            child: Center(child: Text("Sizga yaqin bo'lgan ko'chmas mulkni topib bo'lmadi",style: Appstyle.fourteen(Colors.white),),),
          ),
          SizedBox(height: 20,)

        ],),
      ],)
    );
  }
}
