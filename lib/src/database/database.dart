
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import '../model/contact_model.dart';

class DatbaseHelper{
 static final DatbaseHelper _helperim = DatbaseHelper.internal();

 factory DatbaseHelper() => _helperim;
 static Database? _www;

 DatbaseHelper.internal();

 Future<Database?> get www_get async{
 if(_www != null){
   return _www;
 }
 _www = await intDb();

 return _www;
 }
 intDb() async{
 String yol = await getDatabasesPath();
 String path = join(yol,'bekorchilar.db');
 var www1  = await openDatabase(
  path,
  version: 1,
  onCreate: _onCreate
 );
 return www1;
 }
 void _onCreate(Database www_onCreate, int newVersion)async{
 await www_onCreate.execute(
 'CREATE TABLE malumot_table('
     'id INTEGER PRIMARY KEY AUTOINCREMENT,'
     'ism TEXT,'
     'raqam TEXT,'
     'addres TEXT,'
     'yoshi INTEGER)'
);
 }
 Future<int?> saveUser(FavouriteModel user)async {
  var dbClient = await www_get;
  var result = await dbClient!.insert(
      'malumot_table',
      user.toJson()
  );
  return result;
 }
 Future<List<FavouriteModel>> getUserList()async {
  var dbClient = await www_get;
  List<Map> list = await dbClient!.rawQuery('SELECT * FROM malumot_table');
  List<FavouriteModel> data = <FavouriteModel>[];
  for (int i = 0; i < list.length; i++){
   FavouriteModel p = FavouriteModel(
    id: list[i]["id"],
    ism: list[i]["ism"],
    raqam: list[i]["raqam"],
    yoshi: list[i]["yoshi"],
    addres: list[i]["addres"]
   );
   data.add(p);
  }
  return data;
 }

 Future<int> deleteUser(int id) async {
  var dbClient = await www_get;
  int result = await dbClient!.delete(
   'malumot_table',
   where: 'id = ?',
   whereArgs: [id]
  );
  return result;
}

 Future<int> updateUser(FavouriteModel data) async {
  var dbClient = await www_get;
  int result = await dbClient!.update(
      'malumot_table',
      data.toJson(),
      where: 'id = ?',
      whereArgs: [data.id]
  );
  return result;
 }

}
