import 'package:flutter/cupertino.dart';
import 'package:mdi/mdi.dart';

class CategoryData {
  IconData icon;
  String text;
  CategoryData({this.icon, this.text});
}

List<CategoryData> categoryData = [
  CategoryData(
    icon: Mdi.fire,
    text: 'Sushi',
  ),
  CategoryData(
    icon: Mdi.earHearing,
    text: 'Pork',
  ),
  CategoryData(
    icon: Mdi.star,
    text: 'Top',
  ),
  CategoryData(
    icon: Mdi.foodApple,
    text: 'Veg',
  ),
  CategoryData(
    icon: Mdi.foodApple,
    text: 'Veg',
  ),
  CategoryData(
    icon: Mdi.foodApple,
    text: 'Veg',
  ),
];

class ContainerData {
  String img, text;
  ContainerData({this.img, this.text});
}

List<ContainerData> data = [

  ContainerData(
    img: 'assets/sushi1.png',
    text: 'URA-MAKI ROLLS',
  ),
  ContainerData(
    img: 'assets/sushi2.png',
    text: 'MAKI ROLLS',
  ),
  ContainerData(
    img: 'assets/sushi1.png',
    text: 'URA-MAKI ROLLS',
  ),
  ContainerData(
    img: 'assets/sushi2.png',
    text: 'MAKI ROLLS',
  ),
];
