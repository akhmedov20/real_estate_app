import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:page_transition/page_transition.dart';


import '../../models/housetype/house_type_model.dart';
import '../../ui/account-setup/choose_location/choose_location_screen.dart';
import '../../widgets/buttonWidget/button_widget.dart';
import '../../widgets/search/serach dialog/search_dialog_widget.dart';
import '../../widgets/textField/three_text.dart';
import '../../widgets/textField/two_icon_widget.dart';
import '../../widgets/textStyle/textsyle_widget.dart';
TextEditingController controller777 = TextEditingController();
 List <HouseTypeModel> housetype = [
   HouseTypeModel(width: 102, text: "Hammasi",),
   HouseTypeModel(width: 70, text: "Uy",),
   HouseTypeModel(width: 101, text: "Apartament",),
   HouseTypeModel(width: 70, text: "Villa",),
   HouseTypeModel(width: 98, text: "Kottedj",),
   HouseTypeModel(width: 68, text: "Chek",),
   HouseTypeModel(width: 60, text: "Dacha",),
 ];
bool _push = false;

class SearchDialog {
  static void searchdialog(BuildContext context) {
    showModalBottomSheet(
      isScrollControlled: true,
        context: context,
        builder: (BuildContext context){
          return StatefulBuilder(builder: (ctx,setState){
            return Container(
              width: MediaQuery.of(context).size.width,
              height: 700,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  )
              ),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                SizedBox(height: 30,),
                Row(children: [
                  SizedBox(width: 24,),
                  Text("Filter",style: Appstyle.eighteenbold(Color(0xFF252B5C)),),
                  Spacer(),
                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: 88,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35),
                          color: Color(0xFF1F4C6B)
                      ),
                      child: Center(child: Text("Qaytarish",style: Appstyle.twelve(Colors.white),),),
                    ),
                  ),
                  SizedBox(width: 24,)
                ],),
                SizedBox(height: 49,),
                Padding(
                  padding: const EdgeInsets.only(left: 70),
                  child: Text("Mulk turi",style: Appstyle.twenty(Color(0xFF252B5C)),),
                ),
                const SizedBox(height: 20,),
                SizedBox(width: MediaQuery.of(context).size.width,height: 60,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                      itemCount: housetype.length,
                      itemBuilder: (context,index){
                       return SearchDialogWidget(text: housetype[index].text, width: housetype[index].width);
                      }
                  ),
                ),
                const SizedBox(height: 38,),
                Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Text("Lokatsiya",style: Appstyle.eighteenbold(Color(0xFF252B5C)),),
                ),
                const SizedBox(height: 20,),
                TwoIconsTextField(widht: MediaQuery.of(context).size.width, horizontal: 24,
                    icons: Icons.location_on, rang: Color(0xFFF5F4F8),
                  iconlar: Icons.search, controller: controller777,),
                const SizedBox(height: 15,),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 230,
                  child: Stack(
                    children: [
                      GestureDetector(
                        onTap: (){
                        },
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 24),
                          width: MediaQuery.of(context).size.width,
                          height: 230,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: GoogleMap(
                            zoomControlsEnabled: false,
                            initialCameraPosition: CameraPosition(
                              target: LatLng(40.8153561,72.1313147),
                              zoom: 14.4746,
                            ),),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 136),
                        child: ButtonWidget(text:"Filtrni qo'llash", height: 63, circle: 10, horizontal: 48,
                            width: MediaQuery.of(context).size.width, onTap: (){Navigator.pop(context);},
                            vertical: 0, fontsize: 18,
                            color: Color(0xFF8BC83F), textcolor: Colors.white),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 64,left: 161),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(context, PageTransition(child: ChooseLocationScreen(), type: PageTransitionType.scale,alignment: Alignment.bottomCenter));
                          },
                          child: Container(
                            width: 34,
                            height: 51,
                            child: Image.asset("assets/images/location.png",fit: BoxFit.cover,),
                          ),
                        ),
                      )
                    ],),
                )
              ],),
            );
          });
        }
    );
  }
}