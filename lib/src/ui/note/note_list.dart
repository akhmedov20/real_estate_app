// import 'package:flutter/material.dart';
//
// class NoteList extends StatefulWidget {
//   const NoteList({Key? key}) : super(key: key);
//
//   @override
//   State<NoteList> createState() => _NoteListState();
//
// }
//
// class _NoteListState extends State<NoteList> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//     appBar: AppBar(
//       backgroundColor: Colors.black,
//       title: Text("Notes"),
//     ),
//       body: getNoteListView(),
//     );
//   }
//   ListView getNoteListView(){
//     TextStyle titleStyle = Theme.of(context).textTheme.subhead;
//
//     return ListView.builder(
//         itemBuilder: (BuildContext context,int position){
//           return Card(
//             color: Colors.white,
//             elevation: 2.0,
//             child: ListTile(
//
//             ),
//           )
//         }
//     )
//   }
// }
