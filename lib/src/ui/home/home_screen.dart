import 'package:flutter/material.dart';

import '../../models/agents/agent_model.dart';
import '../../models/circle location/circle_location_model.dart';
import '../../models/estate/estate_model.dart';
import '../../models/events/event_model.dart';
import '../../models/rounded model/rounded_model.dart';
import '../../utils/utils.dart';
import '../../widgets/agents_widget.dart';
import '../../widgets/estates_widget.dart';
import '../../widgets/location_widget.dart';
import '../../widgets/rectangle_widget.dart';
import '../../widgets/rend_widget.dart';
import '../../widgets/rounded button/second_rounded_widget.dart';
import '../../widgets/search/search_widget.dart';
import '../../widgets/textStyle/textsyle_widget.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List <RoundedModel> uy = [
    RoundedModel(width: 72, text: "Hammasi"),
    RoundedModel(width: 82, text: "Hovli"),
    RoundedModel(width: 121, text: "Apartament"),
    RoundedModel(width: 80, text: "Kottedj"),
    RoundedModel(width: 95, text: "Dacha"),
    RoundedModel(width: 94, text: "Dom"),
  ];
  List <EventModel> events = [
    EventModel(image: "assets/images/rentage.png", name: "Halloween !", sale: "60% gacha barcha chegirmalar"),
    EventModel(image: "assets/images/hdhouse7.jpeg", name: "Yoz Dam olish", sale: "60% gacha barcha chegirmalar"),
    EventModel(image: "assets/images/hdhouse6.jpeg", name: "Halloween !", sale: "60% gacha barcha chegirmalar"),
    EventModel(image: "assets/images/hdhouse1.jpg", name: "Yoz Dam olish", sale: "60% gacha barcha chegirmalar"),
  ];
  List <EstateModel> estate = [
    EstateModel(prise: 290, location: "Jakarta, Indonesia", star: 4.8, full_name: "Sky Dandelions Apartment",
        name: "Uy", image: "assets/images/hdhouse1.jpg"),
    EstateModel(prise: 330, location: "Bali, Indonesia", star: 4.4, full_name: "Sky Dandelions Apartment",
        name: "Uy", image: "assets/images/hdhouse2.jpg"),
    EstateModel(prise: 750, location: "Andijon, Uzbekistan", star: 4.2, full_name: "Sky Dandelions Apartment",
        name: "Uy", image: "assets/images/hdhouse6.jpeg"),
    EstateModel(prise: 150, location: "Tashkent, Uzbekistan", star: 4.6, full_name: "Sky Dandelions Apartment",
        name: "Uy", image: "assets/images/hdhouse10.jpeg")
  ];
  List <CircleLocationModel> circle = [
    CircleLocationModel(image: "assets/images/hdhouse1.jpg", name: "Bali"),
    CircleLocationModel(image: "assets/images/circle3.png", name: "Jakarta"),
    CircleLocationModel(image: "assets/images/circle3.png", name: "Yogyakarta"),
    CircleLocationModel(image: "assets/images/hdhouse6.jpeg", name: "Bali"),
  ];
  List <AgentModel> agents = [
    AgentModel(name: "Amanda", image: "assets/images/agent1.png"),
    AgentModel(name: "Anderson", image: "assets/images/agent2.png"),
    AgentModel(name: "Andrew", image: "assets/images/agent3.png"),
    AgentModel(name: "Samanta", image: "assets/images/opa.png"),
    AgentModel(name: "Roza", image: "assets/images/opa.png"),
  ];
  bool like = false;
  bool _numberInputIsValid = true;

  final int _greedCount = 2;

  List data = [1, 2, 3, 4, 5, 6, 7];

  @override
  Widget build(BuildContext context) {
    double w = Utils.getWidth(context);
    double h = Utils.getHeight(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 306 * h,
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
                    top: 24 * h,
                    left: 24 * w,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.black54),
                          borderRadius: BorderRadius.circular(25)),
                      width: 173 * w,
                      child: ExpansionTile(
                        title: Text("Jakarta, Indonesia",style: Appstyle.ten2(Colors.black),),
                        leading: Icon(Icons.location_on),
                        children: [
                          Text("Bali, Indonesia",style: Appstyle.ten2(Colors.black),),
                          SizedBox(height: 8 * h,),
                          Text("Tashkent, Uzbekistan",style: Appstyle.ten2(Colors.black),),
                          SizedBox(height: 8 * h,),
                          Text("Andijon, Uzbekistan",style: Appstyle.ten2(Colors.black),),
                          SizedBox(height: 8 * h,),
                          Text("Farg'ona, Uzbekistan",style: Appstyle.ten2(Colors.black),),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 24 * h,
                    right: 80,
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Color(0xff8BC83F)),
                          borderRadius: BorderRadius.circular(50)),
                      width: 50 * w,
                      height: 50 * h,
                      child: Center(child: Icon(Icons.notification_important_outlined,size: 20,)),
                    ),
                  ),
                  Positioned(
                    top: 24 * h,
                    right: 20,
                    child: SizedBox(
                        width: 50 * w,
                        height: 50 * h,
                        child: Image.asset('assets/images/man.png')),
                  ),
                  Positioned(
                    top: 124 * h,
                    left: 24 * w,
                    child: Text("Salom, Jonathan!",
                        style: Appstyle.twentyfourbold(Color(0xFF252B5C))),
                  ),
                  Positioned(
                    top: 164 * h,
                    left: 24 * w,
                    child: Text("Keling kashf qilaylik",
                        style: Appstyle.twentyfour(Color(0xFF252B5C))),
                  ),
                  Positioned(
                    top: 219 * h,
                    left: 24 * w,
                    right: 24 * h,
                    child: SearchWidget(width: MediaQuery.of(context).size.width, height: 70 * h, hintText: "Uy, kvartira va boshqalarni qidirish",
                        left: 0, right:0, height2: 36, onTap: (){}),
                  )
                ],
              ),
            ),
            SizedBox(
                height: 70 * h,
                child: ListView.builder(
                  padding: EdgeInsets.only(left: 24 * w),
                    scrollDirection: Axis.horizontal,
                    itemCount: uy.length,
                    itemBuilder: (context,index){
                      return SecondRoundedWidget(width: uy[index].width, text: uy[index].text);
                    }
                )
            ),
            SizedBox(height: 32 * h,),
            SizedBox(
              height: 190,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: events.length,
                itemBuilder: (BuildContext context,index) {
                  return  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RectangleWidget(
                        image: events[index].image, name:events[index].name, sale: events[index].sale),
                  );
                },

              ),
            ),
            SizedBox(height: 15 * h,),
            Row(
              children: [
                SizedBox(width: 24 * w,),
                Text(
                    "Tanlangan mulklar",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    )
                ),
                Spacer(),
                TextButton(onPressed: (){}, child: Text(
                    "hammasini ko'rish",
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                        color: Colors.blueAccent
                    )
                )),
                SizedBox(width: 10 * w,)
              ],
            ),
            SizedBox(
              height: 190 * h,
              child: ListView.builder(
                itemCount: estate.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return EstateWidget(location: estate[index].location, name:estate[index].name, full_name: estate[index].full_name,
                      star: estate[index].star, prise: estate[index].prise, image: estate[index].image);
                },
              ),
            ),
            SizedBox(height: 30 * h,),
            Row(
              children: [
                SizedBox(width: 24 * w,),
                Text(
                    "Zo'r lokatsiyalar",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    )
                ),
                Spacer(),
                TextButton(onPressed: (){}, child: Text(
                    "hammasini ko'rish",
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                        color: Colors.blueAccent
                    )
                )),
                SizedBox(width: 10 * w,)
              ],
            ),
            SizedBox(
              height: 60,
              child: ListView.builder(
                  itemCount: circle.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index) {
                    return LocationWidget(image: circle[index].image, name:circle[index].name);
                  }
              ),
            ),
            SizedBox(height: 35 * h,),
            Row(
              children: [
                SizedBox(width: 24 * w,),
                Text(
                    "To'p agentlar",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    )
                ),
                Spacer(),
                TextButton(onPressed: (){}, child: Text(
                    "hammasini ko'rish",
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                        color: Colors.blueAccent
                    )
                )),
                SizedBox(width: 10 * w,)
              ],
            ),
            SizedBox(
              height: 80,
              child: ListView.builder(
                  itemCount: agents.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index) {
                    return AgentsWidget(image: agents[index].image, name: agents[index].name);
                  }
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemCount: (data.length + _greedCount - 1) ~/ _greedCount,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: RentWidget(
                            price: '290',
                            image: 'assets/images/uylar.png',
                            name: 'Wings Tower',
                            star: 5,
                            location: 'Jakarta, Indonesia',
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: index * _greedCount + 1 >= data.length
                              ? SizedBox(
                            width: 160,
                          )
                              : RentWidget(
                            price: '290',
                            image: 'assets/images/uylar.png',
                            name: 'Wings Tower',
                            star: 5,
                            location: 'Jakarta, Indonesia',
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
