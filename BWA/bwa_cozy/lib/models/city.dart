class City {
  String name;
  String imageUrl;
  bool isPopular;

  City({required this.name, required this.imageUrl, required this.isPopular});
}

final List<City> cityList = [
  City(name: 'Jakarta', imageUrl: 'assets/images/city1.png', isPopular: false),
  City(name: 'Bandung', imageUrl: 'assets/images/city2.png', isPopular: true),
  City(name: 'Surabaya', imageUrl: 'assets/images/city3.png', isPopular: false),
  City(
      name: 'Palembang', imageUrl: 'assets/images/city4.png', isPopular: false),
  City(name: 'Aceh', imageUrl: 'assets/images/city5.png', isPopular: true),
  City(name: 'Bogor', imageUrl: 'assets/images/city6.png', isPopular: false)
];
