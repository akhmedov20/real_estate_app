import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TransactionWidget extends StatefulWidget {
  final String name;
  final String image;
  final String location;

  const TransactionWidget({super.key,required this.name,required this.image, required this.location});

  @override
  State<TransactionWidget> createState() => _TransactionWidgetState();
}

class _TransactionWidgetState extends State<TransactionWidget> {
  bool like = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 156,
      decoration: BoxDecoration(
        color: Color(0xFFF5F4F8),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        children: [
          Stack(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child:Image.asset(widget.image),
              ),
              Container(width: 168,height: 140,
              padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: (){

                      setState(() {
                        like=!like;


                      });
                    },
                    child: Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                          color: like==false?Colors.white70:CupertinoColors.activeGreen,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Icon(like==false?Icons.favorite_outline:Icons.favorite,size: 11,color: like==false?Colors.black:Colors.white)),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(width: 54,height: 24,
                    decoration: BoxDecoration(
                      color: Color(0xFF1F4C6B),
                      borderRadius: BorderRadius.circular(8)
                    ),
                    child: Center(child: Text('Apartament',style:TextStyle(fontSize: 8,color: Colors.white),)),),
                  )
                ],
              ),)
            ],
          ),
          SizedBox(width: 6,),
          Expanded(child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 16,),
            SizedBox(
                width: 100,
                child: Text(widget.name,style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Color(0xFF252B5C)),)),
              SizedBox(height: 8,),
              Row(
                children: [
                  Icon(Icons.location_pin,color: Color(0xFF1F4C6B),size: 11,),
                  Text(widget.location,style: TextStyle(fontSize:  10,color:Color(0xFF53587A)),),
                ],
              ),
              SizedBox(height: 23,),
              Row(
                children: [
                  Spacer(),
                  Container(width: 70,height: 47,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white
                  ),
                  child: Center(child: Text('Rent',style: TextStyle(fontSize: 11),)),),

                  SizedBox(width: 17,)
                ],
              )


          ],))
        ],
      ),
    );
  }
}
