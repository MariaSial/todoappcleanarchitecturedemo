import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  String text;
  VoidCallback onpressed;
  Color? backgroundColor;
  Color? textColor;
  CustomButton(
      {super.key,
      required this.onpressed,
      required this.text,
      this.backgroundColor,
      this.textColor});

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
            // side: WidgetStatePropertyAll(BorderSide(color: Colors.black)),
            fixedSize: WidgetStatePropertyAll(Size(
              MediaQuery.sizeOf(context).width * .37,
              MediaQuery.sizeOf(context).height * .07,
            )),
            shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
            backgroundColor: WidgetStatePropertyAll(widget.backgroundColor)),
        onPressed: widget.onpressed,
        child: Text(
          widget.text,
          style: TextStyle(color: widget.textColor),
        ));
  }
}
