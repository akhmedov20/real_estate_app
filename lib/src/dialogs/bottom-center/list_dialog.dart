// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:to_do/src/bloc/user_bloc.dart';
// import 'package:to_do/src/model/contact_model.dart';
//
// import '../../repository/repository.dart';
//
// class ShowDialog {
//   static void showDeleteDialog(BuildContext context, FavouriteModel data) {
//     showDialog(
//       context: context,
//       builder: (context) {
//         return CupertinoAlertDialog(
//           content: const Text(
//             'do you want to turn it off',
//             style: TextStyle(color: Colors.black, fontSize: 18),
//           ),
//           actions: [
//             GestureDetector(
//               onTap: () {
//                 Navigator.pop(context);
//               },
//               child: Container(
//                 height: 44,
//                 color: Colors.transparent,
//                 child: const Center(
//                   child: Text(
//                     "No",
//                     style: TextStyle(
//                       decoration: TextDecoration.none,
//                       color: Colors.blue,
//                       fontSize: 22,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             GestureDetector(
//               onTap: () {
//                 userBloc.deleteUser(data.id);
//                 Navigator.pop(context);
//               },
//               child: Container(
//                 height: 44,
//                 color: Colors.transparent,
//                 child: const Center(
//                   child: Text(
//                     "Yes",
//                     style: TextStyle(
//                       decoration: TextDecoration.none,
//                       color: Colors.red,
//                       fontSize: 22,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         );
//       },
//     );
//   }
//   static void showBottomDialog(BuildContext context,) {
//
//     TextEditingController controller = TextEditingController();
//     TextEditingController controller1 = TextEditingController();
//     TextEditingController controller2 = TextEditingController();
//     TextEditingController controller3 = TextEditingController();
//     showModalBottomSheet(
//       context: (context),
//       builder: (context) {
//         return Container(
//           height: 600,
//           color: Colors.white,
//           child: Column(
//             children: [
//               const SizedBox(
//                 height: 32,
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 16),
//                 child: TextField(
//                   controller: controller,
//                   decoration: const InputDecoration(
//                       border: OutlineInputBorder(
//                         borderSide: BorderSide(
//                           color: Colors.teal,
//                         ),
//                       ),
//                       labelText: 'Ism',
//                       prefixIcon: Icon(
//                         Icons.person,
//                         color: Colors.indigo,
//                       ),
//                       prefixText: ' ',
//                       suffixStyle: TextStyle(color: Colors.green)),
//                 ),
//               ),
//               const SizedBox(
//                 height: 16,
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 16),
//                 child: TextField(
//                   controller: controller1,
//                   decoration: const InputDecoration(
//                       border: OutlineInputBorder(
//                         borderSide: BorderSide(
//                           color: Colors.teal,
//                         ),
//                       ),
//                       labelText: 'Telefon raqami',
//                       prefixIcon: Icon(
//                         Icons.call,
//                         color: Colors.indigo,
//                       ),
//                       prefixText: ' ',
//                       suffixStyle: TextStyle(color: Colors.green)),
//                 ),
//               ),
//               const SizedBox(
//                 height: 16,
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 16),
//                 child: TextField(
//                   controller: controller2,
//                   decoration: const InputDecoration(
//                     border: OutlineInputBorder(
//                       borderSide: BorderSide(
//                         color: Colors.teal,
//                       ),
//                     ),
//                     labelText: 'Adres',
//                     prefixIcon: Icon(
//                       Icons.location_on,
//                       color: Colors.indigo,
//                     ),
//                     prefixText: ' ',
//                     suffixStyle: TextStyle(
//                       color: Colors.green,
//                     ),
//                   ),
//                 ),
//               ),
//               const SizedBox(
//                 height: 16,
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 16),
//                 child: TextField(
//                   controller: controller3,
//                   decoration: const InputDecoration(
//                       border: OutlineInputBorder(
//                         borderSide: BorderSide(
//                           color: Colors.teal,
//                         ),
//                       ),
//                       labelText: 'Yosh',
//                       prefixIcon: Icon(
//                         Icons.calendar_month,
//                         color: Colors.indigo,
//                       ),
//                       prefixText: ' ',
//                       suffixStyle: TextStyle(color: Colors.green)),
//                 ),
//               ),
//               const SizedBox(
//                 height: 16,
//               ),
//               const SizedBox(
//                 height: 32,
//               ),
//               GestureDetector(
//                 onTap: () {
//                   Repository _repository = Repository();
//                   var data = FavouriteModel(
//                       ism: controller.text, raqam: controller1.text,
//                       addres:controller2.text, yoshi: int.parse(controller3.text));
//                   _repository.saveUser(data);
//                   userBloc.allUser();
//                   Navigator.pop(context);
//                 },
//                 child: Container(
//                   margin: const EdgeInsets.symmetric(horizontal: 16),
//                   width: MediaQuery.of(context).size.width,
//                   height: 57,
//                   decoration: BoxDecoration(
//                     color: Colors.indigo,
//                     borderRadius: BorderRadius.circular(5),
//                   ),
//                   child: const Center(
//                     child: Text(
//                       "Saqlash",
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 20,
//                         fontWeight: FontWeight.w500,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }
//   static void showUpdateDialog(BuildContext context, FavouriteModel data) {
//     TextEditingController controller = TextEditingController(text: data.ism);
//     TextEditingController controller1 = TextEditingController(text: data.raqam);
//     TextEditingController controller2 = TextEditingController(text: data.addres);
//     TextEditingController controller3 = TextEditingController(text: data.yoshi.toString());
//
//     showModalBottomSheet(
//       context: (context),
//       builder: (context) {
//         return Container(
//           height: 500,
//           color: Colors.white,
//           child: Column(
//             children: [
//               const SizedBox(
//                 height: 32,
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 16),
//                 child: TextField(
//                   controller: controller,
//                   decoration: const InputDecoration(
//                       border: OutlineInputBorder(
//                         borderSide: BorderSide(
//                           color: Colors.teal,
//                         ),
//                       ),
//                       labelText: 'Ism',
//                       prefixIcon: Icon(
//                         Icons.person,
//                         color: Colors.indigo,
//                       ),
//                       prefixText: ' ',
//                       suffixStyle: TextStyle(color: Colors.green)),
//                 ),
//               ),
//               const SizedBox(
//                 height: 16,
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 16),
//                 child: TextField(
//                   controller: controller1,
//                   decoration: const InputDecoration(
//                     border: OutlineInputBorder(
//                       borderSide: BorderSide(
//                         color: Colors.teal,
//                       ),
//                     ),
//                     labelText: 'Telfon Raqam',
//                     prefixIcon: Icon(
//                       Icons.call,
//                       color: Colors.indigo,
//                     ),
//                     prefixText: ' ',
//                     suffixStyle: TextStyle(
//                       color: Colors.green,
//                     ),
//                   ),
//                 ),
//               ),
//               const SizedBox(
//                 height: 32,
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 16),
//                 child: TextField(
//                   controller: controller2,
//                   decoration: const InputDecoration(
//                       border: OutlineInputBorder(
//                         borderSide: BorderSide(
//                           color: Colors.teal,
//                         ),
//                       ),
//                       labelText: 'Addres',
//                       prefixIcon: Icon(
//                         Icons.person,
//                         color: Colors.indigo,
//                       ),
//                       prefixText: ' ',
//                       suffixStyle: TextStyle(color: Colors.green)),
//                 ),
//               ),
//               const SizedBox(
//                 height: 16,
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 16),
//                 child: TextField(
//                   controller: controller3,
//                   decoration: const InputDecoration(
//                       border: OutlineInputBorder(
//                         borderSide: BorderSide(
//                           color: Colors.teal,
//                         ),
//                       ),
//                       labelText: 'Yoshi',
//                       prefixIcon: Icon(
//                         Icons.person,
//                         color: Colors.indigo,
//                       ),
//                       prefixText: ' ',
//                       suffixStyle: TextStyle(color: Colors.green)),
//                 ),
//               ),
//               const SizedBox(
//                 height: 16,
//               ),
//               GestureDetector(
//                 onTap: () {
//                   userBloc.updateUser(
//                     FavouriteModel(
//                       id: data.id,
//                       ism: controller.text,
//                       raqam: controller1.text,
//                       addres: controller2.text,
//                       yoshi:  int.parse(controller3.text)
//                     ),
//                   );
//                   Navigator.pop(context);
//                 },
//                 child: Container(
//                   margin: const EdgeInsets.symmetric(horizontal: 16),
//                   width: MediaQuery.of(context).size.width,
//                   height: 57,
//                   decoration: BoxDecoration(
//                     color: Colors.indigo,
//                     borderRadius: BorderRadius.circular(5),
//                   ),
//                   child: const Center(
//                     child: Text(
//                       "Saqlash",
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 20,
//                         fontWeight: FontWeight.w500,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }
// }