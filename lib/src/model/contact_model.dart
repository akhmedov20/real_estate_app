class FavouriteModel{
  int id;
  String ism;
  String raqam;
  String addres;
  int yoshi;
  FavouriteModel({
  this.id = 0,
  required this.ism,required this.raqam,required this.addres,required this.yoshi
});

  Map<String, dynamic> toJson() => {
    "ism": ism,
    "raqam": raqam,
    "addres": addres,
    "yoshi": yoshi,
  };
}