import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

import '../models/favourite/favourite_model.dart';

class HouseDatabaseHelper {
  static final HouseDatabaseHelper _house = HouseDatabaseHelper.internal();

  factory HouseDatabaseHelper() => _house;
  static Database? _data;

  HouseDatabaseHelper.internal();

  Future<Database?> get data_get async{
    if(_data != null){
      return _data;
    }
    _data = await intDb();

    return _data;
  }

  intDb() async{
    String yol = await getDatabasesPath();
    String path = join(yol,'house.db');
    var data2  = await openDatabase(
        path,
        version: 1,
        onCreate: _onCreate
    );
    return data2;
  }

  void _onCreate(Database data_onCreate, int newVersion)async{
    await data_onCreate.execute(
        'CREATE TABLE favourite_table('
            'housename TEXT,'
            'rating TEXT,'
            'image TEXT,'
            'price TEXT,'
            'location TEXT,'
            'house TEXT)'
    );
  }
  Future<int> saveFavourite(data)async {
    var dbFavourite = await data_get;
    var result = await dbFavourite!.insert(
        'favourite_table',
        data.toJson()
    );
    return result;
  }

  Future<List<SecondFavouriteModel>> getFavouriteList()async {
    var dbFavourite = await data_get;
    List<Map> list = await dbFavourite!.rawQuery('SELECT * FROM favourite_table');
    List<SecondFavouriteModel> data = <SecondFavouriteModel>[];
    for (int i = 0; i < list.length; i++){
      SecondFavouriteModel p = SecondFavouriteModel(
        image: list[i]['image'],
        housename: list[i]['housename'],
        house: list[i]['house'],
        rating: list[i]['rating'],
        location: list[i]['location'],
        price: list[i]['price'],
      );
      data.add(p);
    }
    return data;
  }


}