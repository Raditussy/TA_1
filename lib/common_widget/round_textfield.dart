import 'package:flutter/material.dart';

import '../common/color_extension.dart';

class RoundTextField extends StatefulWidget {
  final String title;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final TextAlign titleAlign;
  final bool obscureText;
  final TextStyle textStyle;
  const RoundTextField({
    Key? key,
    required this.title,
    this.titleAlign = TextAlign.left,
    this.controller,
    this.keyboardType,
    this.obscureText = false,
    required this.textStyle,
  }) : super(key: key);

  @override
  _RoundTextFieldState createState() => _RoundTextFieldState();
}

class _RoundTextFieldState extends State<RoundTextField> {
  Color _textColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                widget.title,
                textAlign: widget.titleAlign,
                style: TextStyle(color: TColor.gray50, fontSize: 12),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 4,
        ),
        Container(
          height: 48,
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: TColor.gray60.withOpacity(0.05),
            border: Border.all(color: TColor.gray70),
            borderRadius: BorderRadius.circular(15),
          ),
          child: TextField(
            controller: widget.controller,
            decoration: InputDecoration(
              focusedBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
            ),
            keyboardType: widget.keyboardType,
            obscureText: widget.obscureText,
            style: TextStyle(color: _textColor), // Use the textColor state
            onChanged: (value) {
              setState(() {
                _textColor = Colors.white; // Change text color on input
              });
            },
          ),
        )
      ],
    );
  }
}
