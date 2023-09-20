import 'package:rxdart/rxdart.dart';
import '../models/favourite/favourite_model.dart';
import '../repository/repository.dart';

class SaveHouseBloc {
  final Repository _repository = Repository();

  final _fetchUser = PublishSubject<List<SecondFavouriteModel>>();

  Stream<List<SecondFavouriteModel>> get getUser => _fetchUser.stream;

  allUser() async {
    List<SecondFavouriteModel> data = await _repository.getFavourtie();
    _fetchUser.sink.add(data);
  }

  saveFavourite(SecondFavouriteModel data) {
    _repository.saveFavourite(data);
  }
}

final saveHouseBloc = SaveHouseBloc();