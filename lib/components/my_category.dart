import 'package:flutter/material.dart';
import 'package:petadopt/datas/pets_data.dart';

class MyCategory extends StatefulWidget {
  const MyCategory({super.key});

  @override
  State<MyCategory> createState() => _MyCategoryState();
}

class _MyCategoryState extends State<MyCategory> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: category.length,
        itemBuilder: (context, index) {
          return InkWell(
            splashColor: Colors.transparent,
            onTap: () {
              setState(() {
                currentIndex = index;
              });
            },
            child: Align(
              alignment: Alignment.center,
              child: Container(
                height: 60,
                width: 65,
                padding: const EdgeInsets.all(8),
                margin: const EdgeInsets.only(
                  right: 10,
                  left: 10,
                ),
                decoration: BoxDecoration(
                  color: index == currentIndex
                      ? Colors.amber[800]
                      : Colors.amber[50],
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.amber.withOpacity(0.4),
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: const Offset(0, 0),
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    category[index],
                    style: TextStyle(
                      color: currentIndex == index
                          ? Colors.amber[50]
                          : Colors.amber[800],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
