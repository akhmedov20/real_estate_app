import 'package:flutter/cupertino.dart';

import '../textStyle/textsyle_widget.dart';

class PlusMinus extends StatefulWidget {
  final String text;
  const PlusMinus({Key? key, required this.text}) : super(key: key);

  @override
  State<PlusMinus> createState() => _PlusMinusState();
}

class _PlusMinusState extends State<PlusMinus> {
  void add() {
    setState(() {
      _n++;
    });
  }
  void minus() {
    setState(() {
      if (_n != 0)
        _n--;
    });
  }
  int _n = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Color(0xFFF5F4F8)
      ),
      child: Row(
        children: [
          SizedBox(width: 26,),
          Text(widget.text,style: Appstyle.thirteen(Color(0xff252B5C)),),
          Spacer(),
          GestureDetector(
            onTap: (){
              minus();
            },
            child: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xffA1A5C1)
              ),
              child: Center(child: Icon(CupertinoIcons.minus,size: 10,color: CupertinoColors.white,),),
            ),
          ),
          SizedBox(width: 15,),
          Text(_n.toString(),style: Appstyle.sixteen(Color(0xff252B5C)),),
          SizedBox(width: 15,),
          GestureDetector(
            onTap: (){
              add();
            },
            child: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xffA1A5C1)
              ),
              child: Center(child: Icon(CupertinoIcons.plus,size: 10,color: CupertinoColors.white,),),
            ),
          ),
          SizedBox(width: 15,),
        ],
      ),
    );
  }
}
