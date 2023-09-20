import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:pinput/pinput.dart';

import '../../../widgets/buttonWidget/button_widget.dart';
import '../../account-setup/account_setup_screen.dart';


class VerificationScreen extends StatefulWidget {
  final String email;
  const VerificationScreen({super.key, required this.email});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}
TextEditingController controller = TextEditingController();

class _VerificationScreenState extends State<VerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
              Text('Kodni kiriting',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,),),
              SizedBox(height: 20,),
              Row(
                children: [
                  Text(' 4 talik kod'),
                  SizedBox(width: 3,),
                  Text(widget.email,style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xFF1F4C6B)),),
                  SizedBox(width: 3,),
                  Text('ga yuborildi')
                ],
              ),
              SizedBox(height: 90,),
              Center(
                child: Pinput(
                  controller: controller,
                ),
              ),
              Spacer(),
              Center(
                child: Container(
                  width: 90,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                      color: Color(0xFFF5F4F8)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.timer_outlined,color: Colors.black,),
                      SizedBox(width: 8,),
                      Text('30')
                    ],
                  ),
                ),
                
              ),
              SizedBox(height: 10,),
              Center(child: Text('Didn’t receive the OTP? Resend OTP',)),
              SizedBox(height: 20,),
              ButtonWidget(text: "Davom etish", height: 70, circle: 10, horizontal: 24, width: MediaQuery.of(context).size.width,
                  onTap: (){
                Navigator.push(context, PageTransition(child: AccountSetupScreen(), type: PageTransitionType.fade,alignment: Alignment.bottomCenter));
                  }, vertical: 0, fontsize: 16, color: Color(0xFF8BC83F), textcolor: Colors.white),
              SizedBox(height: 40,),
            ],
          ),
        ),
      ),
    );
  }
}
