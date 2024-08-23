import 'package:flutter/material.dart';
import 'package:news_app/Classes/CategoryClass.dart';
import 'package:news_app/widgets/Categoryshape.dart';

class categorylistview extends StatelessWidget {
  categorylistview({super.key});

  List<CategoryData> listCatgegory = const [
    CategoryData(img: 'assets/sport2.jfif', name: 'Sport', color: Colors.white),
    CategoryData(
        img: 'assets/policy2.jfif',
        name: 'Policy',
        color: Color.fromARGB(255, 19, 18, 19)),
    CategoryData(
        img: 'assets/environment.jfif',
        name: 'envir',
        color: Color.fromARGB(255, 24, 4, 4)),
    CategoryData(
        img: 'assets/education.jfif',
        name: 'edu',
        color: Color.fromARGB(255, 255, 255, 255)),
    CategoryData(
        img: 'assets/economy.jfif',
        name: 'econ',
        color: Color.fromARGB(255, 33, 6, 95)),
    CategoryData(
        img: 'assets/culture.jfif', name: 'culture', color: Colors.white),
    CategoryData(img: 'assets/art.jfif', name: 'art', color: Colors.white)
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 90,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: listCatgegory.length,
          itemBuilder: (context, index) {
            return CategoryShape(CD: listCatgegory[index]);
          }),
    );
  }
}
