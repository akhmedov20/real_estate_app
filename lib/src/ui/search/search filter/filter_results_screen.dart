import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


import '../../../bloc/save_house_bloc.dart';
import '../../../dialogs/bottom-center/search_results_dialog.dart';
import '../../../models/favourite/favourite_model.dart';
import '../../../models/rent/rent2_model.dart';
import '../../../models/rent/rent_model.dart';
import '../../../widgets/rent/rent 2/rent2_widget.dart';
import '../../../widgets/rent/rent_widget.dart';
import '../../../widgets/textField/textfield_widget.dart';
import '../../../widgets/textStyle/textsyle_widget.dart';

class FilterResults extends StatefulWidget {
  const FilterResults({Key? key}) : super(key: key);

  @override
  State<FilterResults> createState() => _FilterResultsState();
}

class _FilterResultsState extends State<FilterResults> with TickerProviderStateMixin{
  List<String> filtr = [
    "Uy","Semarang","\$ 150 - \$350","Ijara"
  ];
  TextEditingController controller = TextEditingController();
  List<RentModel> rent = [
    RentModel(rating: '4.7', image: "assets/images/house20.png", city: "Jakarta, Indonesia"),
    RentModel(rating: '4.8', image: "assets/images/house18.png", city: "Bali, Indonesia"),
    RentModel(rating: '4.9', image: "assets/images/house17.png", city: "Semarang, Indonesia"),
    RentModel(rating: '4.5', image: "assets/images/house16.png", city: "Jakarta, Indonesia"),
    RentModel(rating: '4.6', image: "assets/images/house15.png", city: "Bali, Indonesia"),
    RentModel(rating: '4.3', image: "assets/images/house12.png", city: "Semarang, Indonesia"),
  ];
  List <SecondRentModel> rent2 = [
    SecondRentModel(rating: "4.9", house: 'Uy', housename: 'Bridgeland Modern House',
        location: "Semarang, Indonesia", price: "293", image: "assets/images/house21.png"),
    SecondRentModel(rating: "4.8", house: 'Uy', housename: 'Wayside Modern House',
        location: "Semarang, Indonesia", price: "220", image: "assets/images/house22.png"),
    SecondRentModel(rating: "4.3", house: 'Uy', housename: 'Shoolview House',
        location: "Semarang, Indonesia", price: "245", image: "assets/images/house23.png"),
    SecondRentModel(rating: "4.9", house: 'Uy', housename: 'Bridgeland Modern House',
        location: "Semarang, Indonesia", price: "293", image: "assets/images/house21.png"),
    SecondRentModel(rating: "4.8", house: 'Uy', housename: 'Wayside Modern House',
        location: "Semarang, Indonesia", price: "220", image: "assets/images/house22.png"),
    SecondRentModel(rating: "4.3", house: 'Uy', housename: 'Shoolview House',
        location: "Semarang, Indonesia", price: "245", image: "assets/images/house23.png"),
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
      body: ListView(
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
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
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 60,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: filtr.length,
                  itemBuilder: (context,index){
                    return GestureDetector(
                        onTap: (){},
                        child: Container(
                          margin: EdgeInsets.only(left: 5,right: 5),
                          width: 141,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Color(0xFFF5F4F8)
                          ),
                          child: Row(
                            children: [
                              SizedBox(width: 10,),
                              GestureDetector(
                                onTap: (){},
                                child: Container(
                                  width: 35,
                                  height: 35,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(35),
                                      color: Color(0xFF8BC83F)
                                  ),
                                  child: Center(child: Icon(Icons.close,color: Colors.white,size: 13,),),
                                ),
                              ),
                              SizedBox(width: 10,),
                              Text(filtr[index],style: Appstyle.twelve(Color(0xFF252B5C)),),
                            ],
                          ),
                        ));
                  }
              ),
            ),
            SizedBox(height: 20,),
            Container(
              width: double.maxFinite,
              height: 399,
              child: TabBarView(
                controller: _tabController,
                children: [
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
                  ),
                  Expanded(
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: rent2.length,
                        itemBuilder: (context,index) {
                          return SecondRentWidget(image: rent2[index].image, house: rent2[index].house,
                              housename: rent2[index].housename, rating:rent2[index].rating,
                              location: rent2[index].location, price: rent2[index].price, onTap: () {
                              saveHouseBloc.saveFavourite(rent[index] as SecondFavouriteModel);
                            },);
                        }
                    ),
                  ),
                ],
              ),
            )
          ],),
        ],
      )
    );
  }
}
