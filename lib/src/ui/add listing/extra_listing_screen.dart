import 'package:flutter/material.dart';


import '../../dialogs/bottom-center/add_listing_dialog.dart';
import '../../dialogs/bottom-center/error_add_listing_dialog.dart';
import '../../utils/utils.dart';
import '../../widgets/buttonWidget/button_widget.dart';
import '../../widgets/edit list price/price.dart';
import '../../widgets/plus and minus/plus_minus.dart';
import '../../widgets/rent/rent 3/rent3_widget.dart';
import '../../widgets/round container/round_icon.dart';
import '../../widgets/rounded button/second_rounded_widget.dart';
import '../../widgets/rounded button/third_rounded_widget.dart';
import '../../widgets/textStyle/textsyle_widget.dart';

class ExtraListingScreen extends StatefulWidget {
  const ExtraListingScreen({Key? key}) : super(key: key);

  @override
  State<ExtraListingScreen> createState() => _ExtraListingScreenState();
}

class _ExtraListingScreenState extends State<ExtraListingScreen> {
  TextEditingController controller = TextEditingController();
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();

  List <String> uy = [
    "< 4","4","5","6","7"
  ];
  List <double> size = [
    97,85,78,95,95
  ];
  @override
  Widget build(BuildContext context) {
    double h = Utils.getHeight(context);
    double w = Utils.getWidth(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 326 * h,
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 120 * w),
                    width: 247 * w,
                    height: 266 * h,
                    decoration: BoxDecoration(
                        color: Color(0x4C234F68),
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(270),
                            topRight: Radius.circular(20)
                        )
                    ),
                  ),
                  Positioned(
                      top: 41 * h,left: 24 * w,
                      child: SvgContainer(width: 50 * w, height: 50 * h, round: 50, color: Color(0xFFF5F4F8), icon: "assets/icons/left.svg", onTap: () {
                        Navigator.pop(context);
                      },)),
                  Positioned(
                      top: 51 * h,
                      left: 157 * w,
                      child: Text("Roʻyxatni tahrirlash",style: Appstyle.fourteen(Color(0xFF252B5C)),)),
                  Positioned(
                    top: 124 * h,
                    left: 24 * w,
                    child: Text("Deyarli tugadi,",style: Appstyle.twentyfourbold(Color(0xFF252B5C)),),
                  ),
                  Positioned(
                    top: 160 * h,
                    left: 24 * w,
                    child: Text("ro'yxatni to'ldiring",style: Appstyle.twentyfour(Color(0xFF252B5C)),),
                  ),
                ],
              ),
            ),
            SizedBox(height: 35 *h,),
            Padding(
              padding:  EdgeInsets.only(left: 24 * w),
              child: Text("Sotish narxi",style: Appstyle.eighteenbold(Color(0xff252B5C)),),
            ),
            SizedBox(height: 20 * h,),
            PriceWidget(controller: controller, text: '',),
            SizedBox(height: 35 * h,),
            Padding(
              padding: EdgeInsets.only(left: 24 * w),
              child: Text("Ijara narxi",style: Appstyle.eighteenbold(Color(0xff252B5C)),),
            ),
            SizedBox(height: 20 * h,),
            PriceWidget(controller: controller1, text: '/oyiga',),
            SizedBox(height: 15 * h,),
            Row(
              children: [
                SizedBox(width: 24 * w,),
                SecondRoundedWidget(width: 88 * w, text: "Oyiga"),
                SizedBox(width: 10 * w,),
                SecondRoundedWidget(width: 77 * w, text: "Yiliga")
              ],
            ),
            SizedBox(height: 40 * h,),
            Padding(
              padding: EdgeInsets.only(left: 24 * w),
              child: Text("Mulk xususiyatlari",style: Appstyle.eighteenbold(Color(0xff252B5C)),),
            ),
            SizedBox(height: 20 * h,),
            PlusMinus(text: "Yotoqhona"),
            SizedBox(height: 20 * h,),
            PlusMinus(text: "Hammom"),
            SizedBox(height: 20 * h,),
            PlusMinus(text: "Balkon"),
            SizedBox(height: 20 * h,),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Text("Jami xonalar",style: Appstyle.eighteenbold(Color(0xff252B5C)),),
            ),
            SizedBox(height: 20 * h,),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 60 * h,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: uy.length,
                  itemBuilder: (context,index) {
                    return ThirdRoundedWidget(width: size[index], text: uy[index]);
                  }
              ),
            ),
            SizedBox(height: 38 * h,),
            Padding(
              padding: EdgeInsets.only(left: 24 * w),
              child: Text("Atrof-muhit / ob'ektlar",style: Appstyle.eighteenbold(Color(0xff252B5C)),),
            ),
            SizedBox(height: 19 * h,),
            Row(
              children: [
                SizedBox(width: 24 * w,),
                SecondRoundedWidget(width: 102 * w, text: "Parkovka"),
                SizedBox(width: 37 * w,),
                SecondRoundedWidget(width: 180 * w, text: "Uy hayvonlariga ruxsat berilgan")
              ],
            ),
            SizedBox(height: 13 * h,),
            Row(
              children: [
                SizedBox(width: 24 * w,),
                SecondRoundedWidget(width: 83 * w, text: "Bog'"),
                SizedBox(width: 35 * w,),
                SecondRoundedWidget(width: 70 * w, text: "Fitness"),
                SizedBox(width: 33 * w,),
                SecondRoundedWidget(width: 70 * w, text: "Park"),
              ],
            ),
            SizedBox(height: 13 * h,),
            Row(
              children: [
                SizedBox(width: 24 * w,),
                SecondRoundedWidget(width: 83 * w, text: "Uy teatri"),
                SizedBox(width: 35 * w,),
                SecondRoundedWidget(width: 140 * w, text: "Bolalar maydonchasi"),
              ],
            ),
            SizedBox(height: 80 * h,),
            Row(
              children: [
                SizedBox(width: 46 * w,),
                ButtonWidget(text: "Tugat", height: 54 * h, circle: 10, horizontal: 0, width: 190 * w,
                    onTap: (){
                    }, vertical: 0, fontsize: 16, color: Color(0xff8BC83F), textcolor: Colors.white),
                SizedBox(width: 16 * w,),
                SvgContainer(width: 54 * w, height: 54 * h, round: 54, color: Colors.white,
                    icon: "assets/icons/rightarrow.svg", onTap: (){
                      if (controller.text.isNotEmpty && controller1.text.isNotEmpty) {
                        AddListingDialog.addlistingdialog(context);
                      }
                      else {
                        ErrorAddListingDialog.erroraddlistingdialog(context);
                      }
                    }),
              ],
            ),
            SizedBox(height: 20 * h,)
          ],
        ),
      )
    );
  }
}
