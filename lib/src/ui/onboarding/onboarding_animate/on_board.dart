import 'package:flutter/material.dart';

import 'on_board_animate.dart';


class OnBoard extends StatelessWidget {
  const OnBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
              width: MediaQuery.of(context).size.width,
              child: Image.asset('assets/images/oneimg.png',fit: BoxFit.cover,)),
          Container(
              width: MediaQuery.of(context).size.width,
              child: Image.asset('assets/images/bg2.png',fit: BoxFit.cover,)),
          Column(
           crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              Row(
                children: [
                  Spacer(),
                  Container(
                      width: 169,
                      height: 90,
                      child: Image.asset('assets/images/logoimg.png')),
                  Spacer(),
                ],
              ),
              Text('Rise',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 36,color: Colors.white)),
              Text('Real Estate',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 36,color: Colors.white)),
              Spacer(),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (builder){
                    return  OnBoardAnimate();
                  }));
                },
                child: Container(
                  width: 190,
                  height: 54,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFF8BC83F)
                  ),
                  child: Center(child: Text('Boshlash',style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),),),
                ),
              ),
              SizedBox(height: 70,)


            ],
          )
        ],
      ),
    );
  }
}
