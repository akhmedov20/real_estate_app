import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:page_transition/page_transition.dart';

import '../../../widgets/buttonWidget/button_widget.dart';
import '../../../widgets/search/search_widget.dart';
import '../../../widgets/textStyle/textsyle_widget.dart';
import '../location-fill/location_fill_screen.dart';

class ChooseLocationScreen extends StatefulWidget {
  const ChooseLocationScreen({Key? key}) : super(key: key);

  @override
  State<ChooseLocationScreen> createState() => _ChooseLocationScreenState();
}


class _ChooseLocationScreenState extends State<ChooseLocationScreen> {
  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(40.8153561,72.1313147),
    zoom: 14.4746,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
    body: Stack(
      children: [
        GoogleMap(initialCameraPosition: _kGooglePlex,zoomControlsEnabled: false,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40,),
            GestureDetector(
              onTap: (){Navigator.pop(context);},
              child: Container(
                margin: EdgeInsets.only(left: 24),
                width: 50,height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white
                ),
                child: Center(child: Icon(CupertinoIcons.left_chevron,color: Colors.black,)),
              ),
            ),
            SizedBox(height: 15,),
            SearchWidget(width: MediaQuery.of(context).size.width, height: 70, hintText: "Lokatsiyani toping",
              left: 24, right: 24, height2: 36, onTap: (){},),
            SizedBox(height: 108,),
            Padding(
              padding: const EdgeInsets.only(left: 91),
              child: SizedBox(width: 34,height: 51,child: Image.asset("assets/images/location.png",fit: BoxFit.cover,),),
            ),
            SizedBox(height: 182,),
            Container(
              margin: EdgeInsets.only(left: 301),
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),color: Color(0xFF1F4C6B)
              ),
              child: Center(child: SvgPicture.asset("assets/icons/centerlocation.svg"),),
            ),
            Spacer(),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              width: MediaQuery.of(context).size.width,
              height: 133,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text("Lokatsiya detallari",style: Appstyle.eighteen(Color(0xFF252B5C)),),
                ),
                  SizedBox(height: 15,),
                  Row(children: [
                    SizedBox(width: 15,),
                    Container(
                      width: 50,height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color(0xFFECEDF3)
                      ),
                      child: Center(child: Icon(Icons.location_on_outlined,color: Color(0xFF53587A),),),
                    ),
                    SizedBox(width: 15,),
                    SizedBox(width: 232,
                    child: Text("Srengseng, Kembangan, West Jakarta City, Jakarta 11630",style: Appstyle.twelve(Color(0xFF53587A)),),),
                  ],)
              ],),
            ),
            SizedBox(height: 20,),
            ButtonWidget(text: "Lokatsiyangizni tanlang", height:63, circle: 10, horizontal: 46,
                width: MediaQuery.of(context).size.width, onTap: (){
              Navigator.push(context, PageTransition(child: LocationFillScreen(), type: PageTransitionType.fade));
                }, vertical: 0, fontsize: 16, color: Color(0xFF8BC83F),
                textcolor: Colors.white),
            SizedBox(height: 21,)
          ],
        )
      ],
    )
    );
  }
}
