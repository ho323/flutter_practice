import 'package:calendar_schedule/const/colors.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  const CustomTextField({
    required this.label,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            color: PRIMARY_COLOR,
            fontWeight: FontWeight.w600,
          ),
        ),
        TextField(
          cursorColor: Colors.grey,
          decoration: InputDecoration(
            border: InputBorder.none,
            filled: true,
            fillColor: Colors.grey[300],
          ),
        ),
      ],
    );
  }
}
