import 'package:flutter/material.dart';

import '../../../utils/utils.dart';
import '../../../widgets/buttonwidget.dart';
import 'add_finish.dart';


class ListingImageAdd extends StatefulWidget {
  const ListingImageAdd({super.key});


  @override
  State<ListingImageAdd> createState() => _ListingImageAddState();
}

class _ListingImageAddState extends State<ListingImageAdd> {
  @override
  Widget build(BuildContext context) {
    double h = Utils.getHeight(context);
    double w = Utils.getWidth(context);

    return Scaffold(
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
        child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30 * h),
            Text(
              'Add photos to your listing',
              style: TextStyle(
                color: Colors.black,
                fontSize: 25 * h,
                fontWeight: FontWeight.w500,
                height: 1.60,
                letterSpacing: 0.75,
              ),
            ),
            SizedBox(height: 30*h,),
            Row(children: [
              Container(width: 160,height: 160,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
                child:Stack(
                  children: [
                    Image.asset('assets/images/shapaq.png'),
                    Positioned(
                      top: 0,
                        right:0,
                        child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color(0xFF8BC83F),
                      ),
                      child: Center(child: Icon(Icons.close,size: 13*h,color: Colors.white,),),

                    ))
                  ],
                )
              ),
              SizedBox(width: 10*w,),
              Container(width: 160,height: 160,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
                child:Stack(
                  children: [
                    Image.asset('assets/images/shapaq.png'),
                    Positioned(
                      top: 0,
                        right:0,
                        child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color(0xFF8BC83F),
                      ),
                      child: Center(child: Icon(Icons.close,size: 13*h,color: Colors.white,),),

                    ))
                  ],
                )
              ),
            ],),
            Row(children: [
              Container(width: 160,height: 160,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
                child:Stack(
                  children: [
                    Image.asset('assets/images/shapaq.png'),
                    Positioned(
                      top: 0,
                        right:0,
                        child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color(0xFF8BC83F),
                      ),
                      child: Center(child: Icon(Icons.close,size: 13*h,color: Colors.white,),),

                    ))
                  ],
                )
              ),
              SizedBox(width: 50*w,),
              Container(
                width: 78,
                height: 78,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Color(0xFFF5F4F8)
                ),
                child: Icon(Icons.add),
              )
            ],),

            Spacer(),
            ButtonWidgetSh(text: 'Next', onTap: (){Navigator.push(context, MaterialPageRoute(builder: (builder){
             return AddFinishScreen();
            }));},expand: true,),
            SizedBox(height:  20*h,)
          ],
        ),
      ),
    );
  }
}
