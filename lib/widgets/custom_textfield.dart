import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.textInputType,
    this.inputDecoration,
    required this.obscureText,
  });
  final TextInputType? textInputType;
  final InputDecoration? inputDecoration;
  final bool obscureText;
  @override
  Widget build(BuildContext context) {
    var textFieldContainerSize = 0.7;
    return SizedBox(
      width: MediaQuery.of(context).size.width * textFieldContainerSize,
      child: TextField(
        obscureText: obscureText,
        keyboardType: textInputType,
        style: Theme.of(context).textTheme.titleMedium,
        decoration: inputDecoration,
      ),
    );
  }
}
