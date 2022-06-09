import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_upwork_project/core/color.dart';
import 'package:flutter_upwork_project/core/text_style.dart';
import 'package:flutter_upwork_project/data/animals.dart';
import 'package:flutter_upwork_project/widgets/a_custom_app_bar.dart';
import 'package:flutter_upwork_project/widgets/a_item_card.dart';
import 'package:flutter_upwork_project/widgets/a_menu_bar.dart';

class Animal extends StatefulWidget {
  const Animal({Key? key}) : super(key: key);

  @override
  _AnimalState createState() => _AnimalState();
}

class _AnimalState extends State<Animal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: Stack(
          children: [
            Row(
              children: [
                MenuBar(),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(top: 50, left: 35.0, right: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Animal'),
                        Text(
                          'Diseases',
                          style: headline1,
                        ),
                        Expanded(
                          child: Scrollbar(
                            thickness: 4,
                            child: ListView.builder(
                              itemCount: plants.length,
                              physics: BouncingScrollPhysics(),
                              itemBuilder: (itemBuilder, index) {
                                final plant = plants[index];
                                return PlantItemCard(
                                  plant: plant,
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            CustomAppBar(),
            Align(
              alignment: Alignment.bottomLeft,

            )
          ],
        ),
      ),
    );
  }
}
