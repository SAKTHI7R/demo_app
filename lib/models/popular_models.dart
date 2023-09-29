// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class PopularModels {
  String name;
  String iconPath;
  String level;
  String duration;
  String read;
  bool boxIsSelected;
  Color boxColor;
  PopularModels({
    required this.name,
    required this.iconPath,
    required this.level,
    required this.duration,
    required this.read,
    required this.boxIsSelected,
    required this.boxColor,
  });

  static List<PopularModels> getPopularModela() {
    List<PopularModels> popular = [];

    popular.add(PopularModels(
        name: 'Book',
        iconPath: 'assets/icons/book_load.svg',
        level: 'easy',
        duration: '30 mins',
        read: ' 70 pages',
        boxIsSelected: true,
        boxColor: const Color(0xff92A3FD)));
    popular.add(PopularModels(
        name: 'Book2',
        iconPath: 'assets/icons/book_load.svg',
        level: 'easy',
        duration: '30 mins',
        read: ' 70 pages',
        boxIsSelected: true,
        boxColor: const Color(0xff92A3FD)));
    popular.add(PopularModels(
        name: 'Book3',
        iconPath: 'assets/icons/book_load.svg',
        level: 'easy',
        duration: '30 mins',
        read: ' 70 pages',
        boxIsSelected: true,
        boxColor: const Color(0xff92A3FD)));

    return popular;
  }
}
