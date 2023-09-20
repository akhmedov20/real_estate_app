import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import '../../utils/utils.dart';
import '../../widgets/buttonWidget/button_widget.dart';
import '../../widgets/gallery photo/gallery_photo.dart';
import '../../widgets/round container/round_icon.dart';
import '../../widgets/textStyle/textsyle_widget.dart';
import 'extra_listing_screen.dart';

class AddPhotoListingScreen extends StatefulWidget {
  const AddPhotoListingScreen({Key? key}) : super(key: key);

  @override
  State<AddPhotoListingScreen> createState() => _AddPhotoListingScreenState();
}

class _AddPhotoListingScreenState extends State<AddPhotoListingScreen> {
  List <String> img = [
    "assets/images/house29.png",
    "assets/images/house30.png",
    "assets/images/house31.png",
    "assets/images/hdhouse6.jpeg",
  ];
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 65 * h,),
          Padding(
            padding: EdgeInsets.only(left: 24 * w),
            child: Text("Ro'yhatingizga",style: Appstyle.twentyfour(Color(0xff252B5C)),),
          ),
          SizedBox(height: 10 * h,),
          Padding(
            padding:  EdgeInsets.only(left: 24 * w),
            child: Text("rasmlar qo'shing",style: Appstyle.twentyfourbold(Color(0xff252B5C)),),
          ),
          SizedBox(height: 35 * h,),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 370 * h,
            child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.only(left: 10 * w),
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
          SizedBox(height: 10 * h,),
          Center(child: SvgContainer(width: 78 * w, height: 78 * h, round: 25, color: Color(0xFFF5F4F8),
            icon: "assets/icons/plus.svg", onTap: (){},)),
          SizedBox(height: 45 * h,),
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
                    Navigator.push(context, PageTransition(child: ExtraListingScreen(), type: PageTransitionType.scale,alignment: Alignment.bottomCenter));
                  }, vertical: 0, fontsize: 16, color: Color(0xff8BC83F), textcolor: Colors.white)
            ],
          ),
          SizedBox(height: 20 * h,)
        ],
      ),
    );
  }
}
