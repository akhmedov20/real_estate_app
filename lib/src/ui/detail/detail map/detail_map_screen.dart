import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../widgets/home facility/facility_widget.dart';
import '../../../widgets/textStyle/textsyle_widget.dart';

class DetailMapScreen extends StatefulWidget {
  const DetailMapScreen({Key? key}) : super(key: key);

  @override
  State<DetailMapScreen> createState() => _DetailMapScreenState();
}

class _DetailMapScreenState extends State<DetailMapScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
              zoomControlsEnabled: false,
              initialCameraPosition: CameraPosition(
                target: LatLng(40.8153561,72.1313147),
                zoom: 14.4746,
              )),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30,),
              GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Container(
                  margin: EdgeInsets.only(left: 24),
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color:Colors.white,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 0.3
                        )
                      ]
                  ),
                  child: Center(child: Icon(CupertinoIcons.left_chevron,color: Colors.grey,size: 18,),),
                ),
              ),
              SizedBox(height: 20,),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 55,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    FacilityWidget(icon: "", text: "Bolnitsa", number: 2),
                    FacilityWidget(icon: "", text: "Zapravka", number: 2),
                    FacilityWidget(icon: "", text: "Maktab", number: 2)
                  ],
                ),
              ),
              Spacer(),
              Row(children: [
                Container(
                  margin: EdgeInsets.only(left: 16,),
                  width: 222,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25)
                  ),
                  child: ExpansionTile(
                    title: Text("Jakarta, Indonesia",style: Appstyle.ten(Color(0xFF252B5C)),),
                    leading: Icon(Icons.location_on,color: Color(0xFF1F4C6B),),
                    children: [
                      Text("Andijon, O'zbekiston",style: Appstyle.ten(Color(0xFF252B5C))),
                      SizedBox(height: 5,),
                      Text("Toshkent, O'zbekiston",style: Appstyle.ten(Color(0xFF252B5C))),
                      SizedBox(height: 5,),
                      Text("Farg'ona, O'zbekiston",style: Appstyle.ten(Color(0xFF252B5C))),
                    ],
                  ),
                ),
                Spacer(),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.black
                  ),
                  child: Center(child: SvgPicture.asset("assets/icons/centerlocation.svg"),),
                ),
                SizedBox(width: 24,)
              ],),
              SizedBox(height: 15,),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 24),
                width: MediaQuery.of(context).size.width,
                height: 133,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 15,),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text("Joylashuv tafsilotlari",style: Appstyle.eighteenbold(Color(0xFF252B5C)),),
                    ),
                    SizedBox(height: 15,),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 16),
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Color(0xFFECEDF3)
                          ),
                          child: Center(child: Icon(Icons.location_on_outlined,color: Colors.black,),),
                        ),
                        Spacer(),
                        SizedBox(
                          width: 232,
                          height: 40,
                          child: Text("St. Cikoko Timur, Kec. Pancoran, Jakarta Selatan, Indonesia 12770",
                            style: Appstyle.twelve(Color(0xFF53587A)),),
                        ),
                        SizedBox(width: 25,)
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 50,)
            ],
          )
        ],
      ),
    );
  }
}
