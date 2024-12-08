import 'package:flutter/material.dart';
import 'package:petadopt/datas/pets_data.dart';
import 'package:petadopt/models/pets_model.dart';
import 'package:petadopt/screens/pet_details_screen.dart';

class MyCard extends StatefulWidget {
  const MyCard({super.key, required this.selectedCategory});

  final String selectedCategory;

  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  List<PetsModel> petList = cats;
  @override
  Widget build(BuildContext context) {
    debugPrint('Selected category in myCard: ${widget.selectedCategory}');
    setState(() {
      switch (widget.selectedCategory) {
        case "Cats":
          petList = cats;
        case "Dogs":
          petList = dogs;
        case "Birds":
          petList = birds;
        case "Snakes":
          petList = snakes;
        case "Other":
          petList = other;
      }
    });
    final size = MediaQuery.of(context).size;

    return petList[0].name == ''
        ? const Center(child: Text("No pets"))
        : ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: petList.length,
            itemBuilder: (context, index) {
              PetsModel pet = petList[index];
              return InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return PetDetailsScreen(pet: pet);
                    },
                  ));
                },
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: size.width / 2 - 60,
                      margin: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 40,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 30,
                            color: Colors.grey,
                            offset: Offset(0, 5),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(),
                          ),
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.all(16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: Text(
                                          pet.name,
                                          maxLines: 1,
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 22,
                                          ),
                                        ),
                                      ),
                                      Icon(
                                        pet.sex.toLowerCase() == "male"
                                            ? Icons.male
                                            : Icons.female,
                                        color: Colors.grey,
                                      ),
                                    ],
                                  ),
                                  Text(
                                    pet.breed,
                                    maxLines: 1,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Text(
                                    "${pet.age} years old",
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: size.width / 2 - 40,
                      height: size.width / 2 - 20,
                      margin: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: pet.color,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 30,
                            color: Colors.grey,
                            offset: Offset(0, 5),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: size.width / 2 + 20,
                      height: size.width / 2 + 20,
                      child: Image.asset(pet.image),
                    ),
                  ],
                ),
              );
            },
          );
  }
}
