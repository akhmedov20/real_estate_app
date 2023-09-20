import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:house/src/ui/detail/review/review_screen.dart';
import 'package:page_transition/page_transition.dart';


import '../../dialogs/bottom-center/location_dialog.dart';
import '../../models/facility/facility_model.dart';
import '../../models/rent/rent_model.dart';
import '../../widgets/agent/agent_widget.dart';
import '../../widgets/home facility/facility_widget.dart';
import '../../widgets/rent/rent_widget.dart';
import '../../widgets/review/comment_widget.dart';
import '../../widgets/review/review.dart';
import '../../widgets/round container/round_container.dart';
import '../../widgets/round container/round_icon.dart';
import '../../widgets/textStyle/textsyle_widget.dart';
import '../buy/buy_screen.dart';
import 'detail map/detail_map_screen.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  List<FacilityModel> facility = [
    FacilityModel(text: "Yotoqhona", icon: "assets/icons/bed.svg", number: 2),
    FacilityModel(text: "Hammom", icon: "assets/icons/bathroom.svg", number: 3),
    FacilityModel(text: "Hojathona", icon: "assets/icons/wc.svg", number: 2),
    FacilityModel(text: "Kanalizatsiya", icon: "assets/icons/waterdrop.svg", number: 2),
  ];
  List<RentModel> rent = [
    RentModel(rating: '4.7', image: "assets/images/house20.png", city: "Jakarta, Indonesia"),
    RentModel(rating: '4.8', image: "assets/images/house18.png", city: "Bali, Indonesia"),
    RentModel(rating: '4.9', image: "assets/images/house17.png", city: "Semarang, Indonesia"),
    RentModel(rating: '4.5', image: "assets/images/house16.png", city: "Jakarta, Indonesia"),
    RentModel(rating: '4.6', image: "assets/images/house15.png", city: "Bali, Indonesia"),
    RentModel(rating: '4.3', image: "assets/images/house12.png", city: "Semarang, Indonesia"),
  ];
  @override
  bool _onTap = false;
  bool _favorite = false;
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: 35,),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 524,
            child: Stack(
              children: [
                GestureDetector(
                  onTap: (){
                  },
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 510,
                      decoration: BoxDecoration(
                          border: Border.all(width: 5,color: Colors.white)
                      ),
                      child: Image.asset(_onTap ?  "assets/images/house24.png" : "assets/images/house25.png",fit: BoxFit.cover,)),
                ),
                Positioned(
                  top: 15,
                  left: 30,
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
                  top: 15,
                  right: 95,
                  child: GestureDetector(
                    onTap: (){},
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 0.3
                            )
                          ]
                      ),
                      child: Center(child: Icon(CupertinoIcons.share,color: Colors.grey,size: 18,),),
                    ),
                  ),
                ),
                Positioned(
                  top: 15,
                  right: 30,
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        _favorite = !_favorite;
                      });
                    },
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: _favorite ? Color(0xFF8BC83F) : Colors.white,
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 0.3
                            )
                          ]
                      ),
                      child: Center(child: Icon(_favorite ? Icons.favorite : Icons.favorite_border,
                        color: _favorite ? Colors.white : Colors.grey,size: 18,),),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 30,
                  left: 30,
                  child: Container(
                    width: 95,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Color(0xFF234F68)
                    ),
                    child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Icon(Icons.star,color: Colors.yellow,size: 15,),
                      SizedBox(width: 7,),
                      Text(_onTap ? "4.3" : "4.9",style: Appstyle.fourteen(Colors.white),),
                      SizedBox(width: 10,)
                    ],),
                  ),
                ),
                Positioned(
                  bottom: 30,
                  left: 135,
                  child: Container(
                      width: 115,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Color(0xFF234F68)
                      ),
                      child: Center(child: Text("Apartment",style: Appstyle.twelve(Colors.white),),)
                  ),
                ),
                Positioned(
                  bottom: 170,
                  right: 30,
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        _onTap = !_onTap;
                      });
                    },
                    child: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        border: Border.all(width: 3,color: Colors.white),
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(18),
                          child: Image.asset(_onTap ?  "assets/images/house24.png" : "assets/images/house25.png",fit: BoxFit.cover,)),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 103,
                  right: 30,
                  child: Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Image.asset("assets/images/smallhouse2.png"),
                  ),
                ),
                Positioned(
                  bottom: 35,
                  right: 30,
                  child: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Stack(
                        children: [
                          Image.asset("assets/images/smallhouse+3.png"),
                          Center(child: Text("+3",style: Appstyle.twenty(Colors.white),))
                        ],
                      )
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              SizedBox(width: 24,),
              Text("Wings Tower",style: Appstyle.twentyfourbold(Color(0xFF252B5C)),),
              Spacer(),
              Text("\$ 220",style: Appstyle.twentyfourbold(Color(0xFF252B5C)),),
              SizedBox(width: 24,)
            ],
          ),
          SizedBox(height: 5,),
          Row(
            children: [
              SizedBox(width: 24,),
              Icon(Icons.location_on,size: 12,color: Color(0xFF252B5C),),
              SizedBox(width: 5,),
              Text("Jakarta, Indonesia",style: Appstyle.twelve(Color(0xFF252B5C)),),
              Spacer(),
              Text("har oyiga",style: Appstyle.twelve(Color(0xFF252B5C)),),
              SizedBox(width: 24,)
            ],
          ),
          SizedBox(height: 20,),
          Row(children: [
            SizedBox(width: 24,),
            RoundContainer(width: 72, height: 47, round: 20, text: "Ijara", textcolor: Colors.white, color: Color(0xFF8BC83F), onTap: () {
              Navigator.push(context, PageTransition(child: BuyScreen(), type: PageTransitionType.scale,alignment: Alignment.center));
            },),
            SizedBox(width: 23,),
            RoundContainer(width: 92, height: 47, round: 20, text: "Sotib olish", textcolor: Color(0xFF252B5C), color: Color(0xFFF5F4F8), onTap: () {  },),
            Spacer(),
            SvgContainer(width: 50, height: 50, round: 50, color: Colors.white, icon: "assets/icons/360.svg", onTap: () {},),
            SizedBox(width: 23,)
          ],),
          SizedBox(height: 20,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 24),
            width: MediaQuery.of(context).size.width,
            height: 1.5,
            color: Colors.grey[300],
          ),
          SizedBox(height: 20,),
          AgentWidget(),
          SizedBox(height: 20,),
          SizedBox(
           width: MediaQuery.of(context).size.width,
           height: 55,
           child: ListView.builder(
             padding: EdgeInsets.only(left: 20),
             scrollDirection: Axis.horizontal,
             itemCount: facility.length,
               itemBuilder: (context,index) {
                 return FacilityWidget(icon: facility[index].icon, text: facility[index].text, number: facility[index].number);
               }
           ),
         ),
          SizedBox(height: 35,),
          Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Text("Joylashuv va jamoat ob'ektlari",style: Appstyle.twentyfourbold(Color(0xFF252B5C)),),
          ),
          SizedBox(height: 25,),
          Row(
            children: [
              SizedBox(width: 24,),
              GestureDetector(
                onTap: (){
                  LocationDialog.locationdialog(context);
                },
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                      color: Color(0xFFF5F4F8)
                  ),
                  child: Center(child: Icon(Icons.location_on_outlined,color: Colors.black,size: 18,),),
                ),
              ),
              Spacer(),
              SizedBox(
                width: 232,
                height: 40,
                child: Text("St. Cikoko Timur, Kec. Pancoran, Jakarta Selatan, Indonesia 12770",
                style: Appstyle.twelve(Color(0xFF53587A)),),
              ),
              SizedBox(width: 50,)
            ],
          ),
          SizedBox(height: 20,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 24),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  blurRadius: 0.5
                )
              ],
              borderRadius: BorderRadius.circular(25)
            ),
            child: ExpansionTile(
              title: Row(children: [
                Text("Sizni lokatsiyangizdan",style: Appstyle.twelve(Color(0xFF53587A)),),
                SizedBox(width: 8,),
                Text("2.5 km",style: Appstyle.twelvebold(Color(0xFF53587A)),),
              ],),
              leading: Icon(Icons.location_on,size: 20,color: Color(0xFF252B5C),),
            )
          ),
          SizedBox(height: 10,),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 55,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                FacilityWidget(icon: "", text: "Bolnitsa", number: 2),
                FacilityWidget(icon: "", text: "Zapravka", number: 2),
                FacilityWidget(icon: "", text: "Maktab", number: 2)
              ],
            ),
          ),
          SizedBox(height: 18,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 24),
            width: MediaQuery.of(context).size.width,
            height: 240,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25)
            ),
            child: Column(children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 190,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25)
                ),
                child: GoogleMap(
                    zoomControlsEnabled: false,
                    initialCameraPosition: CameraPosition(
                      target: LatLng(40.8153561,72.1313147),
                      zoom: 14.4746,
                    )),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, PageTransition(child: DetailMapScreen(), type: PageTransitionType.scale,alignment: Alignment.bottomCenter));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  color: Color.fromRGBO(255, 255, 255, 0.50),
                  child: Center(child: Text("Hammasini xaritada ko‘rish",style: Appstyle.twelve(Color(0xFF252B5C)),),),
                ),
              )
            ],),
          ),
          Row(children: [
            SizedBox(width: 24,),
            Text("Yashash narxi",style: Appstyle.twentyfourbold(Color(0xFF252B5C)),),
            Spacer(),
            Text("tafsilotlarni ko'rish",style: Appstyle.twelve(Color(0xFF252B5C)),),
            SizedBox(width: 24,)
          ],),
          SizedBox(height: 20,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 24),
            width: MediaQuery.of(context).size.width,
            height: 85,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Color(0xFFF5F4F8)
            ),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 16,),
                Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Text.rich(
                      TextSpan(
                          text: "\$ 830",style: Appstyle.eighteenbold(Color(0xFF252B5C)),
                        children: [
                          TextSpan(
                            text: "/oyiga",style: Appstyle.twelve(Color(0xFF252B5C))
                          )
                        ]
                      ),

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Text("*O'rtacha aholidan ushbu joy atrofida pul sarflaydi",style: Appstyle.ten(Color(0xFF252B5C)),),
                )
              ],
            ),
          ),
          SizedBox(height: 41,),
          Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Text("Sharhlar",style: Appstyle.twentyfourbold(Color(0xFF252B5C)),),
          ),
          SizedBox(height: 20,),
          ReviewWidget(),
          SizedBox(height: 20,),
          CommentWidget(),
          SizedBox(height: 10,),
          CommentWidget(),
          SizedBox(height: 10,),
          GestureDetector(
            onTap: (){
              Navigator.push(context, PageTransition(child: ReviewScreen(), type: PageTransitionType.scale,alignment: Alignment.bottomCenter));
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 24),
              width: MediaQuery.of(context).size.width,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xFFF5F4F8),
              ),
              child: Center(child: Text("Barcha sharhlarni ko'ring",style: Appstyle.twelve(Color(0xFF252B5C)),),),
            ),
          ),
          SizedBox(height: 40,),
          Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Text("Bu joydan yaqin",style: Appstyle.twentyfourbold(Color(0xFF252B5C)),),
          ),
          SizedBox(height: 20,),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    childAspectRatio: 2.0 / 3,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20),
                itemCount: rent.length,
                itemBuilder: (BuildContext ctx, index) {
                  return RentWidget(image: rent[index].image, rating: rent[index].rating, city: rent[index].city, onTap: () {  },);
                }),
          )
        ],
      )
    );
  }
}
