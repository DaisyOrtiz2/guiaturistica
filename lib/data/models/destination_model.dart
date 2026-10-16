class Destination {
  final int id;
  final String name;
  final String location;
  final double rating;
  final String image;
  final String description;

  Destination({
    required this.id,
    required this.name,
    required this.location,
    required this.rating,
    required this.image,
    required this.description,
  });

  factory Destination.fromJson(Map<String, dynamic> json) {
    return Destination(
      id: json['id'],
      name: json['name'],
      location: json['location'],
      rating: json['rating'].toDouble(),
      image: json['image'],
      description: json['description'],
    );
  }
}