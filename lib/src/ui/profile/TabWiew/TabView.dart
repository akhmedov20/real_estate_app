import 'package:flutter/material.dart';


import '../../../utils/utils.dart';
import '../../../widgets/trancations_widget_pro.dart';
import '../transaction_detail/trancaction_detail.dart';

class TabView extends StatefulWidget {
  const TabView({super.key});

  @override
  State<TabView> createState() => _TabViewState();
}

class _TabViewState extends State<TabView> {
  @override
  Widget build(BuildContext context) {
    double h = Utils.getHeight(context);
    double w = Utils.getWidth(context);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('2 Transactions',style: TextStyle(
            color: Color(0xFF242B5C),
            fontSize: 18*h,
            fontWeight: FontWeight.w700,
          ),),
          Expanded(
            child: GridView.builder(
              itemBuilder: (context, i){
                return GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (builder){
                        return TransactionDetailScreen(img: 'assets/images/transaction.png',);
                      }));

                    },
                    child: TransactionWidgetPro());
              },
                itemCount: 9,


                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 1/1.39)),
          )
        ],
      ),
    );
  }
}
