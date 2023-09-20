import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';


import '../../../models/prefer house/select_house_model.dart';
import '../../../widgets/buttonWidget/button_widget.dart';
import '../../../widgets/selectHouse/select_house_widget.dart';
import '../../../widgets/textStyle/textsyle_widget.dart';
import '../../payment/add_payment_screen.dart';
import '../location-fill/location_fill_screen.dart';

class PreferableSelectScreen extends StatefulWidget {
  const PreferableSelectScreen({Key? key}) : super(key: key);

  @override
  State<PreferableSelectScreen> createState() => _PreferableSelectScreenState();
}

class _PreferableSelectScreenState extends State<PreferableSelectScreen> {
  List <SelectModel> house = [
    SelectModel(text: "Apartament", image: "assets/images/apartment.png"),
    SelectModel(text: "Villa", image: "assets/images/villa.png"),
    SelectModel(text: "Uy", image: "assets/images/home.png"),
    SelectModel(text: "Kottedj", image: "assets/images/cottage.png"),
    SelectModel(text: "Dacha", image: "assets/images/house7.png"),
    SelectModel(text: "Chek", image: "assets/images/house8.png"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Stack(children: [
      Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 35,),
          Row(children: [
            GestureDetector(
              onTap: (){Navigator.pop(context);},
              child: Container(
                width: 50,height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white
                ),
                child: Center(child: Icon(CupertinoIcons.left_chevron,color: Colors.black,)),
              ),
            ),
            Spacer(),
            ButtonWidget(text: "skip", height: 38, circle: 22, horizontal: 0,
              width: 86, onTap: (){}, vertical: 0, fontsize: 12, color: Color(0xFFF5F4F8), textcolor: Color(0xFF3A3F67),),
            SizedBox(width: 24,)
          ],),
          SizedBox(height: 51,),
          Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Text("Daxshat ko'chmas",style: Appstyle.twentyfour(Color(0xFF252B5C)),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Text("mulk turini tanlang",style: Appstyle.twentyfourbold(Color(0xFF1F4C6B)),),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Text("Buni keyinroq hisob sozlamalarida tahrirlashingiz mumkin.",style: Appstyle.twelve(Color(0xFF53587A)),),
          ),
          SizedBox(height: 50,),
          Expanded(
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount:2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 1.9/2
                ),
                scrollDirection: Axis.vertical,
                itemCount: house.length,
                itemBuilder:  (context,index){
                  return SelectHouseWidget(image: house[index].image, text: house[index].text);
                }),
          )
      ],),
      Padding(
        padding: const EdgeInsets.only(top: 717),
        child: ButtonWidget(text: "Keyingisi", height: 63, circle: 10, horizontal: 50, width: MediaQuery.of(context).size.width,
            onTap: (){
              Navigator.push(context, PageTransition(child: AddPaymentScreen(), type: PageTransitionType.fade));
            }, vertical: 0, fontsize: 16, color: Color(0xFF8BC83F), textcolor: Colors.white),
      )
    ],),
    );
  }
}
