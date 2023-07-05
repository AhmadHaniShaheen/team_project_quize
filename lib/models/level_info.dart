import 'package:flutter/material.dart';

class Level {
  final String image;
  final String supTitle;
  final String title;
  final String description;
  final IconData icon;
  final List<Color> colors;
  final String routeName;

  Level({
    required this.image,
    required this.supTitle,
    required this.title,
    required this.description,
    required this.icon,
    required this.colors,
    required this.routeName,
  });
}
