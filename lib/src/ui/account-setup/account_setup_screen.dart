import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../../widgets/buttonWidget/button_widget.dart';
import '../../widgets/textStyle/textsyle_widget.dart';
import 'choose_location/choose_location_screen.dart';



class AccountSetupScreen extends StatefulWidget {
  const AccountSetupScreen({Key? key}) : super(key: key);

  @override
  State<AccountSetupScreen> createState() => _AccountSetupScreenState();
}

class _AccountSetupScreenState extends State<AccountSetupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
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
               width: 86, onTap: (){
               Navigator.push(context, PageTransition(type: PageTransitionType.fade,child: ChooseLocationScreen()));
             }, vertical: 0, fontsize: 12, color: Color(0xFFF5F4F8), textcolor: Color(0xFF3A3F67),),
           SizedBox(width: 24,)
         ],),
         SizedBox(height: 51,),
         Row(children: [
           SizedBox(width: 24,),
           Text("Lokatsiyangizni",style: Appstyle.twentyfourbold(Color(0xFF1F4C6B)),),
           SizedBox(width: 10,),
           Text("qo'shing",style: Appstyle.twentyfour(Color(0xFF1F4C6B)),),
         ],),
         SizedBox(height: 20,),
         Padding(
           padding: const EdgeInsets.only(left: 24),
           child: Text("Buni keyinroq hisob sozlamalarida tahrirlashingiz mumkin.",style: Appstyle.twelve(Color(0xFF53587A)),),
         ),
         SizedBox(height: 33,),
         Container(
           margin: EdgeInsets.symmetric(horizontal: 24,),
           width: MediaQuery.of(context).size.width,
           height: 300,
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(10),
           ),
           child: Stack(children: [
             Image.asset("assets/images/map.png",fit: BoxFit.cover,),
             GestureDetector(
                 onTap: (){},
                 child: Container(
                   margin: EdgeInsets.only(top: 250,right: 15),
                   width: MediaQuery.of(context).size.width,
                   height: 50,
                   decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(10),
                       color: Color.fromRGBO(255, 255, 255, 0.50)
                   ),
                   child: Center(child: Text("xaritada tanlang"),),
               ),
             ),

           ],)
         ),
         SizedBox(height: 32,),
         Container(
           margin: EdgeInsets.symmetric(horizontal: 15),
           width: MediaQuery.of(context).size.width,
           height: 70,
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(10),
             color: Color(0xFFF5F4F8)
           ),
           child: Row(children: [
             SizedBox(width: 16,),
             Icon(Icons.location_on,color: Color(0xFF1F4C6B),),
             SizedBox(width: 10,),
             Text("Lokatsiya detallari",style: Appstyle.twelve(Color(0xFFA1A5C1)),),
             Spacer(),
             IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.right_chevron,color: Color(0xFFA1A5C1),))
           ],),
         ),
         SizedBox(height: 43,),
         Row(mainAxisAlignment: MainAxisAlignment.center,children: [
           Container(
             width: 20,
             height: 2,
             color: Color(0xFF252B5C),
           ),
           Container(
             width: 80,
             height: 1,
             color: Color(0xFFA1A5C1),
           )
         ],),
         SizedBox(height: 15,),
         Center(
           child: ButtonWidget(text: "Keyingisi", height:63, circle: 10, horizontal: 0,
               width: 278, onTap: (){
               Navigator.push(context, PageTransition(type: PageTransitionType.fade,child: ChooseLocationScreen()));
               }, vertical: 0, fontsize: 16, color: Color(0xFf8BC83F), textcolor: Colors.white),
         )
       ],
     ),
    );
  }
}
