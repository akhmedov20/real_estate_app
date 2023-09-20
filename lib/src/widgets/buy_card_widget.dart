import 'package:flutter/material.dart';

class BuyCardWidget extends StatelessWidget {
  final String money;
  final bool visa;

  const BuyCardWidget({super.key, required this.money, this.visa = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Container(
        width: 159,
        height: 180,
        child: Stack(
          children: [
            visa?Image.asset('assets/images/bluecard.png'):Image.asset('assets/images/greencard.png'),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 25,
                    height: 25,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Icon(Icons.check,size: 12,color: Colors.green,),
                  ),
                  SizedBox(height: 38,),
                  Text('•••••••• 1222',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white,letterSpacing: 2),),
                  Spacer(),
                  Text('Balanse',style: TextStyle(fontSize: 9,color: Colors.white,fontWeight: FontWeight.bold),),
                  SizedBox(height: 5,),
                  Row(
                    children: [
                      Text("\$"+' 31,250',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: Colors.white),),
                      Spacer(),
                      visa?Image.asset('assets/images/visa.png'):Image.asset('assets/images/mastercard.png')

                    ],
                  )

                ],
              ),
            )
          ],
        ),

      ),
    );
  }
}
