import 'package:flutter/material.dart';

import '../../../dialogs/bottom-center/shaxriyor_dialog.dart';
import '../../../utils/utils.dart';
import '../../../widgets/buttonwidget.dart';
import '../../../widgets/control_button.dart';
import '../../../widgets/smille_textButton.dart';
import '../../../widgets/text_field_widget.dart';


class AddFinishScreen extends StatefulWidget {
  const AddFinishScreen({super.key});

  @override
  State<AddFinishScreen> createState() => _AddFinishScreenState();
}

TextEditingController controller = TextEditingController();
TextEditingController controller1 = TextEditingController();

class _AddFinishScreenState extends State<AddFinishScreen> {
  @override
  Widget build(BuildContext context) {
    List room = ['<4', '4', '6', '>6'];
    double h = Utils.getHeight(context);
    double w = Utils.getWidth(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        leading: Row(
          children: [
            SizedBox(
              width: 6,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xFFF5F4F8),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Icon(
                  Icons.arrow_back_ios_new_sharp,
                  color: Color(0xFF252B5C),
                ),
              ),
            ),
          ],
        ),

        title: Text(
          'Add Listing',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24 * w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30 * h),
              Text(
                'Almost finish, complete the listing',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25 * h,
                  fontWeight: FontWeight.bold,
                  height: 1.60,
                  letterSpacing: 0.75,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                'Sell Price',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF252B5C)),
              ),
              SizedBox(
                height: 20 * h,
              ),
              TextFieldWidget(
                  controller: controller,
                  hint: 'price',
                  icon: Icon(
                    Icons.attach_money,
                    color: Color(0xFF252B5C),
                  )),
              SizedBox(
                height: 30 * h,
              ),
              Text(
                'Rent Price',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF252B5C)),
              ),
              SizedBox(
                height: 20 * h,
              ),
              TextFieldWidget(
                  controller: controller1,
                  hint: 'price',
                  icon: Icon(
                    Icons.attach_money,
                    color: Color(0xFF252B5C),
                  )),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 70 * w,
                      height: 47 * h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xFF234F68),
                      ),
                      child: Center(
                          child: Text(
                        'month',
                        style: TextStyle(
                            fontSize: 10 * h,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 70 * w,
                      height: 47 * h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xFF234F68),
                      ),
                      child: Center(
                          child: Text(
                        'yearly',
                        style: TextStyle(
                            fontSize: 10 * h,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                'Property Features',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF252B5C)),
              ),
              SizedBox(
                height: 20,
              ),
              ControlButton(title: 'Bedroom'),
              ControlButton(title: 'Bathroom'),
              ControlButton(title: 'Balcony'),
              SizedBox(
                height: 25 * h,
              ),
              Text(
                'Total Rooms',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF252B5C)),
              ),
              SizedBox(
                height: 19 * h,
              ),
              SizedBox(
                  height: 50,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: room.length,
                      itemBuilder: (context, i) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 7),
                          child: Container(
                            width: 90,
                            height: 50,
                            decoration: BoxDecoration(
                                color: Color(0xFFF5F4F8),
                                borderRadius: BorderRadius.circular(25)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset('assets/images/txt.png'),
                                SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  room[i],
                                  style: TextStyle(
                                    color: Color(0xFF242B5C),
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      })),
              SizedBox(
                height: 35,
              ),
              Text(
                'Environment / Facilities',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF252B5C)),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  SmileTextButton(text: 'Parking Lot'),
                  SmileTextButton(text: 'Pet Allowed'),
                ],
              ),
              Row(
                children: [
                  SmileTextButton(text: 'Garden'),
                  SmileTextButton(text: 'Gym'),
                  SmileTextButton(text: 'Park'),
                ],
              ),
              Row(
                children: [
                  SmileTextButton(text: 'Home theatre'),
                  SmileTextButton(text: 'Kid’s Friendly'),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              ButtonWidgetSh(text: 'Finish', onTap: () {
                if(controller.text.isNotEmpty && controller1.text.isNotEmpty){
                  ShowBottomDialog.ListningSucces(context);
                  controller.clear();
                  controller1.clear();

                }else{
                  ShowBottomDialog.ListningError(context);
                }
               },expand: true,),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
