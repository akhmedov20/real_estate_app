// import 'package:rxdart/rxdart.dart';
// import 'package:to_do/src/model/contact_model.dart';
//
// import '../repository/repository.dart';
// class UserBloc {
//   final Repository _repository = Repository();
//
//   final _fetchUser = PublishSubject<List<FavouriteModel>>();
//
//   Stream<List<FavouriteModel>> get getUser => _fetchUser.stream;
//
//   allUser() async {
//     List<FavouriteModel> data = await _repository.getUserList();
//     _fetchUser.sink.add(data);
//   }
//
//
//   saveUser(FavouriteModel data) {
//     _repository.saveUser(data);
//   }
//
//   updateUser(FavouriteModel data) async{
//     int k = await _repository.updateUser(data);
//     if (k > 0) {
//       allUser();
//     }
//   }
//
//   deleteUser( data) async {
//     int k = await _repository.deleteUser(data);
//     if (k > 0) {
//       allUser();
//     }
//   }
// }
//
// final userBloc = UserBloc();