import 'dart:ui';

class PetsModel {
  String name;
  String breed;
  String image;
  String age;
  String sex;
  String origin;
  Color color;
  String description;

  PetsModel({
    required this.image,
    required this.name,
    required this.breed,
    required this.sex,
    required this.age,
    required this.origin,
    required this.color,
    required this.description,
  });
}

List<String> categoryList = [
  'Cats',
  'Dogs',
  'Birds',
  'Snakes',
  'Other',
];
