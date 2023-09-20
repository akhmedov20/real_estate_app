import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../bloc/save_house_bloc.dart';
import '../../dialogs/bottom-center/search_results_dialog.dart';
import '../../models/favourite/favourite_model.dart';
import '../../models/rent/rent_model.dart';
import '../../widgets/rent/rent_widget.dart';
import '../../widgets/textField/textfield_widget.dart';
import '../../widgets/textStyle/textsyle_widget.dart';


class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> with TickerProviderStateMixin{
  TextEditingController controller = TextEditingController();
  List<RentModel> rent = [
    RentModel(rating: '4.7', image: "assets/images/house20.png", city: "Jakarta, Indonesia"),
    RentModel(rating: '4.8', image: "assets/images/house18.png", city: "Bali, Indonesia"),
    RentModel(rating: '4.9', image: "assets/images/house17.png", city: "Semarang, Indonesia"),
    RentModel(rating: '4.5', image: "assets/images/house16.png", city: "Jakarta, Indonesia"),
    RentModel(rating: '4.6', image: "assets/images/house15.png", city: "Bali, Indonesia"),
    RentModel(rating: '4.3', image: "assets/images/house12.png", city: "Semarang, Indonesia"),
  ];
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2, vsync: this);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: GestureDetector(
          onTap: (){Navigator.pop(context);},
          child: Container(
            width: 50,height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.white
            ),
            child: Center(child: Icon(CupertinoIcons.left_chevron,color: Colors.black,size: 16,)),
          ),
        ),
        title: Text("So'rov natijalari",style: Appstyle.fourteen(Color(0xFF252B5C)),),
        actions: [
          GestureDetector(
            onTap: (){
              SearchDialog.searchdialog(context);
              },
            child: Container(
              width: 50,height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white
              ),
              child: Center(child: SvgPicture.asset("assets/icons/setting.svg",width: 15,)),
            ),
          ),
        ],
      ),
       body: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
         SizedBox(height: 35,),
         TextFieldWidgetA(icons:"assets/icons/search.svg", widht: MediaQuery.of(context).size.width,
             horizontal: 24, controller: controller),
         SizedBox(height: 20,),
         Row(
           children: [
             SizedBox(width: 24,),
             Text("Topildi",style: Appstyle.eighteen(Color(0xFF252B5C))),
             SizedBox(width: 10,),
             Text("128",style: Appstyle.eighteenbold(Color(0xFF252B5C)),),
             SizedBox(width: 10,),
             Text("mulklar",style: Appstyle.eighteen(Color(0xFF252B5C))),
             Spacer(),
             Align(
               alignment: Alignment.centerLeft,
               child: Container(
                 child: TabBar(
                   padding: EdgeInsets.only(left: 10, right: 10),
                   isScrollable: true,
                   unselectedLabelColor: Colors.grey,
                   labelColor: Colors.black,
                   controller: _tabController,
                   tabs: [
                     Tab(
                       child: Row(
                         children: [
                           GestureDetector(
                               onTap: () {},
                               child: SvgPicture.asset(
                                   "assets/icons/menu.svg")),
                         ],
                       ),
                     ),
                     Tab(
                       child: Row(
                         children: [
                           SvgPicture.asset("assets/icons/active.svg"),
                         ],
                       ),
                     ),
                   ],
                 ),
               ),
             ),
             SizedBox(width: 20,)
           ],
         ),
         SizedBox(height: 20,),
         // Center(child: RentWidget(image: "assets/images/house15.png")),
         Expanded(
           child: GridView.builder(
               gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                   maxCrossAxisExtent: 200,
                   childAspectRatio: 2.0 / 3,
                   crossAxisSpacing: 20,
                   mainAxisSpacing: 20),
               itemCount: rent.length,
               itemBuilder: (BuildContext ctx, index) {
                 return RentWidget(image: rent[index].image, rating: rent[index].rating, city: rent[index].city, onTap: () {
                   saveHouseBloc.saveFavourite(rent[index] as SecondFavouriteModel);
                 },);
               }),
         )
       ],),
    );
  }
}
