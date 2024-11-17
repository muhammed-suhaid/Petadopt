import 'package:flutter/material.dart';
import 'package:petadopt/components/my_appbar.dart';
import 'package:petadopt/components/my_card.dart';
import 'package:petadopt/components/my_category.dart';
import 'package:petadopt/components/my_title.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyAppbar(),
              SizedBox(height: 50),
              MyTitle(),
              MyCategory(),
              SizedBox(height: 15),
              MyCard(),
            ],
          ),
        ),
      ),
    );
  }
}
