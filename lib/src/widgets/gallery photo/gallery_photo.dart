import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Gallery extends StatefulWidget {
  final String image;
  const Gallery({Key? key, required this.image}) : super(key: key);

  @override
  State<Gallery> createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 161,
      color: CupertinoColors.white,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
              child: Image.asset(widget.image,width: 159,height: 161,fit: BoxFit.cover,)),
          Positioned(
            right: 20,
            child: GestureDetector(
              onTap: (){},
              child: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xFF8BC83F)
                ),
                child: Center(child: Icon(Icons.close,size: 15,color: CupertinoColors.white,),),
              ),
            ),
          )
        ],
      ),
    );
  }
}
