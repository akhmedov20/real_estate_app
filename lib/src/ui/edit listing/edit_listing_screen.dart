import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:page_transition/page_transition.dart';
import '../../dialogs/bottom-center/edit_listing_dialog.dart';
import '../../utils/utils.dart';
import '../../widgets/buttonWidget/button_widget.dart';
import '../../widgets/edit list price/price.dart';
import '../../widgets/gallery photo/gallery_photo.dart';
import '../../widgets/plus and minus/plus_minus.dart';
import '../../widgets/rent/rent 3/rent3_widget.dart';
import '../../widgets/round container/round_icon.dart';
import '../../widgets/rounded button/second_rounded_widget.dart';
import '../../widgets/rounded button/third_rounded_widget.dart';
import '../../widgets/textStyle/textsyle_widget.dart';
import '../detail/detail map/detail_map_screen.dart';

class EditListingScreen extends StatefulWidget {
  const EditListingScreen({Key? key}) : super(key: key);

  @override
  State<EditListingScreen> createState() => _EditListingScreenState();
}

class _EditListingScreenState extends State<EditListingScreen> {
  TextEditingController controller = TextEditingController();
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  List <String> img = [
    "assets/images/house29.png",
    "assets/images/house30.png",
    "assets/images/house31.png",
    "assets/images/hdhouse6.jpeg",
  ];
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
              height: 326,
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 120),
                    width: 247,
                    height: 266,
                    decoration: BoxDecoration(
                        color: Color(0x4C234F68),
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(270),
                            topRight: Radius.circular(20)
                        )
                    ),
                  ),
                  Positioned(
                      top: 41,left: 24,
                      child: SvgContainer(width: 50, height: 50, round: 50, color: Color(0xFFF5F4F8), icon: "assets/icons/left.svg", onTap: () {
                        Navigator.pop(context);
                      },)),
                  Positioned(
                      top: 51,
                      left: 157,
                      child: Text("Roʻyxatni tahrirlash",style: Appstyle.fourteen(Color(0xFF252B5C)),)),
                  Positioned(
                      top: 104,
                      left: 10,
                      child: ThirdRentWidget(image: "assets/images/house28.png", house: "uy", housename: "Schoolview House", rating: "4.6", location: "Semarang, Indonesia", price: "price"))
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 24 * w),
              child: Text("Roʻyxat sarlavhasi",style: Appstyle.eighteenbold(Color(0xff252B5C)),),
            ),
            SizedBox(height: 20,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 24),
              width: MediaQuery.of(context).size.width,
              height: 70,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Color(0xffF5F4F8)
              ),
              child: Row(
                children: [
                  SizedBox(width: 20,),
                  Expanded(
                    child: TextField(
                      style: Appstyle.fourteen(Color(0xff252B5C)),
                      controller: controller2,
                      decoration: InputDecoration(
                        border: InputBorder.none
                      ),
                    ),
                  ),
                  SvgPicture.asset("assets/icons/house.svg"),
                  SizedBox(width: 24,)
                ],
              ),
            ),
            SizedBox(height: 35,),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Text("Roʻyxat turi",style: Appstyle.eighteenbold(Color(0xff252B5C)),),
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                SizedBox(width: 24,),
                SecondRoundedWidget(width: 71, text: "Ijara"),
                SizedBox(width: 15,),
                SecondRoundedWidget(width: 71, text: "Sotish")
              ],
            ),
            SizedBox(height: 38,),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Text("Mulk toifasi",style: Appstyle.eighteenbold(Color(0xff252B5C)),),
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                SizedBox(width: 24,),
                SecondRoundedWidget(width: 78, text: "Uy"),
                SizedBox(width: 15,),
                SecondRoundedWidget(width: 98, text: "Apartament")
              ],
            ),
            SizedBox(height: 16,),
            Row(
              children: [
                SizedBox(width: 24,),
                SecondRoundedWidget(width: 74, text: "Hotel"),
                SizedBox(width: 15,),
                SecondRoundedWidget(width: 69, text: "Villa"),
                SizedBox(width: 15,),
                SecondRoundedWidget(width: 84, text: "Kottedj")
              ],
            ),
            SizedBox(height: 38,),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Text("Joylashuvi",style: Appstyle.eighteenbold(Color(0xff252B5C)),),
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                SizedBox(width: 24,),
                SvgContainer(width: 50, height: 50, round: 50, color: Color(0xffF5F4F8), icon: "assets/icons/location.svg", onTap: () {  },),
                SizedBox(width: 15,),
                SizedBox(
                  width: 262,
                  height: 40,
                  child: Text("Jl. Gerungsari, Bulusan, Kec. Tembalang, Kota Semarang, Jawa Tengah 50277",style: Appstyle.twelvebold(Color(0xff53587A)),),
                )
              ],
            ),
            SizedBox(height: 30,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 24),
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20)
              ),
              child: Stack(
                children: [
                  GoogleMap(
                    zoomControlsEnabled: false,
                      initialCameraPosition: CameraPosition(
                        target: LatLng(40.8153561,72.1313147),
                        zoom: 14.4746,
                      )
                  ),
                  Positioned(
                    bottom: 0,
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, PageTransition(child: DetailMapScreen(), type: PageTransitionType.scale,alignment: Alignment.bottomCenter));
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 50,
                        color: Color.fromRGBO(255, 255, 255, 0.50),
                        child: Center(child: Text("Hammasini xaritada ko‘rish",style: Appstyle.twelve(Color(0xFF252B5C)),),),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 35,),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 370,
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.only(left: 10),
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 202,
                      childAspectRatio: 3.5 / 3,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 20),
                  itemCount: img.length,
                  itemBuilder: (BuildContext ctx, index) {
                    return Gallery(image: img[index]);
                  }),
            ),
            Center(child: SvgContainer(width: 78, height: 78, round: 25, color: Color(0xFFF5F4F8), icon: "assets/icons/plus.svg", onTap: (){},)),
            SizedBox(height: 35,),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Text("Sotish narxi",style: Appstyle.eighteenbold(Color(0xff252B5C)),),
            ),
            SizedBox(height: 20,),
            PriceWidget(controller: controller, text: '',),
            SizedBox(height: 35,),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Text("Ijara narxi",style: Appstyle.eighteenbold(Color(0xff252B5C)),),
            ),
            SizedBox(height: 20,),
            PriceWidget(controller: controller1, text: '/oyiga',),
            SizedBox(height: 15,),
            Row(
              children: [
                SizedBox(width: 24,),
                SecondRoundedWidget(width: 88, text: "Oyiga"),
                SizedBox(width: 10,),
                SecondRoundedWidget(width: 77, text: "Yiliga")
              ],
            ),
            SizedBox(height: 40,),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Text("Mulk xususiyatlari",style: Appstyle.eighteenbold(Color(0xff252B5C)),),
            ),
            SizedBox(height: 20,),
            PlusMinus(text: "Yotoqhona"),
            SizedBox(height: 20,),
            PlusMinus(text: "Hammom"),
            SizedBox(height: 20,),
            PlusMinus(text: "Balkon"),
            SizedBox(height: 20,),
            SizedBox(height: 35,),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Text("Jami xonalar",style: Appstyle.eighteenbold(Color(0xff252B5C)),),
            ),
            SizedBox(height: 20,),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 60,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: uy.length,
                  itemBuilder: (context,index) {
                    return ThirdRoundedWidget(width: size[index], text: uy[index]);
                  }
              ),
            ),
            SizedBox(height: 38,),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Text("Atrof-muhit / ob'ektlar",style: Appstyle.eighteenbold(Color(0xff252B5C)),),
            ),
            SizedBox(height: 19,),
            Row(
              children: [
                SizedBox(width: 24,),
                SecondRoundedWidget(width: 102, text: "Parkovka"),
                SizedBox(width: 37,),
                SecondRoundedWidget(width: 180, text: "Uy hayvonlariga ruxsat berilgan")
              ],
            ),
            SizedBox(height: 13,),
            Row(
              children: [
                SizedBox(width: 24,),
                SecondRoundedWidget(width: 83, text: "Bog'"),
                SizedBox(width: 35,),
                SecondRoundedWidget(width: 70, text: "Fitness"),
                SizedBox(width: 33,),
                SecondRoundedWidget(width: 70, text: "Park"),
              ],
            ),
            SizedBox(height: 13,),
            Row(
              children: [
                SizedBox(width: 24,),
                SecondRoundedWidget(width: 83, text: "Uy teatri"),
                SizedBox(width: 35,),
                SecondRoundedWidget(width: 140, text: "Bolalar maydonchasi"),
              ],
            ),
            SizedBox(height: 50,),
            ButtonWidget(text: "Yangila", height: 70, circle: 10, horizontal: 50, width: MediaQuery.of(context).size.width,
                onTap: (){
              EditListingDialog.editlistingdialog(context);
                }, vertical: 0, fontsize: 16, color: Color(0xFF8BC83F), textcolor: Colors.white),
            SizedBox(height: 25,)
          ],
        ),
      )
    );
  }
}
