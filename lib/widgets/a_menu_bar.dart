import 'package:flutter/material.dart';
import 'package:flutter_upwork_project/core/color.dart';
import 'package:flutter_upwork_project/core/text_style.dart';
import 'package:flutter_upwork_project/data/Animal_menu.dart';
import 'package:flutter_upwork_project/widgets/a_clipper.dart';

class MenuBar extends StatefulWidget {
  const MenuBar({Key? key}) : super(key: key);

  @override
  _MenuBarState createState() => _MenuBarState();
}

class _MenuBarState extends State<MenuBar> {
  int selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 85.0,
      color: Colors.blue,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (int i = 0; i < menuItems.length; i++)
            menuButton(
              text: menuItems[i].name,
              onTap: () {
                setState(() {
                  selectIndex = i;
                });
              },
              index: i,
            ),
        ],
      ),
    );
  }

  Widget menuButton({
    required String text,
    required int index,
    required Function() onTap,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        RotatedBox(
          quarterTurns: 3,
          child: Padding(
            padding: EdgeInsets.only(left: 25.0),
            child: TextButton(
              onPressed: onTap,
              child: Text(
                text,
                style: buttonText,
              ),
            ),
          ),
        ),
        selectIndex == index
            ? RotatedBox(
          quarterTurns: 2,
          child: ClipPath(
            clipper: CustomMenuClip(),
            child: Container(
              width: 35,
              height: 110,
              color: white,
              child: Center(
                child: CircleAvatar(
                  backgroundColor: Colors.blue,
                  radius: 3,
                ),
              ),
            ),
          ),
        )
            : SizedBox(
          width: 35,
          height: 110,
        ),
      ],
    );
  }
}
