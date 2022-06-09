import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_upwork_project/core/color.dart';
import 'package:flutter_upwork_project/core/text_style.dart';
import 'package:flutter_upwork_project/data/plants.dart';
import 'package:flutter_upwork_project/widgets/custom_app_bar.dart';
import 'package:flutter_upwork_project/widgets/item_card.dart';
import 'package:flutter_upwork_project/widgets/menu_bar.dart';

class Crop extends StatefulWidget {
  const Crop({Key? key}) : super(key: key);

  @override
  _CropState createState() => _CropState();
}

class _CropState extends State<Crop> {
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
                        Text('Suggested'),
                        Text(
                          'Crops',
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