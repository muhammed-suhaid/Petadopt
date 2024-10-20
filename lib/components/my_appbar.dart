import "package:flutter/material.dart";

class MyAppbar extends StatelessWidget {
  const MyAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CircleAvatar(
          radius: 25,
          child: Text(
            "A",
            style: TextStyle(fontSize: 22),
          ),
        ),
        SizedBox(width: 10),
        Text(
          "Hi, Alhan",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
