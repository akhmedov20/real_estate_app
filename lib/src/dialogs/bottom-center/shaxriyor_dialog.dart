import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../ui/add listing/add_listing_screen.dart';
import '../../ui/profile/profile_screen.dart';
import '../../widgets/buttonwidget.dart';
import '../../widgets/buy_card_widget.dart';
import '../../widgets/text_field_widget.dart';
import '../../widgets/ticket_widget.dart';

class ShowBottomDialog {
  static showVoucherDialog(
      BuildContext context, TextEditingController controller) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return StatefulBuilder(builder: (ctx, setState) {
            return SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                height: 530,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Add Voucher',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    TextFieldWidget(
                        controller: controller,
                        hint: 'Type your voucher',
                        icon: Icon(Icons.airplane_ticket_outlined)),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Your Available vouchers',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 16),
                    TicketWidget(name: 'HLWN40'),
                    TicketWidget(name: 'HJV76'),
                    ButtonWidgetSh(
                      text: 'Apply Voucher',
                      expand: true,
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    SizedBox(
                      height: 5,
                    )
                  ],
                ),
              ),
            );
          });
        });
  }

  static BuyyedRentDialog(
      BuildContext context,
      ) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            width: MediaQuery.of(context).size.width,
            height: 467,
            child: Column(
              children: [
                SizedBox(height: 40,),
                Image.asset('assets/images/Succes.png'),
                SizedBox(height: 30,),
                Text('Your transaction is',style: TextStyle(color:Color(0xFF252B5C),fontSize: 25),),
                Text('Success',style: TextStyle(color:Color(0xFF1F4C6B),fontSize: 25,fontWeight: FontWeight.bold),),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: ButtonWidgetSh(text: 'Continue Exploring',expand: true, onTap: (){Navigator.pop(context);}),
                )

              ],
            ),
          );
        });
  }
  static ChangePayment(
      BuildContext context,
      ) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            width: MediaQuery.of(context).size.width,
            height: 350,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text('Change Payment',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0xFF252B5C)),),
                ),
                SizedBox(height: 20,),
                SizedBox(height: 180,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      BuyCardWidget(money: '31,250'),
                      BuyCardWidget(money: '87,242',visa: true,),
                      BuyCardWidget(money: '6,232'),
                    ],
                  ),),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: ButtonWidgetSh(expand: true,text: 'Select Payment', onTap: (){Navigator.pop(context);}),
                )



              ],
            ),
          );
        });
  }
  static ListningSucces(
      BuildContext context,
      ) {
    showModalBottomSheet(

        context: context,
        builder: (BuildContext context) {
          return Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:  BorderRadius.only(topLeft: Radius.circular(50),topRight:  Radius.circular(50))

            ),

            width: MediaQuery.of(context).size.width,
            height: 467,
            child: Column(
              children: [
                SizedBox(height: 20,),
                Image.asset('assets/images/Succes.png'),
                SizedBox(height: 20,),
                Text('Your listing is now ',style: TextStyle(color:Color(0xFF252B5C),fontSize: 25),),
                Text('published ',style: TextStyle(color:Color(0xFF1F4C6B),fontSize: 25,fontWeight: FontWeight.bold),),
                SizedBox(height: 15,),
                Text('Lorem ipsum dolor sit amet, consectetur.'),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (builder){
                              return AddListingScreen();
                            }));
                          },
                          child: Container(
                            height: 55,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xFFF5F4F8)
                            ),
                            child: Center(child: Text('Add more',style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xFF252B5C),fontSize: 16
                            ),),),
                          ),
                        ),
                      ),
                      SizedBox(width: 10,),
                      ButtonWidgetSh(text: 'Finish', onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (builder){
                          return ProfileScreen();
                        }));
                      }),
                    ],
                  ),
                ),
                SizedBox(height: 24,)

              ],
            ),
          );
        });
  }

  static ListningError(
      BuildContext context,
      ) {
    showModalBottomSheet(

        context: context,
        builder: (BuildContext context) {
          return Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:  BorderRadius.only(topLeft: Radius.circular(50),topRight:  Radius.circular(50))

            ),

            width: MediaQuery.of(context).size.width,
            height: 467,
            child: Column(
              children: [
                SizedBox(height: 20,),
                Image.asset('assets/images/error.png'),
                SizedBox(height: 20,),
                Text('Aw snap, Something ',style: TextStyle(color:Color(0xFF252B5C),fontSize: 25),),
                Text('error happened',style: TextStyle(color:Color(0xFF1F4C6B),fontSize: 25,fontWeight: FontWeight.bold),),
                SizedBox(height: 15,),
                Text('Lorem ipsum dolor sit amet, consectetur.'),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (builder){
                              return ProfileScreen();
                            }));
                          },
                          child: Container(
                            height: 55,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xFFF5F4F8)
                            ),
                            child: Center(child: Text('close',style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xFF252B5C),fontSize: 16
                            ),),),
                          ),
                        ),
                      ),
                      SizedBox(width: 10,),
                      ButtonWidgetSh(text: 'Retry', onTap: (){Navigator.pop(context);}),
                    ],
                  ),
                ),
                SizedBox(height: 24,)

              ],
            ),
          );
        });
  }
}
