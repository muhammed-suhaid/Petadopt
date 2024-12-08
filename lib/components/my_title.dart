import 'package:flutter/material.dart';

class MyTitle extends StatelessWidget {
  const MyTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Adopt",
          style: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        Text(
          "your pet's here!",
          style: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.w300,
          ),
        ),
      ],
    );
  }
}
