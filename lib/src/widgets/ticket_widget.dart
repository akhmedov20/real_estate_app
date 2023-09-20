import 'package:flutter/material.dart';

class TicketWidget extends StatelessWidget {
  final String name;
  const TicketWidget({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 85,
        decoration: BoxDecoration(
          color: Color(0xFFD8DED1),
          borderRadius: BorderRadius.circular(20),
        ),
        child:Row(
          children: [
            SizedBox(width: 16,),
            Container(
              width: 53,
              height: 53,
              decoration: BoxDecoration(
                color: Color(0xff234F68),
                borderRadius: BorderRadius.circular(17),
              ),
              child: Icon(Icons.airplane_ticket_outlined,color: Colors.white,),
            ),
            SizedBox(width: 16,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Color(0xFF252B5C)),),
                SizedBox(height: 3,),
                Text('Click to use this voucher',style: TextStyle(fontSize: 9,color: Color(0xFF53587A)),)
              ],
            )
          ],
        ),
      ),
    );
  }
}
