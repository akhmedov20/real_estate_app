import 'package:flutter/material.dart';

import '../../textStyle/textsyle_widget.dart';

class ThirdRentWidget extends StatefulWidget {
  final String image;
  final String house;
  final String housename;
  final String rating;
  final String location;
  final String price;
  const ThirdRentWidget({Key? key, required this.image, required this.house, required this.housename, required this.rating, required this.location, required this.price}) : super(key: key);

  @override
  State<ThirdRentWidget> createState() => _ThirdRentWidgetState();
}

class _ThirdRentWidgetState extends State<ThirdRentWidget> {
  @override
  bool _pop = false;
  Widget build(BuildContext context) {
    return Container(
      width: 370,
      height: 146,
      decoration: BoxDecoration(
        color: Color(0xFFF5F4F8),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(children: [
        Stack(children: [
          Container(
            margin: EdgeInsets.only(left: 10,top: 5),
            width: 188,
            height: 130,
            child: ClipRRect(borderRadius: BorderRadius.circular(18),
                child: Image.asset(widget.image,fit: BoxFit.cover,)),
          ),
          GestureDetector(
            onTap: (){
              setState(() {
                _pop = !_pop;
              });
            },
            child: Container(
              margin: EdgeInsets.only(left: 18,top: 18),
              width: 25,
              height: 25,
              decoration: BoxDecoration(
                  color:  _pop ? Color(0xFF8BC83F) : Colors.white,
                  borderRadius: BorderRadius.circular(30)
              ),
              child: Center(
                child: Icon( _pop ? Icons.favorite : Icons.favorite_border,size: 12,
                  color:  _pop ? Colors.white : Colors.grey,),),
            ),
          ),
          Positioned(
            bottom: 10,
            left: 20,
            child: Container(
              width: 60,
              height: 30,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(0xFF234F68)
              ),
              child: Center(child: Text(widget.house,style: Appstyle.ten(Colors.white),),),
            ),
          )
        ],),
        Container(
          width: 150,
          height: 180,
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
            SizedBox(height: 16,),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: SizedBox(
                  width: 108,
                  height: 46,
                  child: Text(widget.housename,style: Appstyle.fourteen(Color(0xFF252B5C)),)),
            ),
            SizedBox(height: 8,),
            Row(children: [
              SizedBox(width: 16,),
              Icon(Icons.star,color: Colors.amber,size: 15,),
              SizedBox(width: 5,),
              Text(widget.rating,style: Appstyle.twelve(Color(0xFF53587A)),)
            ],),
            SizedBox(height: 8,),
            Row(children: [
              SizedBox(width: 16,),
              Icon(Icons.location_on,color: Color(0xFF1F4C6B),size: 15,),
              SizedBox(width: 5,),
              Text(widget.location,style: Appstyle.ten(Color(0xFF53587A)),)
            ],),
          ],),
        )
      ],),
    );
  }
}
