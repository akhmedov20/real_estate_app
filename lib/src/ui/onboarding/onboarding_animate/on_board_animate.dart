import 'package:flutter/material.dart';

import '../../auth/auth_screen.dart';
import '../onBoarding_screen/onboar_screen.dart';


class OnBoardAnimate extends StatefulWidget {
  OnBoardAnimate({super.key});


  @override
  State<OnBoardAnimate> createState() => _OnBOardAnimateState();
}
PageController _pageController = PageController();
int _currentIndex = 0;

class _OnBOardAnimateState extends State<OnBoardAnimate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: SizedBox(
                    width:75,
                    height: 75,
                    child: Image.asset('assets/images/icon.png',fit: BoxFit.cover,)),
              ),
              Spacer(
              ),
              GestureDetector(
                onTap: (){
                  Navigator.popUntil(context, (route) => route.isFirst);
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                    return AuthScreen();
                  }));
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Container(
                    width: 86,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color(0xFFDFDFDF),
                      borderRadius: BorderRadius.circular(100)
                    ),
                    child: Center(child: Text('Skip')),
                  ),
                ),
              )
            ],
          ),
          Expanded(child: Stack(
            children: [
              PageView(
                controller: _pageController,
                onPageChanged: (i){
                  _currentIndex=i;

                },
                children: [
                  OnBoarding(text: 'Eng yaxshi joyni toping yaxshi narxda qolish uchun', image: 'assets/images/onimage1.png', text2: 'Lorem ipsum dolor sit amet, consecteturadipiscing elit, sed.'),
                  OnBoarding(text: 'Mulkingizni tezda soting faqat bir marta bosish bilan', image: 'assets/images/onimage2.png', text2: 'Lorem ipsum dolor sit amet, consecteturadipiscing elit, sed.'),
                  OnBoarding(text: 'Uchun mukammal tanlovni toping sizning kelajakdagi uyingiz', image: 'assets/images/onimage3.png', text2: 'Lorem ipsum dolor sit amet, consecteturadipiscing elit, sed.'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Padding(
                    padding: const EdgeInsets.only(top: 550,bottom: 20,right: 20),
                    child: _currentIndex==1 || _currentIndex==2 || _currentIndex==3?GestureDetector(
                      onTap: (){
                        setState(() {
                          if(_currentIndex==1) {
                            setState(() {
                              print(_currentIndex);
                              _currentIndex  =0;
                              print(_currentIndex);
                              _pageController.animateToPage(0, duration: Duration(microseconds: 100000), curve:Curves.easeInOut);
                            });
                          } else if(_currentIndex==2){
                            setState(() {
                              _currentIndex  =1;
                              _pageController.animateToPage(1, duration: Duration(microseconds: 300), curve:Curves.easeInOut);
                            });
                          }



                        });
                      },
                      child: Container(width: 54,
                      height: 54,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50)
                      ),
                      child: Center(child: Icon(Icons.arrow_back_ios_rounded,color: Colors.black,)),),
                    ):SizedBox()
                  ),
                  GestureDetector(
                    onTap: (){
                      if(_currentIndex==0) {
                        setState(() {
                          print(_currentIndex);
                          _currentIndex  =1;
                          print(_currentIndex);
                          _pageController.animateToPage(1, duration: Duration(microseconds: 100000), curve:Curves.easeInOut);
                        });
                      } else if(_currentIndex==1){
                        setState(() {
                          _currentIndex  =2;
                          print(_currentIndex);
                          _pageController.animateToPage(2, duration: Duration(microseconds: 300), curve:Curves.easeInOut);
                        });
                      }
                      else if(_currentIndex==2) {
                        setState(() {
                          Navigator.popUntil(context, (route) => route.isFirst);
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                            return AuthScreen();
                          }));
                        });
                      }

                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 550,bottom: 20),
                      child: Center(
                        child: Container(
                          width: 190,
                          height: 54,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xFF8BC83F),
                          ),
                          child: Center(child: Text(_currentIndex==1 || _currentIndex==0?'Keyingi':'Kirish',style: TextStyle(fontSize:16,fontWeight: FontWeight.bold,color: Colors.white ),)),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ))
        ],
      ),
    );
  }
}
