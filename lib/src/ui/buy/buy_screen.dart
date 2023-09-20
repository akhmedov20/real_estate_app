import 'package:flutter/material.dart';

import '../../dialogs/bottom-center/shaxriyor_dialog.dart';
import '../../widgets/buttonwidget.dart';
import '../../widgets/buy_card_widget.dart';
import '../../widgets/transaction_widget.dart';
import 'buy_screen_detail.dart';

class BuyScreen extends StatefulWidget {
  const BuyScreen({super.key});

  @override
  State<BuyScreen> createState() => _BuyScreenState();
}

class _BuyScreenState extends State<BuyScreen> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
              child: Icon(Icons.arrow_back_ios_new_sharp,color: Color(0xFF252B5C),),
            ),
          ],
        ),
        title: Text('Transaction review',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.black),),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TransactionWidget(name: 'Sky Danodelis Aparment', image: 'assets/images/Shape.png', location: 'Jakata, Indonesia',),
              SizedBox(height: 30,),
              Text('Period',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0xFF252B5C)),),
              SizedBox(height: 20,),
              Row(
                children: [
                  Container(
                    width: 155,
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFFF5F4F8),
                    ),
                    child:Row(
                      children: [
                        SizedBox(width: 16,),Icon(Icons.calendar_today_outlined,size: 20,),
                        SizedBox(width: 10,),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Check In',
                              hintStyle: TextStyle(fontSize: 12 ),
                              border: InputBorder.none,
                            ),

                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: 155,
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFFF5F4F8),
                    ),
                    child:Row(
                      children: [
                        SizedBox(width: 16,),Icon(Icons.calendar_today_outlined,size: 20,),
                        SizedBox(width: 10,),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Check Out',
                              hintStyle: TextStyle(fontSize: 12 ),
                              border: InputBorder.none,
                            ),

                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30,),
              Text('Note for Owner',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0xFF252B5C)),),
              SizedBox(height: 20,),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 70,
                decoration: BoxDecoration(
                  color: Color(0xFFF5F4F8),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Icon(Icons.message_outlined,size: 20,),
                    ),
                    Expanded(child: TextField(decoration: InputDecoration(border: InputBorder.none,hintText: 'Write your note in here',hintStyle: TextStyle(fontSize: 12 ),),)),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text('Note for Owner',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0xFF252B5C)),),
              SizedBox(
                height: 180,
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    children:[
                  BuyCardWidget(money: '•••••••• 1222',),
                  BuyCardWidget(money: '•••••••• 1222',visa: true,),
                  BuyCardWidget(money: '•••••••• 1222',),
                ] ),
              ),
              SizedBox(height: 20,),
              GestureDetector(
                onTap: (){
                  ShowBottomDialog.showVoucherDialog(context,controller);
                },
                child: Row(
                  children: [
                    Text('Have a voucher?',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    Spacer(),
                    Text('Click in here',style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Color(0xFF234F68)),),

                  ],
                ),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ButtonWidgetSh(text: 'Next', onTap: () {Navigator.push(context,MaterialPageRoute(builder: (builder){
                    return BuyScreenDetail();
                  }));},),
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
SizedBox(height: 16,)





            ],
          ),
        ),
      ),
    );
  }
}
