import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:house/src/ui/detail/review/review%20house/review_house_screen.dart';
import 'package:page_transition/page_transition.dart';


import '../../../models/rounded model/rounded_model.dart';
import '../../../widgets/rent/rent 2/rent2_widget.dart';
import '../../../widgets/review/comment_widget.dart';
import '../../../widgets/rounded button/rounded_widget.dart';
import '../../../widgets/textStyle/textsyle_widget.dart';

class ReviewScreen extends StatefulWidget {
  const ReviewScreen({Key? key}) : super(key: key);

  @override
  State<ReviewScreen> createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> with TickerProviderStateMixin{
  List <RoundedModel> star = [
    RoundedModel(width: 95, text: "Hammasi"),
    RoundedModel(width: 78, text: "1"),
    RoundedModel(width: 78, text: "2"),
    RoundedModel(width: 78, text: "3"),
    RoundedModel(width: 78, text: "4"),
    RoundedModel(width: 78, text: "5"),
  ];
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 6, vsync: this);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text("Sharhlar",style: Appstyle.fourteen(Color(0xFF252B5C)),),
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(CupertinoIcons.left_chevron,size: 18,),
        )
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30,),
            GestureDetector(
              onTap: (){
                Navigator.push(context, PageTransition(child: ReviewHouse(), type: PageTransitionType.fade,alignment: Alignment.bottomCenter));
              },
              child: SecondRentWidget(image: "assets/images/house26.png", house: "Uy",
                  housename: "Sky Dandelions Apartment", rating: "4.7", location: "Jakarta, Indonesia", price:"399", onTap: () {  },),
            ),
            SizedBox(height: 20,),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 60,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: star.length,
                  itemBuilder: (context, index){
                    return RoundedWidget(width: star[index].width, text: star[index].text);
                  }
              ),
            ),
            SizedBox(height: 35,),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Text("Foydalanuvchi sharhlari",style: Appstyle.eighteenbold(Color(0xFF252B5C)),),
            ),
            SizedBox(height: 20,),
            CommentWidget(),
            SizedBox(height: 10,),
            CommentWidget(),
            SizedBox(height: 10,),
            CommentWidget(),
          ],
        ),
      )
    );
  }
}
