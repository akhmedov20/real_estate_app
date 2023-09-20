import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import '../../../dialogs/bottom-center/account_created_dialog.dart';
import '../../../widgets/textField/small_textfield_widget.dart';
import '../../../widgets/textField/textfield_widget.dart';
import '../../../widgets/textField/three_text.dart';
import '../../home/main_screen.dart';
import '../choose_location/choose_location_screen.dart';
import '../../../widgets/buttonWidget/button_widget.dart';
import '../../../widgets/textStyle/textsyle_widget.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  TextEditingController controller = TextEditingController();
  bool _onTap = false;
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
    body: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
      SizedBox(height: 35,),
      Row(children: [
        GestureDetector(
          onTap: (){Navigator.pop(context);},
          child: Container(
            width: 50,height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.white
            ),
            child: Center(child: Icon(CupertinoIcons.left_chevron,color: Colors.black,)),
          ),
        ),
        Spacer(),
        ButtonWidget(text: "skip", height: 38, circle: 22, horizontal: 0,
          width: 86, onTap: (){
            Navigator.push(context, PageTransition(type: PageTransitionType.fade,child: ChooseLocationScreen()));
          }, vertical: 0, fontsize: 12, color: Color(0xFFF5F4F8), textcolor: Color(0xFF3A3F67),),
        SizedBox(width: 24,)
      ],),
      SizedBox(height: 51,),
      Padding(
        padding: const EdgeInsets.only(left: 24),
        child: Text("Ma'lumotlaringizni pastda",style: Appstyle.twentyfourbold(Color(0xFF1F4C6B)),),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 24),
        child: Text("to'ldiring",style: Appstyle.twentyfour(Color(0xFF1F4C6B)),),
      ),
      SizedBox(height: 20,),
      Padding(
        padding: const EdgeInsets.only(left: 24),
        child: Text("Buni keyinroq hisob sozlamalarida tahrirlashingiz mumkin.",style: Appstyle.twelve(Color(0xFF53587A)),),
      ),
      SizedBox(height: 50,),
      Stack(children: [
        Center(child: GestureDetector(
          onTap: (){
          },
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100)
            ),
            child: Image.asset( _onTap ? "assets/images/person.png" : "assets/images/man.png",fit: BoxFit.cover,),
          ),
        ),),
        GestureDetector(
          onTap: (){
            setState(() {
              _onTap = !_onTap;
            });
          },
          child: Container(margin: EdgeInsets.only(left: 210,top: 62),
            width: 30,height: 30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Color(0xFF234F68)
          ),
          child: Icon(Icons.edit,color: Colors.white,size: 15,),),
        )
      ],),
      SizedBox(height: 30,),
      TextFieldWidgetA(icons: "assets/icons/profile.svg", widht: MediaQuery.of(context).size.width, horizontal:20, controller: controller,),
      SizedBox(height: 15,),
      SmallTextFieldWidget(icons: "assets/icons/cell.svg", width: MediaQuery.of(context).size.width, horizontal: 20),
      SizedBox(height: 30,),
      ThirdTextFieldwidget(widht: MediaQuery.of(context).size.width, horizontal: 20, icons: "assets/icons/email.svg", rang: Color(0xFF234F68)),
      SizedBox(height: 30,),
      ButtonWidget(text: "Tugat", height: 70, circle: 10, horizontal: 50, width: MediaQuery.of(context).size.width, onTap: (){
        AccountCreatedDialog.accountdialog(context);
        Navigator.push(context, PageTransition(child: MainScreen(), type: PageTransitionType.scale,alignment: Alignment.bottomCenter));
      },
          vertical: 0, fontsize: 16, color: Color(0xFF8BC83F), textcolor: Colors.white)
    ],),
    );
  }
}
