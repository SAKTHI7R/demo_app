// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ReadModel {
  String name;
  String iconPath;
  String level;
  String duration;
  String read;
  Color boxColor;
  bool viewIsSelected;

  ReadModel({
    required this.name,
    required this.iconPath,
    required this.level,
    required this.duration,
    required this.read,
    required this.boxColor,
    required this.viewIsSelected,
  });

  //get boxColor => null;

  static List<ReadModel> getread() {
    List<ReadModel> read = [];

    read.add(ReadModel(
        name: 'Insprie',
        iconPath: 'assets/icons/book_load.svg',
        level: ' very Easy',
        duration: '30 mins',
        read: '50 pages',
        viewIsSelected: true,
        boxColor: const Color(0xff92A3FD)));
    read.add(ReadModel(
        name: 'Histroy',
        iconPath: 'assets/icons/book_load.svg',
        level: 'Hard',
        duration: '30 mins',
        read: '50 pages',
        viewIsSelected: false,
        boxColor: const Color(0xffC58BF2)));
    read.add(ReadModel(
        name: 'Spritual',
        iconPath: 'assets/icons/book_load.svg',
        level: 'Tough',
        duration: '30 mins',
        read: '50 pages',
        viewIsSelected: true,
        boxColor: const Color(0xff92A3FD)));
    read.add(ReadModel(
        name: 'Education',
        iconPath: 'assets/icons/book_load.svg',
        level: 'Never',
        duration: '30 mins',
        read: '50 pages',
        viewIsSelected: false,
        boxColor: const Color(0xFF8218D3)));
    return read;
  }
}
