import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 30, // Provide some height for the divider
      child: VerticalDivider(
        color: Colors.black,
        thickness: 1,
      ),
    );
  }
}
