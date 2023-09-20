import 'package:flutter/material.dart';

class AddReviewScreen extends StatefulWidget {
  const AddReviewScreen({super.key});

  @override
  State<AddReviewScreen> createState() => _AddReviewScreenState();
}

class _AddReviewScreenState extends State<AddReviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Row(
          children: [
            SizedBox(
              width: 6,
            ),
            GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xFFF5F4F8),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Icon(Icons.arrow_back_ios_new_sharp,color: Color(0xFF252B5C),),
              ),

            ),

          ],
        ),
        title: Text('Add Review',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.black),),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30,),
            Text('Hi, how was your overall experience? ',style: TextStyle(color: Color(0xFF1F4C6B),
              fontSize: 25,
              fontWeight: FontWeight.bold),),
            SizedBox(height: 15,),
            Text('lorem ipsum dolor sit amet'),
            SizedBox(height: 30,),


          ],
        ),
      ),
    );
  }
}
