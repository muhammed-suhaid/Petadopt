import "package:flutter/material.dart";

class MyAppbar extends StatelessWidget {
  const MyAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CircleAvatar(
          radius: 25,
          backgroundColor: Colors.grey,
          child: Text(
            "A",
            style: TextStyle(
              fontSize: 22,
              color: Colors.white,
            ),
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
        Spacer(),
        Icon(
          Icons.menu_rounded,
          size: 35,
          color: Colors.grey,
        )
      ],
    );
  }
}
