import 'package:flutter/material.dart';

import '../wertification_screen/wertification_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}
TextEditingController controller = TextEditingController();
TextEditingController controller1 = TextEditingController();
TextEditingController controller2 = TextEditingController();

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        foregroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[SizedBox(
            height: 30,
          ),
          Text("Royhatdan o'ting",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          SizedBox(
            height: 20,
          ),
          Text(
            'quis nostrud exercitation ullamco laboris nisi ut',
            style: TextStyle(color: Color(0xFF53587A)),
          ),
          SizedBox(
            height: 50,
          ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 70,
              decoration: BoxDecoration(
                  color: Color(
                    0xFFF5F4F8,
                  ),
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: controller.text.length>=1?null:Icon(Icons.person_2_outlined,color: Color(0xFF252B5C),)
                  ),
                  Expanded(child: TextField(
                    controller: controller,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "To'liq ismingiz",
                        hintStyle: TextStyle(fontSize: 15,color: Color(0xFFA1A5C1))
                    ),
                  )),
                  controller.text.length>1?Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Icon(Icons.person_2_outlined,color: Color(0xFF252B5C),),
                  ):SizedBox()

                ],
              ),),
            SizedBox(height:15),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 70,
              decoration: BoxDecoration(
                  color: Color(
                    0xFFF5F4F8,
                  ),
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: controller1.text.length>=1?null:Icon(Icons.mail_outline,color: Color(0xFF252B5C),)
                  ),
                  Expanded(child: TextField(
                    controller: controller1,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Email',
                        hintStyle: TextStyle(fontSize: 15,color: Color(0xFFA1A5C1))
                    ),
                  )),
                  controller1.text.length>1?Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Icon(Icons.email_outlined,color: Color(0xFF252B5C),),
                  ):SizedBox()

                ],
              ),),
            SizedBox(height:15),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 70,
              decoration: BoxDecoration(
                  color: Color(
                    0xFFF5F4F8,
                  ),
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: controller2.text.length>=1?null:Icon(Icons.lock_outline_sharp,color: Color(0xFF252B5C),)
                  ),
                  Expanded(child: TextField(
                    controller: controller2,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Kodingiz',
                        hintStyle: TextStyle(fontSize: 15,color: Color(0xFFA1A5C1))
                    ),
                  )),
                  controller2.text.length>1?Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Icon(Icons.lock_outline_sharp,color: Color(0xFF252B5C),),
                  ):SizedBox()

                ],
              ),),
            SizedBox(height:15),
            Row(
              children: [
                Text('Parolni unutdingizmi?',style: TextStyle(color: Color(0xFF1F4C6B)),),
                Spacer(),
                Text('Parolni yashirish',style: TextStyle(color: Color(0xFF1F4C6B)),),
              ],
            ),
            SizedBox(height: 25,),
            GestureDetector(
              onTap: (){
                if(controller.text.isNotEmpty || controller1.text.isNotEmpty || controller2.text.isNotEmpty) {
                  Navigator.push(context, MaterialPageRoute(builder: (builder){
                    return VerificationScreen(email: controller1.text,);
                  }));
                }
              },
              child: Container(
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color:controller.text.length>=1 || controller1.text.length>=1 || controller2.text.length>=1?Color(0xFF8BC83F):Color(0xFF8BC83F).withOpacity(0.5)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Royhatdan O'tish",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),)
                  ],
                ),
              ),
            ),

          ]

        ),
      ),
    );
  }
}
