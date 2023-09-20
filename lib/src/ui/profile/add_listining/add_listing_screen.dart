import 'package:flutter/material.dart';

import '../../../utils/utils.dart';
import '../../../widgets/buttonwidget.dart';
import '../../../widgets/text_field_widget.dart';
import 'add_estate.dart';

class AddListingScreen extends StatefulWidget {
  const AddListingScreen({super.key});

  @override
  State<AddListingScreen> createState() => _AddListingScreenState();
}

TextEditingController controller = TextEditingController();
int currentIndex = 0;

class _AddListingScreenState extends State<AddListingScreen> {
  @override
  Widget build(BuildContext context) {
    double h = Utils.getHeight(context);
    double w = Utils.getWidth(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
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
          'Add Listning',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24 * w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30 * h,
            ),
            Text(
              'Hi Josh, Fill detail of your',
              style: TextStyle(
                color: Colors.black,
                fontSize: 25 * h,
                fontWeight: FontWeight.w500,
                height: 1.60,
                letterSpacing: 0.75,
              ),
            ),
            Text(
              'real estate',
              style: TextStyle(
                color: Color(0xFF1F4C6B),
                fontSize: 25 * h,
                fontWeight: FontWeight.bold,
                height: 1.60,
                letterSpacing: 0.75,
              ),
            ),
            SizedBox(
              height: 25 * h,
            ),
            TextFieldWidget(
                controller: controller,
                hint: 'name ',
                icon: Icon(
                  Icons.home_outlined,
                  color: Color(0xFF252B5C),
                )),
            SizedBox(
              height: 25 * h,
            ),
            Text(
              'Listing type',
              style: TextStyle(
                color: Colors.black,
                fontSize: 25 * h,
                fontWeight: FontWeight.bold,
                height: 1.60,
                letterSpacing: 0.75,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 70,
                    height: 47,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFF234F68),
                    ),
                    child: Center(
                        child: Text(
                      'Rent',
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
                    width: 70,
                    height: 47,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFF234F68),
                    ),
                    child: Center(
                        child: Text(
                      'Sell',
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
              height: 30 * h,
            ),
            Text(
              'Listing type',
              style: TextStyle(
                color: Colors.black,
                fontSize: 25 * h,
                fontWeight: FontWeight.bold,
                height: 1.60,
                letterSpacing: 0.75,
              ),
            ),
            SizedBox(
              height: 15 * h,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      currentIndex = 0;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(currentIndex==0?0xFF234F68:0xFFF5F4F8)
                    ),
                    child: Center(
                        child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 24 * w, vertical: 17 * h),
                      child: Text(
                        'House',
                        style: TextStyle(
                            fontSize: 10 * h,
                            fontWeight: FontWeight.bold,
                            color:currentIndex==0?Colors.white:Colors.black),
                      ),
                    )),
                  ),
                ),
                SizedBox(
                  width: 10 * w,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      currentIndex = 1;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(currentIndex==1?0xFF234F68:0xFFF5F4F8),
                    ),
                    child: Center(
                        child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 24 * w, vertical: 17 * h),
                      child: Text(
                        'Apartment',
                        style: TextStyle(
                            fontSize: 10 * h,
                            fontWeight: FontWeight.bold,
                            color: currentIndex==1?Colors.white:Colors.black),
                      ),
                    )),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16 * h,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      currentIndex = 2;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(currentIndex==2?0xFF234F68:0xFFF5F4F8),
                    ),
                    child: Center(
                        child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 24 * w, vertical: 17 * h),
                      child: Text(
                        'Hotel',
                        style: TextStyle(
                            fontSize: 10 * h,
                            fontWeight: FontWeight.bold,
                            color: currentIndex==2?Colors.white:Colors.black),
                      ),
                    )),
                  ),
                ),
                SizedBox(
                  width: 10 * w,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      currentIndex = 3;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(currentIndex==3?0xFF234F68:0xFFF5F4F8),
                    ),
                    child: Center(
                        child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 24 * w, vertical: 17 * h),
                      child: Text(
                        'Villa',
                        style: TextStyle(
                            fontSize: 10 * h,
                            fontWeight: FontWeight.bold,
                            color: currentIndex==3?Colors.white:Colors.black),
                      ),
                    )),
                  ),
                ),
                SizedBox(
                  width: 10 * w,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      currentIndex = 4;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(currentIndex==4?0xFF234F68:0xFFF5F4F8),
                    ),
                    child: Center(
                        child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 24 * w, vertical: 17 * h),
                      child: Text(
                        'Cottage',
                        style: TextStyle(
                            fontSize: 10 * h,
                            fontWeight: FontWeight.bold,
                            color: currentIndex==4?Colors.white:Colors.black),
                      ),
                    )),
                  ),
                ),
              ],
            ),
            Spacer(),
            ButtonWidgetSh(
              text: 'Next',
              onTap: () {
                if(controller.text.isNotEmpty){
                  Navigator.push(context, MaterialPageRoute(builder: (builder) {
                    return ListingMapAdd();
                  }));
                  controller.clear();
                }

              },
              expand: true,
            ),
            SizedBox(
              height: 26 * h,
            )
          ],
        ),
      ),
    );
  }
}
