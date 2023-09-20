

import '../database/database.dart';
import '../database/house_database.dart';
import '../model/contact_model.dart';
import '../models/favourite/favourite_model.dart';

class Repository{
  final DatbaseHelper _meniHelperim =DatbaseHelper();
  final HouseDatabaseHelper _house = HouseDatabaseHelper();

  Future<int?> saveUser (FavouriteModel user) => _meniHelperim.saveUser(user);
  Future<List<FavouriteModel>> getUserList() => _meniHelperim.getUserList();
  Future<int> deleteUser(id) => _meniHelperim.deleteUser(id);
  Future<int> updateUser(FavouriteModel data) => _meniHelperim.updateUser(data);
  Future<int> saveFavourite(data) => _house.saveFavourite(data);
  Future<List<SecondFavouriteModel>> getFavourtie() => _house.getFavouriteList();
}