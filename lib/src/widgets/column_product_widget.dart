import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColumnProductWidget extends StatefulWidget {
  final String name;
  final String image;
  final double star;
  final int price;
  final bool editor;
  final String location;

  const ColumnProductWidget(
      {super.key,
      required this.name,
      required this.image,
      required this.location,
      this.star = 0,
        this.editor =false,
      this.price = 0});

  @override
  State<ColumnProductWidget> createState() => _ColumnProductWidgetState();
}

class _ColumnProductWidgetState extends State<ColumnProductWidget> {
  bool like = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 230,
      decoration: BoxDecoration(
        color: Color(0xFFF5F4F8),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                padding: EdgeInsets.all(8),
                child: Image.asset(widget.image),
              ),
              Container(
                width: 144,
                height: 173,

                padding: EdgeInsets.symmetric(vertical: 13),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                   widget.editor?Row(children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              like = !like;
                            });
                          },
                          child: Container(
                              width: 25,
                              height: 25,
                              decoration: BoxDecoration(
                                color: like == false
                                    ? CupertinoColors.activeGreen
                                    : CupertinoColors.activeGreen,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Icon(
                                  like == false
                                      ? Icons.edit
                                      : Icons.edit_outlined,
                                  size: 11,
                                  color:
                                  like == false ? Colors.white : Colors.white)),
                        ),
                      ),
                      Spacer(),

                      GestureDetector(
                        onTap: () {
                          setState(() {
                            like = !like;
                          });
                        },
                        child: Container(
                            width: 25,
                            height: 25,
                            decoration: BoxDecoration(
                              color: like == false
                                  ? Colors.white70
                                  : CupertinoColors.activeGreen,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Icon(
                                like == false
                                    ? Icons.favorite_outline
                                    : Icons.favorite,
                                size: 11,
                                color:
                                like == false ? Colors.black : Colors.white)),
                      ),

                    ],):
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          like = !like;
                        });
                      },
                      child: Container(
                          width: 25,
                          height: 25,
                          decoration: BoxDecoration(
                            color: like == false
                                ? Colors.white70
                                : CupertinoColors.activeGreen,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Icon(
                              like == false
                                  ? Icons.favorite_outline
                                  : Icons.favorite,
                              size: 11,
                              color:
                                  like == false ? Colors.black : Colors.white)),
                    ),
                    Spacer(),
                    Container(
                      width: 80,
                      decoration: BoxDecoration(
                        color: Color(0xFF567286),
                        borderRadius: BorderRadius.circular(8)
                      ),

                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Row(
                          children: [
                            Text('\$ '+widget.price.toString(),style: TextStyle(fontSize:12,color: Color(0xffF5F4F8),fontWeight: FontWeight.bold)),
                            Text('\\month',style: TextStyle(fontSize:10,color: Color(0xffF5F4F8)))
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
SizedBox(height: 5,),
          Text(widget.name,style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Color(0xFF252B5C)),),
          SizedBox(height: 10,),
          Row(children: [
            SizedBox(width: 16,),
            Icon(Icons.star,color: Color(0xFF53587A),size: 11,),
            Text(widget.star.toString(),style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Color(0xff53587A)),),
            SizedBox(width: 6,),
            Icon(Icons.location_pin,color: Color(0xFF1F4C6B),size: 11,),
            Text(widget.location,style: TextStyle(fontSize:  10,color:Color(0xFF53587A)),),

          ],)
        ],
      ),
    );
  }
}
