// import 'package:flutter/material.dart';
// import 'package:to_do/src/model/contact_model.dart';
//
// import '../../bloc/user_bloc.dart';
// import '../../dialogs/bottom-center/list_dialog.dart';
//
// class Practise extends StatefulWidget {
//   const Practise({Key? key}) : super(key: key);
//
//   @override
//   State<Practise> createState() => _PractiseState();
// }
//
// class _PractiseState extends State<Practise> {
//   @override
//   void initState(){
//     userBloc.allUser();
//     super.initState();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       floatingActionButton: FloatingActionButton(
//         onPressed: (){
//           ShowDialog.showBottomDialog(context);
//         },
//       ),
//       body: StreamBuilder<List<FavouriteModel>>(
//      stream: userBloc.getUser,
//         builder: (context,snapshot){
//         if (snapshot.hasData) {
//          List<FavouriteModel> data = snapshot.data!;
//          return ListView.builder(
//            itemCount: data.length,
//              itemBuilder: (context,index){
//               return  Container(
//                 padding:
//                 const EdgeInsets.symmetric(vertical: 6, horizontal: 16),
//                 margin:
//                 const EdgeInsets.symmetric(horizontal: 16, vertical: 1),
//                 width: MediaQuery.of(context).size.width,
//                 decoration: BoxDecoration(
//                   border: Border(
//                     bottom: BorderSide(
//                       color: Colors.grey.withOpacity(0.4),
//                     ),
//                   ),
//                 ),
//                 child: Row(
//                   children: [
//                     Text(
//                       data[index].id.toString(),
//                       style: const TextStyle(fontSize: 20),
//                     ),
//                     const SizedBox(
//                       width: 16,
//                     ),
//                     Expanded(
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             data[index].ism,
//                             style: TextStyle(fontSize: 20),
//                           ),
//                           Text(data[index].raqam),
//                           Text(data[index].addres),
//                           Text(data[index].yoshi.toString()),
//                         ],
//                       ),
//                     ),
//                     GestureDetector(
//                       onTap: () {
//                         ShowDialog.showUpdateDialog(context, data[index]);
//                         userBloc.updateUser(data[index]);
//                       },
//                       child: const Icon(
//                         Icons.edit_outlined,
//                         color: Colors.blue,
//                       ),
//                     ),
//                     const SizedBox(
//                       width: 8,
//                     ),
//                     GestureDetector(
//                       onTap: () {
//                         ShowDialog.showDeleteDialog(context, data[index]);
//                         print('jjjj');
//                       },
//                       child: const Icon(
//                         Icons.delete_forever_sharp,
//                         color: Colors.red,
//                       ),
//                     ),
//                   ],
//                 ),
//               );
//              }
//          );
//         }
//         return Container();
//         },
//       ),
//     );
//   }
// }
