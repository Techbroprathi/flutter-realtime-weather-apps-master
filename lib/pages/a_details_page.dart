import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_upwork_project/data/animals.dart';
import 'package:flutter_upwork_project/core/color.dart';
import 'package:flutter_upwork_project/core/space.dart';
import 'package:flutter_upwork_project/core/text_style.dart';


class DetailsPage extends StatefulWidget {
  final Plant plant;
  const DetailsPage({Key? key, required this.plant}) : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  int selectImage = 0;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: white,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: black,
          ),
        ),

      ),
      body: Stack(
        children: [
          Container(
            height: height,
            color: Colors.blue,
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: height / 1.5,
              decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(200.0),
                ),
              ),
            ),
          ),

          Align(
            alignment: Alignment.topCenter,
            child: Column(
              children: [
                Container(
                  height: height / 2.2,
                  child: PageView(
                    physics: BouncingScrollPhysics(),
                    onPageChanged: (index) {
                      setState(() {
                        selectImage = index;
                      });
                    },
                    children: [
                      for (int i = 0; i < widget.plant.images.length; i++)
                        Image.asset(
                          widget.plant.images[i],
                          height: height / 2.2,
                        )
                    ],
                  ),
                ),
                SpaceVH(height: 20.0),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 100.0,
                      child: Column(
                        children: [
                          for (int k = 0; k < widget.plant.images.length; k++)
                            Container(
                              margin: EdgeInsets.only(bottom: 5.0),
                              height: k == selectImage ? 20.0 : 6.0,
                              width: 6,
                              decoration: BoxDecoration(
                                color: k == selectImage
                                    ? Colors.blue
                                    : Colors.blue.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                            ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Symptoms:",
                            style: headline1,
                          ),
                          SpaceVH(height: 5.0),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              widget.plant.description,
                              maxLines: 5,
                            ),
                          ),
                          SpaceVH(height: 20.0),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              SpaceVH(width: 20.0),

                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 120.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: bottomTag(
                      headingText: 'VACCINE',
                      image: 'vaccine.svg',
                      text: widget.plant.height,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: bottomTag(
                      headingText: 'CURE',
                      image: 'cure.svg',
                      text: widget.plant.temp,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: bottomTag(
                      headingText: 'INFECTION RATE',
                      image: 'percent.svg',
                      text: widget.plant.pot,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget bottomTag({
    required String text,
    required String image,
    required String headingText,
  }) {
    return Column(
      children: [
        SvgPicture.asset(
          'assets/icon/$image',
          height: 30.0,
          color: white,
        ),
        SpaceVH(height: 15.0),
        Text(
          headingText,
          style: headline3,
        ),
        SpaceVH(height: 5.0),
        Text(
          text,
          style: headline4,
        ),
      ],
    );
  }
}