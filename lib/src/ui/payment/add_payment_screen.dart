import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:page_transition/page_transition.dart';
import '../../widgets/buttonWidget/button_widget.dart';
import '../../widgets/textField/small_textfield_widget.dart';
import '../../widgets/textField/textfield_widget.dart';
import '../../widgets/textStyle/textsyle_widget.dart';
import '../account-setup/choose_location/choose_location_screen.dart';
import '../account-setup/edit/edit_profile_screen.dart';
import '../account-setup/preferable/preferable_select_screen.dart';

class AddPaymentScreen extends StatefulWidget {
  const AddPaymentScreen({Key? key}) : super(key: key);

  @override
  State<AddPaymentScreen> createState() => _AddPaymentScreenState();
}

class _AddPaymentScreenState extends State<AddPaymentScreen>
    with TickerProviderStateMixin {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  TextEditingController controller3 = TextEditingController();
  TextEditingController controller4 = TextEditingController();
  TextEditingController controller5 = TextEditingController();
  TextEditingController controller6 = TextEditingController();
  TextEditingController controller7 = TextEditingController();
  TextEditingController controller8 = TextEditingController();
  TextEditingController controller9 = TextEditingController();
  TextEditingController controller10 = TextEditingController();
  List<String> images = [
    "assets/images/card2.png",
    "assets/images/card1.png",
    "assets/images/card3.png",
  ];
  int selectedIndex = 0;
  String img = 'assets/images/card2.png';
  @override
  bool _onPress = false;
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 35,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.white),
                      child: Center(
                          child: Icon(
                        CupertinoIcons.left_chevron,
                        color: Colors.black,
                      )),
                    ),
                  ),
                  Spacer(),
                  ButtonWidget(
                    text: "skip",
                    height: 38,
                    circle: 22,
                    horizontal: 0,
                    width: 86,
                    onTap: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.fade,
                              child: EditProfileScreen()));
                    },
                    vertical: 0,
                    fontsize: 12,
                    color: Color(0xFFF5F4F8),
                    textcolor: Color(0xFF3A3F67),
                  ),
                  SizedBox(
                    width: 24,
                  )
                ],
              ),
              SizedBox(
                height: 31,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24),
                child: Text(
                  "O'zingizga qulay",
                  style: Appstyle.twentyfour(Color(0xFF252B5C)),
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 24),
                child: Text(
                  "to'lov usulini qo'shing",
                  style: Appstyle.twentyfourbold(Color(0xFF1F4C6B)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24),
                child: Text(
                  "Buni keyinroq hisob sozlamalarida tahrirlashingiz mumkin.",
                  style: Appstyle.twelve(Color(0xFF53587A)),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              SizedBox(
                height: 200,
                child: TabBarView(
                    controller: _tabController,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 35),
                        width: MediaQuery.of(context).size.width,
                        height: 186,
                        decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
                        child: Image.asset(
                          images[0],
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 35),
                        width: MediaQuery.of(context).size.width,
                        height: 186,
                        decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
                        child: Image.asset(
                          images[1],
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 35),
                        width: MediaQuery.of(context).size.width,
                        height: 186,
                        decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
                        child: Image.asset(
                          images[2],
                          fit: BoxFit.cover,
                        ),
                      ),

                    ]),
              ),
              SizedBox(
                height: 45,
              ),
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
                            SvgPicture.asset(
                                "assets/icons/paypal.svg"),
                            SizedBox(
                              width: 10,
                            ),
                            Text("PayPal")
                          ],
                        ),
                      ),
                      Tab(
                        child: Row(
                          children: [
                            SvgPicture.asset(
                                "assets/icons/mastercard.svg"),
                            SizedBox(
                              width: 10,
                            ),
                          Text("MasterCard")
                          ],
                        ),
                      ),
                      Tab(
                        child: Row(
                          children: [
                            SvgPicture.asset("assets/icons/visa.svg"),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Visa")
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.maxFinite,
                height: 255,
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        TextFieldWidgetA(
                          icons: "assets/icons/profile.svg",
                          widht: MediaQuery.of(context).size.width,
                          horizontal: 20, controller: controller1,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        TextFieldWidgetA(
                          icons: "assets/icons/email.svg",
                          horizontal: 20,
                          widht: MediaQuery.of(context).size.width, controller: controller2,
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        TextFieldWidgetA(
                          icons: "assets/icons/profile.svg",
                          widht: MediaQuery.of(context).size.width,
                          horizontal: 20, controller: controller3,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        TextFieldWidgetA(
                          icons: "assets/icons/email.svg",
                          widht: MediaQuery.of(context).size.width,
                          horizontal: 20, controller: controller4,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 24,
                            ),
                            TextFieldWidgetA(
                                icons: "assets/icons/calendar.svg",
                                widht: 160,
                                horizontal: 0, controller: controller5,),
                            SizedBox(
                              width: 10,
                            ),
                            SmallTextFieldWidget(
                                icons: "assets/icons/wallet.svg",
                                width: 160,
                                horizontal: 0)
                          ],
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        TextFieldWidgetA(
                          icons: "assets/icons/profile.svg",
                          widht: MediaQuery.of(context).size.width,
                          horizontal: 20, controller: controller7,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        TextFieldWidgetA(
                          icons: "assets/icons/email.svg",
                          widht: MediaQuery.of(context).size.width,
                          horizontal: 20, controller: controller6,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 24,
                            ),
                            TextFieldWidgetA(
                                icons: "assets/icons/calendar.svg",
                                widht: 160,
                                horizontal: 0, controller: controller8,),
                            SizedBox(
                              width: 10,
                            ),
                            SmallTextFieldWidget(
                                icons: "assets/icons/wallet.svg",
                                width: 160,
                                horizontal: 0)
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: ButtonWidget(
                    text: "Keyingisi",
                    height: 63,
                    circle: 10,
                    horizontal: 0,
                    width: 278,
                    onTap: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.fade,
                              child: EditProfileScreen()));
                    },
                    vertical: 0,
                    fontsize: 16,
                    color: Color(0xFf8BC83F),
                    textcolor: Colors.white),
              ),
              SizedBox(height: 30,)
            ],
          ),
        ));
  }
}
