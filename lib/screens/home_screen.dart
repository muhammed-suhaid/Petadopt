import 'package:flutter/material.dart';
import 'package:petadopt/components/my_appbar.dart';
import 'package:petadopt/components/my_card.dart';
import 'package:petadopt/components/my_category.dart';
import 'package:petadopt/components/my_title.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String selectedCategory = 'Cats';

  void handleCategorySelection(String selectedCategory) {
    setState(() {
      this.selectedCategory = selectedCategory;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(20),
              child: MyAppbar(),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                margin: const EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.3),
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(40),
                  ),
                ),
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const MyTitle(),
                      MyCategory(onCategorySelected: handleCategorySelection),
                      const SizedBox(height: 15),
                      MyCard(selectedCategory: selectedCategory),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
