import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../textStyle/textsyle_widget.dart';

class SearchDialogWidget extends StatefulWidget {
  final String text;
  final double width;
  const SearchDialogWidget({Key? key, required this.text, required this.width}) : super(key: key);

  @override
  State<SearchDialogWidget> createState() => _SearchDialogWidgetState();
}

class _SearchDialogWidgetState extends State<SearchDialogWidget> {
  @override
  bool _push = false;
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        setState(() {
          _push = !_push;
        });
      },
      child: Container(
        margin: EdgeInsets.only(left: 5,right: 5),
        width: widget.width,
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: _push ? Color(0xFF1F4C6B) : Colors.white
        ),
        child: Center(child: Text(widget.text,
          style: Appstyle.twelve(_push ? Colors.white : Colors.black),),),
      ),
    );
  }
}
