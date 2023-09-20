import 'package:flutter/cupertino.dart';

import '../textStyle/textsyle_widget.dart';

class AgentWidget extends StatelessWidget {
  const AgentWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24),
      width: MediaQuery.of(context).size.width,
      height: 85,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xFFF5F4F8)
      ),
      child: Row(
        children: [
          SizedBox(width: 24,),
          ClipRRect(borderRadius: BorderRadius.circular(38),
              child: Image.asset("assets/images/selfi.png")),
          SizedBox(width: 24,),
          Container(
            width: 150,
            height: 35,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Anderson",style: Appstyle.fourteen(Color(0xFF252B5C)),),
                Text("Ko'chmas mulk agenti",style: Appstyle.ten2(Color(0xFF252B5C)),),
              ],
            ),
          ),
          Spacer(),
          Icon(CupertinoIcons.chat_bubble_text,color: CupertinoColors.black,),
          SizedBox(width: 20,)
        ],
      ),
    );
  }
}
