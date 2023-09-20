class SecondFavouriteModel {
   String image;
   String house;
   String housename;
   String rating;
   String location;
   String price;


   SecondFavouriteModel ({
      required this.image,required this.housename,required this.house,
      required this.rating,required this.location,required this.price,
});
   Map<String, dynamic> toJson() => {
      "image": image,
      "house": house,
      "housename": housename,
      "rating": rating,
      "location": location,
      "price": price,
   };
}