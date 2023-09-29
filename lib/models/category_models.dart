// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CategoryModels {
  String name;
  String iconpath;
  Color boxColor;

  CategoryModels({
    required this.name,
    required this.iconpath,
    required this.boxColor,
  });

  static List<CategoryModels> getCategories() {
    List<CategoryModels> categories = [];

    categories.add(CategoryModels(
        name: 'Book 1',
        iconpath: 'assets/icons/book.svg',
        boxColor: Color(0xff92A3FD)));
    categories.add(CategoryModels(
        name: 'Book 2',
        iconpath: 'assets/icons/book.svg',
        boxColor: Color(0xffC58BFD)));
    categories.add(CategoryModels(
        name: 'Book 3',
        iconpath: 'assets/icons/book.svg',
        boxColor: Color(0xffC58BF2)));
    categories.add(CategoryModels(
        name: 'Book 4',
        iconpath: 'assets/icons/book.svg',
        boxColor: Color(0xFF8218D3)));

    return categories;
  }
}
