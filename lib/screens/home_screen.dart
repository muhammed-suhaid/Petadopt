import 'package:flutter/material.dart';
import 'package:petadopt/components/my_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: MyAppbar(), 
            ),
          ],
        ),
      ),
    );
  }
}
