import 'package:flutter/material.dart';
import 'package:petadopt/datas/pets_data.dart';
import 'package:petadopt/models/pets_model.dart';

class MyCard extends StatefulWidget {
  const MyCard({super.key});

  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    List<PetsModel> catList = cats;
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: catList.length,
      itemBuilder: (context, index) {
        PetsModel cat = catList[index];
        return Stack(
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
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Text(
                                  cat.name,
                                  maxLines: 1,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22,
                                  ),
                                ),
                              ),
                              Icon(
                                cat.sex.toLowerCase() == "male"
                                    ? Icons.male
                                    : Icons.female,
                                color: Colors.grey,
                              )
                            ],
                          ),
                          Text(
                            cat.breed,
                            maxLines: 1,
                            style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            "${cat.age} years old",
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
                color: cat.color,
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
              child: Image.asset(cat.image),
            ),
          ],
        );
      },
    );
  }
}
