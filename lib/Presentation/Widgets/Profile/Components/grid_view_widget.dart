import 'package:flutter/cupertino.dart';

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({super.key});

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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text("PPG"),
              Text("70"),
            ],
          ),
          const SizedBox(height: 8), // Space between the text and progress bar
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  height: 4, // Height of the progress bar
                  color: const Color(0xfffe0202), // Red color
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  height: 4, // Height of the progress bar
                  color: const Color(0xfff6f6f6), // Gray color
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
