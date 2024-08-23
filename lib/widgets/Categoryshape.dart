import 'package:flutter/material.dart';
import 'package:news_app/Classes/CategoryClass.dart';
import 'package:news_app/Pages/Category_page.dart';

class CategoryShape extends StatelessWidget {
  const CategoryShape({required this.CD});
  final CategoryData CD;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return CategoryPage(CategoryName: CD.name);
        }));
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 1),
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image:
                  DecorationImage(image: AssetImage(CD.img), fit: BoxFit.fill)),

          width: 115,
          height: 30,
          child: Text(
            CD.name,
            style: TextStyle(
                color: CD.color, fontFamily: 'ConcertOne1', fontSize: 30),
          ),
          // color: Colors.green,
        ),
      ),
    );
  }
}
