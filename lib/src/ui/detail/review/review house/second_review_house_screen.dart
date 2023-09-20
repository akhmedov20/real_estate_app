import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


import '../../../../widgets/rent/rent 3/rent3_widget.dart';
import '../../../../widgets/textStyle/textsyle_widget.dart';

class SecondReviewHouseScreen extends StatefulWidget {
  const SecondReviewHouseScreen({Key? key}) : super(key: key);

  @override
  State<SecondReviewHouseScreen> createState() => _SecondReviewHouseScreenState();
}

class _SecondReviewHouseScreenState extends State<SecondReviewHouseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Image.asset("assets/images/hdhouse6.jpeg",fit: BoxFit.cover,)),
          Center(
            child: Row(
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
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
                  onTap: (){},
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
            left: 81,top: 350,
            child: Image.asset("assets/images/object.png")
          ),
          Positioned(
            top: 350,
            left: 131,
            child: Container(
              width: 121,
              height: 54,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  SizedBox(height: 8,),
                  Text("Jati ovqat stoli",style: Appstyle.twelvebold(Color(0xFF252B5C)),),
                  SizedBox(height: 5,),
                  Text("2 kishilik sig'im",style: Appstyle.ten2(Color(0xFF252B5C)),)
                ],
              ),
            ),
          ),
          Positioned(
            left: 24,
            bottom: 220,
            child: Container(
              width: 122,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: Color.fromRGBO(31, 76, 107, 0.69)
              ),
              child: Center(child: Text('Mehmonhona',style: Appstyle.twelvebold(Colors.white),),),
            ),
          ),
          Spacer(),
          Positioned(
            bottom: 220,
              right: 24,
              child: ElevatedButton(onPressed: (){}, child: Icon(Icons.chat,color: Colors.black,size: 22,))),
          Positioned(
            bottom: 20,
            left: 10,
            child: const ThirdRentWidget(image: "assets/images/house27.png", house: "Uy", housename: "Sky Dandelions Apartment",
                rating: "4.5", location: "Jakarta, Indonesia", price: ""),
          )
        ],
      ),

    );
  }
}
