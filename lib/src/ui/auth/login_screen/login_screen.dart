import 'package:flutter/material.dart';

import '../register/register_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}
TextEditingController controller = TextEditingController();
TextEditingController controller1 = TextEditingController();

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding:EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/logback.png'),
            SizedBox(
              height: 10,
            ),
            Text('Akkauntingizga kiring',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            SizedBox(
              height: 20,
            ),
            Text(
              'quis nostrud exercitation ullamco laboris nisi ut',
              style: TextStyle(color: Color(0xFF53587A)),
            ),
            SizedBox(
              height: 30,
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
                  child: controller.text.length>=1?null:Icon(Icons.mail_outline,color: Color(0xFF252B5C),)
                ),
                Expanded(child: TextField(
                  controller: controller,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Email',
                    hintStyle: TextStyle(fontSize: 15,color: Color(0xFFA1A5C1))
                  ),
                )),
                controller.text.length>1?Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Icon(Icons.email_outlined,color: Color(0xFF252B5C),),
                ):SizedBox()

              ],
            ),),
            SizedBox(height: 15,),
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
                  child: controller1.text.length>=1?null:Icon(Icons.lock_outline_rounded,color: Color(0xFF252B5C),)
                ),
                Expanded(child: TextField(
                  controller: controller1,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Parolingiz',
                    hintStyle: TextStyle(fontSize: 15,color: Color(0xFFA1A5C1))
                  ),
                )),
                controller1.text.length>1?Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Icon(Icons.lock_outline_rounded,color: Color(0xFF252B5C),),
                ):SizedBox()

              ],
            ),),
            SizedBox(height: 10,),
            Row(
              children: [
              Text('Parolni unutdingizmi?',style: TextStyle(color: Color(0xFF1F4C6B)),),
              Spacer(),
              Text('Parolni yashirish',style: TextStyle(color: Color(0xFF1F4C6B)),),
              ],
            ),
            Spacer(),
            GestureDetector(
              onTap: (){
                if(controller.text.isNotEmpty || controller1.text.isNotEmpty) {
                  Navigator.push(context, MaterialPageRoute(builder: (builder){
                    return RegisterScreen();
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
                       color:controller.text.length>=1 || controller1.text.length>=1?Color(0xFF8BC83F):Color(0xFF8BC83F).withOpacity(0.5)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Kirish',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),)
                  ],
                ),
              ),
            ),
            SizedBox(height: 11,),
            Row(
              children: [
                Expanded(
                    child: Container(
                  height: 2,
                  color: Colors.grey.withOpacity(0.3),
                )),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    'OR',
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFA1A5C1)),
                  ),
                ),
                Expanded(
                    child: Container(
                  height: 2,
                  color: Colors.grey.withOpacity(0.3),
                )),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 160,
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Color(0xFFF5F4F8)),
                  child: Image.asset('assets/images/google.png'),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 160,
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Color(0xFFF5F4F8)),
                  child: Image.asset('assets/images/facebook.png'),
                ),
              ],
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Hisobingiz yo'qmi?",
                  style: TextStyle(fontSize: 12),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (builder){
                      return RegisterScreen();
                    }));
                  },
                  child: Text(
                    "Ro'yhatdan o'ting",
                    style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFF1F4C6B),
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
