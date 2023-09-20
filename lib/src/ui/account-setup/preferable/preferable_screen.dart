import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:house/src/ui/account-setup/preferable/preferable_select_screen.dart';
import 'package:page_transition/page_transition.dart';


import '../../../widgets/buttonWidget/button_widget.dart';
import '../../../widgets/textStyle/textsyle_widget.dart';

class PreferableScreen extends StatefulWidget {
  const PreferableScreen({Key? key}) : super(key: key);

  @override
  State<PreferableScreen> createState() => _PreferableScreenState();
}

class _PreferableScreenState extends State<PreferableScreen> {
  List<String> images = [
    "assets/images/house1.png",
    "assets/images/house2.png",
    "assets/images/house3.png",
    "assets/images/house4.png",
    "assets/images/house5.png",
    "assets/images/house6.png",
    "assets/images/house7.png",
    "assets/images/house8.png",
    "assets/images/house9.png",
    "assets/images/house10.png",
    "assets/images/hdhouse1.jpg",
    "assets/images/hdhouse2.jpg",
    "assets/images/hdhouse3.jpg",
    "assets/images/hdhouse4.jpg",
    "assets/images/hdhouse6.jpeg",
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
                width: 86, onTap: (){
                  Navigator.push(context, PageTransition(type: PageTransitionType.fade,child: PreferableSelectScreen()));
                }, vertical: 0, fontsize: 12, color: Color(0xFFF5F4F8), textcolor: Color(0xFF3A3F67),),
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
            Expanded(
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5
                  ),
                  itemCount: images.length,
                  itemBuilder: (context,index){
                    return GestureDetector(onTap: (){
                      _showSecondPage(context, images[index]);
                    },
                        child: Image.asset(images[index],fit: BoxFit.cover,));
                  }
              ),
            )
          ],),
        Padding(
          padding: const EdgeInsets.only(top: 717),
          child: ButtonWidget(text: "Ko'proq ko'rsatish", height: 63, circle: 10, horizontal: 50, width: MediaQuery.of(context).size.width,
              onTap: (){
                Navigator.push(context, PageTransition(type: PageTransitionType.fade,child: PreferableSelectScreen()));
              }, vertical: 0, fontsize: 16, color: Color(0xFF8BC83F), textcolor: Colors.white),
        )
      ],)
    );
  }
  void _showSecondPage (BuildContext context,String image) {
    Navigator.of(context).push(
      MaterialPageRoute(
          builder: (ctx) =>
        Scaffold(
          appBar: AppBar(
            leading: IconButton(onPressed: (){Navigator.pop(context);},icon: Icon(CupertinoIcons.arrow_left,color: Colors.white,),),
          ),
          body: Center(
            child: Hero(
              tag: 'my-hero-animation-tag',
              child: SizedBox(width: MediaQuery.of(context).size.width,
                  height: 200,
                  child: Image.asset(image,fit: BoxFit.cover,filterQuality: FilterQuality.high,)),
            ),
          ),
        ),
      )
    );
  }
}
