import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/utils.dart';

class TransactionWidgetPro extends StatefulWidget {
  const TransactionWidgetPro({super.key});

  @override
  State<TransactionWidgetPro> createState() => _TransactionWidgetProState();
}


class _TransactionWidgetProState extends State<TransactionWidgetPro> {
  bool like=false;
  @override
  Widget build(BuildContext context) {
    double h = Utils.getHeight(context);
    double w = Utils.getWidth(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4*w,vertical: 4*h),
      child: Container(
        width: 160*w,
        decoration: BoxDecoration(
          color: Color(0xFFF5F4F8),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0*w),
                  child: Image.asset('assets/images/transaction.png'),
                ),
                Padding(
                  padding:EdgeInsets.all(8.0*w),
                  child: Container(
                    width: 144*w,

                    height: 160*h,
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 111*w,top: 8*h),
                          child: GestureDetector(
                            onTap: (){
                              setState(() {
                                like=!like;


                              });
                            },
                            child: Container(
                                width: 25*w,
                                height: 25*h,
                                decoration: BoxDecoration(
                                  color: like==false?Colors.white70:CupertinoColors.activeGreen,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Icon(like==false?Icons.favorite_outline:Icons.favorite,size: 11,color: like==false?Colors.black:Colors.white)),
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: EdgeInsets.only(left: 95*w,bottom: 8*h),
                          child: Container(width: 41*w,height: 24*h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color(0xFF1F4C6B).withOpacity(0.7)
                          ),
                            child:Center(child: Text('Rent',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12,color: Colors.white),),),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding:EdgeInsets.symmetric(horizontal: 16*w),
              child: SizedBox(
                width: 130*w,
                  child: Text('Wings Towers',style: TextStyle(fontSize: 12*h,color: Color(0xFF252B5C),fontWeight: FontWeight.bold),maxLines: 1,)),
            ),
            SizedBox(height: 10*h,),
            Row(children: [
              SizedBox(width: 16*w,),
              Icon(Icons.timer_outlined,color: Colors.green,size: 9*h,),
              Text('November 21, 2021',style: TextStyle(fontSize: 8*h,color: Color(0xFF53587A)),)
            ],),


          ],

        ),
      ),
    );
  }
}
