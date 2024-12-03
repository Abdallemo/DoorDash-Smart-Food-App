import 'package:flutter/material.dart';

class Food {
  final String name;
  final String description;
  final String imagePath;
  final double price;
  final FoodCataory cataory;
  List<Addon> availableAddons;

  Food({
    required this.name,
    required this.description,
    required this.imagePath,
    required this.price,
    required this.cataory,
    required this.availableAddons
  }
  );


}
enum FoodCataory
{
  local_Delights,
  western_Cuisine,
  chinese_Cuisine,
  indian_Cuisine,
  malay_Cuisine,
  fast_Food,
  healthy_Options,
  snacks_Street_Food,
  desserts,
  beverages
}

class Addon{
  String name;
  num price;

  Addon({
    required this.name,
    required this.price
  });
}
