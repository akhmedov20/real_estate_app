import 'package:flutter/material.dart';

import '../../dialogs/bottom-center/shaxriyor_dialog.dart';
import '../../widgets/buttonwidget.dart';
import '../../widgets/transaction_widget.dart';


class BuyScreenDetail extends StatelessWidget {
  const BuyScreenDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Row(
          children: [
            SizedBox(
              width: 6,
            ),
            Container(
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
          ],
        ),
        title: Text(
          'Transaction summary',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TransactionWidget(
                name: 'Sky Dandelions Apartment',
                image: 'assets/images/Shape.png',
                location: 'Andijanda'),
            SizedBox(
              height: 30,
            ),
            Text(
              'Payment Detail',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
            Row(
              children: [
                Text(
                  'Payment Method',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                GestureDetector(
                  onTap: (){ShowBottomDialog.ChangePayment(context);},
                  child: Text(
                    'change',
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF234F68)),
                  ),
                ),
              ],
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
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ButtonWidgetSh(text: 'Pay rent', onTap: (){ShowBottomDialog.BuyyedRentDialog(context);}),
                SizedBox(width: 18,),
                Container(width: 54,height: 54,
                  decoration: BoxDecoration(
                    boxShadow:[
                      BoxShadow(
                          color: Color(0xFF8BC83F),
                          blurRadius: 70  ,
                          spreadRadius: 2


                      ),
                    ],
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white,
                  ),
                  child: Icon(Icons.navigate_next),
                )
              ],
            ),
            SizedBox(height: 20,)

          ],
        ),
      ),
    );
  }
}
