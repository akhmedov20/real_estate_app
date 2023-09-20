import 'package:flutter/material.dart';
import 'package:house/src/ui/profile/transaction_detail/trancastion_reweiw.dart';

import '../../../utils/utils.dart';
import '../../../widgets/buttonwidget.dart';
import '../../../widgets/transaction_widget.dart';

class TransactionDetailScreen extends StatefulWidget {
  final String img;
  const TransactionDetailScreen({super.key, required this.img});

  @override
  State<TransactionDetailScreen> createState() => _TransactionDetailScreenState();
}

class _TransactionDetailScreenState extends State<TransactionDetailScreen> {
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
              onTap: (){
                Navigator.pop(context);
              },
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xFFF5F4F8),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Icon(Icons.arrow_back_ios_new_sharp,color: Color(0xFF252B5C),),
              ),

            ),

          ],
        ),
        title: Text('Transaction Detail',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.black),),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20*h,),
              TransactionWidget(name: 'Sky Danodelis Aparment', image: 'assets/images/Shape.png', location: 'Jakata, Indonesia',),
              SizedBox(height: 25*h,),
              Text(
                'Transaction Detail',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF252B5C)),
              ),
              SizedBox(height: 23*h,),
              Container(width: MediaQuery.of(context).size.width,
              height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: Color(0xFFECEDF3))
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Text('Check in ',style: TextStyle(  color: Color(0xFF53577A),
                            fontSize: 12,
                          ),),
                          Spacer(),
                          Text('11/28/2021',style: TextStyle(  color: Color(0xFF53577A),
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                           ),),
                        ],
                      ),
                      SizedBox(height: 15*h,),
                      Row(
                        children: [
                          Text('Check out',style: TextStyle(  color: Color(0xFF53577A),
                            fontSize: 12,
                          ),),
                          Spacer(),
                          Text('01/28/2022',style: TextStyle(  color: Color(0xFF53577A),
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                           ),),
                        ],
                      ),
                      SizedBox(height: 15*h,),
                      Row(
                        children: [
                          Text('Owner name',style: TextStyle(  color: Color(0xFF53577A),
                            fontSize: 12,
                          ),),
                          Spacer(),
                          Text('Anderson',style: TextStyle(  color: Color(0xFF53577A),
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                           ),),
                        ],
                      ),
                      SizedBox(height: 15*h,),
                      Row(
                        children: [
                          Text('Transaction type',style: TextStyle(  color: Color(0xFF53577A),
                            fontSize: 12,
                          ),),
                          Spacer(),
                          Text('Rent',style: TextStyle(  color: Color(0xFF53577A),
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                           ),),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 25,),
              Text(
                'Payment Detail',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF252B5C)),
              ),
              SizedBox(height: 20,),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 123,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(25),
                        topLeft: Radius.circular(25)),
                    border: Border.all(color: Color(0xFFECEDF3))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 24,
                      ),
                      Row(
                        children: [
                          Text('Period time'),
                          Spacer(),
                          Text('2 month'),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Text('Monthly payment '),
                          Spacer(),
                          Text('\$ 220'),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Text('Discount'),
                          Spacer(),
                          Text('- \$ 88 '),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 70,
                decoration: BoxDecoration(
                    color: Color(0xFFF5F4F8),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(25),
                        bottomLeft: Radius.circular(25))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Total',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF252B5C)),
                      ),
                      Spacer(),
                      Text(
                        '\$ 352',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF252B5C)),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Payment Method' ,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF252B5C)),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(color: Color(0xFFECEDF3))
                ),
                child: Row(
                  children: [
                    SizedBox(width: 16,),
                    Image.asset('assets/images/paypal.png'),
                    SizedBox(width: 10,),
                    Text('••••••an@email.com'),
                  ],
                ),
              ),
              SizedBox(height: 25,),
              Text(
                'Love the estate? ',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF252B5C)),
              ),
              SizedBox(height: 15,),
              ButtonWidgetSh(text: 'Click here to add review', onTap: (){Navigator.push(context, MaterialPageRoute(builder: (builder){
                return AddReviewScreen();
              }));},expand: true,),
              SizedBox(height: 15,)





            ],
          ),
        ),
      ),
    );
  }
}
