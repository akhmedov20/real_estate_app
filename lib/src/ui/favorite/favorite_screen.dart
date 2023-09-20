import 'package:flutter/material.dart';

import '../../models/shaxriyor/shaxriyor_model.dart';
import '../../widgets/column_product_widget.dart';
import '../../widgets/row_product_widget.dart';


class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabBarController;

  @override
  void initState() {
    _tabBarController = TabController(length: 2, vsync: this);
    super.initState();
  }

  List<WidgetModel> widgetModels = [
    WidgetModel('assets/images/Shape.png', 230, 'Bali Beachview Villa',
        'Bali, Indonesia', 4.9),
    WidgetModel('assets/images/Shape.png', 230, 'Bali Beachview Villa',
        'Bali, Indonesia', 4.9),
    WidgetModel('assets/images/Shape.png', 230, 'Bali Beachview Villa',
        'Bali, Indonesia', 4.9),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My favorite',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Color(0xFF252B5C),
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: Color(0xFFF5F4F8),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Center(
                child: Icon(Icons.delete, color: Color(0xFF252B5C)),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(height: 20),
            Row(
              children: [
                Text(
                  '${widgetModels.length} estates',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Color(0xFFF5F4F8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TabBar(
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicatorColor: Colors.green,
                      padding: EdgeInsets.zero,
                      indicatorPadding: EdgeInsets.zero,
                      unselectedLabelColor: Colors.black.withOpacity(0.5),
                      isScrollable: true,
                      dividerColor: Colors.transparent,
                      labelColor: Color(0xFF252B5C),
                      indicator: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        color: Colors.white,
                      ),
                      labelStyle: TextStyle(
                        fontSize: 20,
                      ),
                      controller: _tabBarController,
                      tabs: [
                        Tab(
                          child: Icon(Icons.rectangle_outlined, size: 16),
                        ),
                        Tab(
                          child: Icon(Icons.menu, size: 16),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: _tabBarController,
                children: [
                  //tab 1
                  GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, childAspectRatio: 1 / 1.35),
                    itemBuilder: (context, i) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 4, vertical: 5),
                        child: ColumnProductWidget(
                          name: widgetModels[1].name,
                          image: 'assets/images/Cshape.png',
                          location: widgetModels[1].location,
                          star: widgetModels[1].star,
                          price: widgetModels[1].price,
                        ),
                      );
                    },
                    itemCount: widgetModels.length,
                  ),
                  //tab 2
                  ListView.builder(
                    itemCount: widgetModels.length,
                    itemBuilder: (context, index) {
                      return Dismissible(

                        background: Container(
                          decoration: BoxDecoration(
                            color: Color(0xFF234F68),
                            borderRadius: BorderRadius.circular(25)
                          ),
                            
                            child: Row(
                              children: [
                                Spacer(),
                                Icon(Icons.delete_outline,color: Colors.white,),
                                SizedBox(width: 30,)
                              ],
                            )),
                        onDismissed:(i){
                          print(i);
                        },
                        key: ValueKey(index),
                        child: RowProductWidget(
                          name: widgetModels[index].name,
                          image: widgetModels[index].image,
                          location: widgetModels[index].location,
                          star: widgetModels[index].star,
                          price: widgetModels[index].price,
                        ),
                      );
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
