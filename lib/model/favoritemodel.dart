class FavoriteModel {
  final String image;
  final String title;
  final String? subTitle;
  final double price;

  FavoriteModel({
    required this.image,
    required this.title,
     this.subTitle,
    required this.price});
}