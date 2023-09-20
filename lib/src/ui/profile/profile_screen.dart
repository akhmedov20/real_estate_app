import 'package:flutter/material.dart';

import '../../models/shaxriyor/shaxriyor_model.dart';
import '../../utils/utils.dart';
import '../../widgets/information_widget.dart';
import 'TabWiew/tab_view_2.dart';
import 'edit_profile/edit_profile.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>
    with SingleTickerProviderStateMixin {
  int number =0;
  TabController? _tabController;
  List<WidgetModel> widgetModels = [
    const WidgetModel('assets/images/Shape.png', 230, 'Fairview Apartment',
        'Bali, Indonesia', 4.9),
    const WidgetModel('assets/images/Shape.png', 230, 'Fairview Apartment',
        'Bali, Indonesia', 4.9),
    const WidgetModel('assets/images/Shape.png', 230, 'Fairview Apartment',
        'Bali, Indonesia', 4.9),
  ];

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override


  @override
  Widget build(BuildContext context) {
    double h = Utils.getHeight(context);
    double w = Utils.getWidth(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        actions: [
          Padding(
            padding:EdgeInsets.symmetric(horizontal: 16*h),
            child: GestureDetector(

              child: Container(
                width: 50*h,
                height: 50*w,
                decoration: BoxDecoration(
                  color: const Color(0xFFF5F4F8),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: const Center(
                  child: Icon(Icons.settings_outlined, color: Color(0xFF252B5C)),
                ),
              ),
            ),
          ),
        ],
        title: Text(
          'Profile',
          style: TextStyle(
              fontSize: 14*h,
              fontWeight: FontWeight.bold,
              color: const Color(0xFF252B5C)),
        ),
      ),
      body: Padding(
        padding:EdgeInsets.symmetric(horizontal: 24*w),
        child: Column(
          children: [
            SizedBox(
              height: 20*h,
            ),
            SizedBox(
              width: 100*w,
              height: 100*h,
              child: Stack(
                children: [
                  Image.asset('assets/images/Profile.png'),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (builder){
                          return const EditProfile(name: 'Shahriyor Odilov', email: 'flutterx05@gmail.com', number: '998941366777',);
                        }));

                      },
                      child: Container(
                        width: 30*w,
                        height: 30*h,
                        decoration: BoxDecoration(
                          color: const Color(0xFF234F68),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Icon(
                          Icons.edit_outlined,
                          size: 14*h,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 12*h,
            ),
            Text(
              "Shahriyor Odilov",
              style: TextStyle(
                  fontSize: 14*h,
                  color: const Color(0xFF252B5C),
                  fontWeight: FontWeight.bold),
            ),//
            Text(
              'flutterx05@gmail.com',
              style: TextStyle(
                  fontSize: 10*h,
                  color: const Color(0xFF53587A),
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20*h,
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InformationWidget(number: 30, name: 'Listening'),
                InformationWidget(number: 12, name: 'Sold'),
                InformationWidget(number: 28, name: 'Revives'),
              ],
            ),
            SizedBox(
              height: 20*h,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 50*h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: const Color(0xFFF5F4F8)),
              child: Padding(
                padding:EdgeInsets.all(8.0*h),
                child: TabBar(
                    dividerColor: Colors.transparent,
                    unselectedLabelColor: const Color(0xFFA1A5C1),
                    labelColor: Colors.black,
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicator: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      color: Colors.white,
                    ),
                    controller: _tabController,
                    tabs: [
                      Tab(
                        child: Text('Transaction',style: TextStyle(fontSize: 12*h),),
                      ),
                      Tab(
                        child: Text('Listings',style: TextStyle(fontSize: 12*h),),
                      ),
                      Tab(
                        child: Text('Sold',style: TextStyle(fontSize: 12*h),),
                      ),
                    ]),
              ),
            ), // t
            // ab bar
            SizedBox(
              height: 15*h,
            ),

            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  const TabView2(),
                  const TabView2(),
                  Container(color: Colors.yellowAccent,)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
