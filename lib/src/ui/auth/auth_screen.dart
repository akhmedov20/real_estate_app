import 'package:flutter/material.dart';
import 'package:house/src/ui/auth/register/register_screen.dart';

import 'login_screen/login_screen.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset('assets/images/logimg.png'),
              Image.asset('assets/images/logimg1.png'),


            ],),
          SizedBox(height: 5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Image.asset('assets/images/logimg2.png'),
            Image.asset('assets/images/logimg3.png'),


          ],),
          SizedBox(height: 15,),
          Text('Korishga tayyormisiz?',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
          SizedBox(height: 20,),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (builder){
                return LoginScreen();
              }));
            },
            child: Container(
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFF8BC83F)
                ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.email_outlined,color: Colors.white,),
                  SizedBox(width: 5,),
                  Text('Email orqali kirish',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),)
                ],
              ),
              ),
          ),
              SizedBox(height: 30,),
              Row(
                children: [
                  Expanded(child: Container(
                    height: 2,
                    color: Colors.grey.withOpacity(0.3),
                  )),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text('OR',style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Color(0xFFA1A5C1)),),
                  ),
                  Expanded(child: Container(
                    height: 2,
                    color: Colors.grey.withOpacity(0.3),
                  )),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 160,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                    color: Color(0xFFF5F4F8)),
                    child: Image.asset('assets/images/google.png'),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    width: 160,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                    color: Color(0xFFF5F4F8)),
                    child: Image.asset('assets/images/facebook.png'),
                  ),

                ],
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Hisobingiz yo'qmi?",style: TextStyle(fontSize: 12),),
                  GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (builder){
                          return RegisterScreen();
                        }));
                      },
                      child: Text("Ro'yhatdan o'ting",style: TextStyle(fontSize: 12,color: Color(0xFF1F4C6B),fontWeight: FontWeight.bold),))
                ],
              )


            ],
          ),
        ),
      ),
    );
  }
}
