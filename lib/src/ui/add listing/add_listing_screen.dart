import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:page_transition/page_transition.dart';


import '../../utils/utils.dart';
import '../../widgets/buttonWidget/button_widget.dart';
import '../../widgets/round container/round_icon.dart';
import '../../widgets/rounded button/second_rounded_widget.dart';
import '../../widgets/textStyle/textsyle_widget.dart';
import 'location_listing_screen.dart';

class AddListingScreen extends StatefulWidget {
  const AddListingScreen({Key? key}) : super(key: key);

  @override
  State<AddListingScreen> createState() => _AddListingScreenState();
}

class _AddListingScreenState extends State<AddListingScreen> {
  TextEditingController _controller = TextEditingController();
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 65 * h,),
            Row(
              children: [
                SizedBox(width: 24 * w,),
                Text("Salom Josh,",style: Appstyle.twentyfour(Color(0xff252B5C)),),
                SizedBox(width: 10 * w,),
                Text("ko'chmas mulk",style: Appstyle.twentyfourbold(Color(0xff252B5C)),),
              ],
            ),
            SizedBox(height: 10 * h,),
            Padding(
              padding: EdgeInsets.only(left: 24 * w),
              child: Text("haqida ma'lumotlardi to'ldiring",style: Appstyle.twentyfour(Color(0xff252B5C)),),
            ),
            SizedBox(height: 35 * h,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 24 * w),
              width: MediaQuery.of(context).size.width,
              height: 70 * h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Color(0xffF5F4F8)
              ),
              child: Row(
                children: [
                  SizedBox(width: 20 * w,),
                  Expanded(
                    child: TextField(
                      style: Appstyle.fourteen(Color(0xff252B5C)),
                      controller: _controller,
                      decoration: InputDecoration(
                          border: InputBorder.none
                      ),
                    ),
                  ),
                  SvgPicture.asset("assets/icons/house.svg"),
                  SizedBox(width: 24 * w,)
                ],
              ),
            ),
            SizedBox(height: 35 * h,),
            Padding(
              padding: EdgeInsets.only(left: 24 * w),
              child: Text("Roʻyxat turi",style: Appstyle.eighteenbold(Color(0xff252B5C)),),
            ),
            SizedBox(height: 20 * h,),
            Row(
              children: [
                SizedBox(width: 24 * w,),
                SecondRoundedWidget(width: 71 * w, text: "Ijara"),
                SizedBox(width: 15 * w,),
                SecondRoundedWidget(width: 71 * w, text: "Sotish")
              ],
            ),
            SizedBox(height: 38 * h,),
            Padding(
              padding: EdgeInsets.only(left: 24 * w),
              child: Text("Mulk toifasi",style: Appstyle.eighteenbold(Color(0xff252B5C)),),
            ),
            SizedBox(height: 20 * h,),
            Row(
              children: [
                SizedBox(width: 24 * w,),
                SecondRoundedWidget(width: 78 * w, text: "Uy"),
                SizedBox(width: 15 * w,),
                SecondRoundedWidget(width: 98 * w, text: "Apartament")
              ],
            ),
            SizedBox(height: 16 * h,),
            Row(
              children: [
                SizedBox(width: 24 * w ,),
                SecondRoundedWidget(width: 74 * w, text: "Hotel"),
                SizedBox(width: 15 * w,),
                SecondRoundedWidget(width: 69 * w, text: "Villa"),
                SizedBox(width: 15 * w,),
                SecondRoundedWidget(width: 84 * w, text: "Kottedj")
              ],
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
                     Navigator.push(context, PageTransition(child: LocationListingScreen(), type: PageTransitionType.scale,alignment: Alignment.bottomCenter));
                    }, vertical: 0, fontsize: 16, color: Color(0xff8BC83F), textcolor: Colors.white)
              ],
            ),
            SizedBox(height: 36 * h,)
          ],
        ),
      )
    );
  }
}
