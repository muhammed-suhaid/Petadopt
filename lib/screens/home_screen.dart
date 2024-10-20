import 'package:flutter/material.dart';
import 'package:petadopt/components/my_appbar.dart';
import 'package:petadopt/components/my_title.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyAppbar(),
              SizedBox(height: 65), 
              MyTitle(),
            ],
          ),
        ),
      ),
    );
  }
}
