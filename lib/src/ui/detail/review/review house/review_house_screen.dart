import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:house/src/ui/detail/review/review%20house/second_review_house_screen.dart';
import 'package:page_transition/page_transition.dart';

import '../../../../widgets/textStyle/textsyle_widget.dart';

class ReviewHouse extends StatefulWidget {
  const ReviewHouse({Key? key}) : super(key: key);

  @override
  State<ReviewHouse> createState() => _ReviewHouseState();
}

class _ReviewHouseState extends State<ReviewHouse> {
  List img = [
    "assets/images/spiderman.jpg",
    "assets/images/hdhouse1.jpg",
    "assets/images/hdhouse6.jpeg",
    "assets/images/hdhouse7.jpeg",
    "assets/images/hdhouse10.jpeg",
  ];
  String selectedIndex = "assets/images/spiderman.jpg";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Image.asset(selectedIndex,fit: BoxFit.cover,)),
          Center(
            child: Row(
              children: [
                GestureDetector(
                  onTap: (){},
                  child: Container(
                    width: 40,
                    height: 83,
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.25),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        )
                    ),
                    child: Center(child: SvgPicture.asset("assets/icons/next1.svg",color: Colors.black,),),
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, PageTransition(child: SecondReviewHouseScreen(),
                        type: PageTransitionType.rotate,alignment: Alignment.bottomRight));
                  },
                  child: Container(
                    width: 40,
                    height: 83,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        )
                    ),
                    child: Center(child: SvgPicture.asset("assets/icons/next.svg"),),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            top: 30,
            child: GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Container(
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
          ),
          Positioned(
            bottom: 20,
            right: 24,
            child: SizedBox(
              width: 60,
              height: 210,
              child: ListView.builder(
                itemCount: img.length,
                  itemBuilder: (context,index) {
                  return GestureDetector(
                    onTap: (){
                      setState(() {
                        selectedIndex = img[index];
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 5),
                      width: 58,
                      height: 63,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        border: Border.all(width: 2,color: Colors.white)
                      ),
                      child: ClipRRect(borderRadius: BorderRadius.circular(18),
                          child: Image.asset(img[index],fit: BoxFit.cover,)),
                    ),
                  );
                  }
              ),
            ),
          ),
          Positioned(
            bottom: 35,
            left: 24,
            child: Container(
              width: 162,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.white
              ),
              child: Row(children: [
                SizedBox(width: 5,),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(width: 1,color: Colors.white)
                  ),
                  child: Image.asset("assets/images/opa.png",fit: BoxFit.cover,),
                ),
                SizedBox(width: 10,),
                Container(
                  child: Column(
                    children: [
                      SizedBox(height: 15,),
                      Text("Samuel Ella",style: Appstyle.twelvebold(Color(0xFF252B5C)),),
                      SizedBox(height: 5,),
                      Row(
                        children: [
                          Icon(Icons.star,size: 10,color: Colors.amber,),
                          Icon(Icons.star,size: 10,color: Colors.amber,),
                          Icon(Icons.star,size: 10,color: Colors.amber,),
                          Icon(Icons.star,size: 10,color: Colors.amber,),
                          Icon(Icons.star_half,size: 10,color: Colors.amber,),
                        ],
                      )
                    ],
                  ),
                )
              ],),
            ),
          )
        ],
      ),
    );
  }
}
