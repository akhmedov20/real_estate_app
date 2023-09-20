import 'package:flutter/material.dart';

class RentWidget extends StatefulWidget {
  final String price;
  final String image;
  final String name;
  final double star;
  final String location;
  final String month;

  RentWidget(
      {super.key,
        required this.price,
        required this.image,
        required this.name,
        required this.star,
        required this.location,
        this.month = 'month'});

  @override
  State<RentWidget> createState() => _RentWidgetState();
}

class _RentWidgetState extends State<RentWidget> {
  bool _like = false;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 16),
        width: 160,
        height: 240,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Color(0xFfffF5F4F8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 180,
              child: Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    height: 180,
                    width: MediaQuery.of(context).size.width,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(widget.image,fit: BoxFit.cover,)),
                  ),
                  Positioned(
                    top: 15,
                    right: 15,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _like = !_like;
                        });
                      },
                      child: Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: _like ? Colors.green : Colors.white),
                        child: Icon(
                          _like ? Icons.favorite : Icons.favorite_outline,
                          color: _like ? Colors.white : Colors.red,size: 15,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 18,
                    bottom: 18,
                    child: Container(
                      height: 25,
                      width: 76,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFF234F68B0).withOpacity(0.69),
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 8 ,),
                          Text(
                            "\$ ${widget.price}",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w700,color: Colors.white),
                          ),
                          Text(
                            "/${widget.month}",
                            style: TextStyle(
                                fontSize: 8, fontWeight: FontWeight.w700,color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18),
              child: Text(widget.name,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                  )),
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(width: 15,),
                Icon(Icons.star,size: 13,color: Colors.amber,),
                Text(widget.star.toString(),
                    style:
                    TextStyle(fontSize: 10, fontWeight: FontWeight.w700)),
                SizedBox(width: 8,),
                Icon(Icons.location_on,size: 13,color: Color(0xFF252B5C),),
                SizedBox(width: 8,),
                Text(widget.location,
                    style: TextStyle(fontSize: 8, fontWeight: FontWeight.w700))
              ],
            ),
          ],
        ));
  }
}
