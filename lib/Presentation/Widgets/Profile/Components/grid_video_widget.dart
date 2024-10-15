import 'package:flutter/material.dart';

import '../../../../Data/DataSource/Resources/assets.dart';
import '../../../../Data/DataSource/Resources/text_style_const.dart';

class GridVideoWidget extends StatelessWidget {
  const GridVideoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return
        // Wrapping each grid item in a Padding
        Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Stack(
              children: [
                Positioned.fill(
                  child: Image.asset(
                    Assets.videoImage,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                  margin: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                      color: Color(0xfffe0202),
                      borderRadius: BorderRadius.circular(24)),
                  child: Text(
                    "California,USA",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Positioned(
                  top: 70,
                  left: 50,
                  right: 50,
                  child: IconButton(
                      onPressed: () {}, icon: Icon(Icons.play_circle_outlined)),
                )
              ],
            ),
          ),
          Text(
            "Max Maker",
            style: nameText.copyWith(fontSize: 16),
          ),
          Text("Assistant coach")
        ],
      ),
    );
  }
}
