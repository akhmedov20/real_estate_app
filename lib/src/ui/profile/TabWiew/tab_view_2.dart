import 'package:flutter/material.dart';

import '../../../utils/utils.dart';
import '../../../widgets/listining_card.dart';
import '../../add listing/add_listing_screen.dart';


class TabView2 extends StatelessWidget {
  const TabView2({super.key});

  @override
  Widget build(BuildContext context) {
    double h = Utils.getHeight(context);
    double w = Utils.getWidth(context);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Text('9 Listings',style: TextStyle(
                color: Color(0xFF242B5C),
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),),
              Spacer(),
              GestureDetector(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (builder){
                    return AddListingScreen();
                  }));
                },
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Color(0xFF234F68),
                  ),
                  child:Center(child: Icon(Icons.add,color: Colors.white,),),
                ),
              ),

            ],
          ),
          SizedBox(height: 10,),
          Expanded(
            child: GridView.builder(
                itemBuilder: (context, i){
                  return ListingCardWidget(name: 'Fairview Apartment', image: 'assets/images/Cshape.png', location: 'Bali, Indonesia', star: 4.9, price: 320, );
                },
                itemCount: 9,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 1/1.39)),
          )
        ],
      ),
    );
  }
}
