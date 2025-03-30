import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({super.key, required this.text, required this.isExplain});

  final String text;
  final bool isExplain;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 240,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/bar.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Image(image: AssetImage("assets/Rectangle 5.png")),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Flexible(
                  child: Text(
                    overflow: TextOverflow.visible,
                    text,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        if (isExplain)
          Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(50, 50),
                          backgroundColor: Colors.red,
                          shape: CircleBorder(
                            side: BorderSide(color: Colors.red),
                          ),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.arrow_back_rounded,
                            size: 28,
                            color: Colors.white,
                          ),
                        )),
                  ),
                ],
              ),
            ],
          ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(200);
}
