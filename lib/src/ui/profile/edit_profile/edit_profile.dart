import 'package:flutter/material.dart';

import '../../../widgets/buttonwidget.dart';
import '../../../widgets/text_field_widget.dart';

class EditProfile extends StatefulWidget {
  final String name;
  final String email;
  final String number;
  const EditProfile({super.key, required this.name, required this.email, required this.number});

  @override
  State<EditProfile> createState() => _EditProfileState();
}


class _EditProfileState extends State<EditProfile> {
  bool link = false;

  @override
  Widget build(BuildContext context) {

    TextEditingController controller = TextEditingController(text: widget.name);
    TextEditingController controller1 = TextEditingController(text: widget.number);
    TextEditingController controller2= TextEditingController(text: widget.email);
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
        title: Text('Edit Profile',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.black),),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            SizedBox(height: 25,),
            Center(child: Image.asset('assets/images/Profile.png'),),
            SizedBox(height: 20,),
            TextFieldWidget(controller: controller, hint: 'name', icon: Icon(Icons.person_2_outlined,color: Color(0xFF252B5C),)),
            SizedBox(height: 15,),
            TextFieldWidget(controller: controller1, hint: 'name', icon: Icon(Icons.phone_outlined,color: Color(0xFF252B5C),)),
            SizedBox(height: 15,),
            TextFieldWidget(controller: controller2, hint: 'name', icon: Icon(Icons.email_outlined,color: Color(0xFF252B5C),)),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: (){
                    setState(() {
                      link=true;

                    });
                  },
                  child: Container(height: 70,width: 155,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color:link?Color(0xFF234F68):Color(0xFFF5F4F8),
                    ),
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/google.png'),
                        SizedBox(width: 10,),
                        Text(link?'Unlink':'Link',style: TextStyle(color: link?Colors.white:Colors.black),)
                      ],
                    ),
                  ),
                ),

                GestureDetector(
                  onTap: (){
                    setState(() {
                      link=false;
                    });
                  },
                  child: Container(height: 70,width: 155,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(link?0xFFF5F4F8:0xFF234F68),
                    ),
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/facebook.png'),
                        SizedBox(width: 10,),
                        Text(link?'Link':'Unlink',style: TextStyle(color: link?Colors.black:Colors.white),)
                      ],
                    ),
                  ),
                ),

              ],),
            Spacer(),
            ButtonWidgetSh(text: 'Choose location', onTap: (){
              Navigator.pop(context);
            },expand: true,),
            SizedBox(height: 20,)

          ],
        ),
      ),

    );
  }
}