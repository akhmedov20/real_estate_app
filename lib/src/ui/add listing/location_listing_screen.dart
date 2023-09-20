import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:page_transition/page_transition.dart';

import '../../utils/utils.dart';
import '../../widgets/buttonWidget/button_widget.dart';
import '../../widgets/round container/round_icon.dart';
import '../../widgets/textStyle/textsyle_widget.dart';
import '../detail/detail map/detail_map_screen.dart';
import 'add_photo_listing_screen.dart';

class LocationListingScreen extends StatelessWidget {
  const LocationListingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = Utils.getHeight(context);
    double w = Utils.getWidth(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: SvgContainer(width: 50 * w, height: 50 * h, round: 50, color: Color(0xFFF5F4F8), icon: "assets/icons/left.svg", onTap: () {
          Navigator.pop(context);
        },),
        title: Text("Ro'yxat qo'shish",style: Appstyle.fifteen(Color(0xFF252B5C)),),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 65 * h,),
          Padding(
            padding: EdgeInsets.only(left: 24 * w),
            child: Text("Lokatsiya qayerda ?",style: Appstyle.twentyfourbold(Color(0xff252B5C)),),
          ),
          SizedBox(height: 35 * h,),
          Row(
            children: [
              SizedBox(width: 24 * w,),
              SvgContainer(width: 50 * w, height: 50 * h, round: 50, color: Colors.white, icon: "assets/icons/location.svg", onTap: (){
              }),
              SizedBox(width: 15 * w,),
              SizedBox(
                width: 262 * w,
                child: Text("Jl. Cisangkuy, Citarum, Kec. Bandung Wetan, Kota Bandung, Jawa Barat 40115",style: Appstyle.twelve(Color(0xff53587A)),),
              )
            ],
          ),
          SizedBox(height: 25 * h,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 24 * w),
            width: MediaQuery.of(context).size.width,
            height: 359 * h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25)
            ),
            child: Column(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 306 * h,
                  child: GoogleMap(
                      zoomControlsEnabled: false,
                      initialCameraPosition: CameraPosition(
                        target: LatLng(40.8153561,72.1313147),
                        zoom: 14.4746,
                      )
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, PageTransition(child: DetailMapScreen(), type: PageTransitionType.scale,alignment: Alignment.bottomCenter));
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50 * h,
                    color: Colors.transparent,
                    child: Center(child: Text("Hammasini xaritada ko‘rish",style: Appstyle.twelve(Color(0xFF252B5C)),),),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 111 * h,),
          Row(
            children: [
              SizedBox(width: 46 * w,),
              SvgContainer(width: 54 * w, height: 54 * h, round: 54, color: Colors.white,
                  icon: "assets/icons/leftarrow.svg", onTap: (){
                    Navigator.pop(context);
                  }),
              SizedBox(width: 16 * w,),
              ButtonWidget(text: "Keyingisi", height: 54 * h, circle: 10, horizontal: 0, width: 190 * w,
                  onTap: (){
                    Navigator.push(context, PageTransition(child: AddPhotoListingScreen(), type: PageTransitionType.scale,alignment: Alignment.bottomCenter));
                  }, vertical: 0, fontsize: 16, color: Color(0xff8BC83F), textcolor: Colors.white)
            ],
          ),
          SizedBox(height: 36 * h,)
        ],
      ),
    );
  }
}
