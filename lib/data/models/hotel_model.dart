class HotelModel {
  HotelModel({
    required this.hotelImage,
    required this.hotelName,
    required this.location,
    required this.awayKilometer,
    required this.numberOfReview,
    required this.price,
    required this.star,
  });

  final String hotelImage;
  final String hotelName;
  final String location;
  final String awayKilometer;
  final int numberOfReview;
  final int price;
  final double star;
}
