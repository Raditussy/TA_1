import 'package:flutter/material.dart';
import 'package:tugas_akhir_xi/common/color_extension.dart';

class PrimaryButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final double fontSize;
  final FontWeight fontWeight;
  const PrimaryButton(
      {super.key,
      required this.title,
      this.fontSize = 14,
      this.fontWeight = FontWeight.w600,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {},
        child: Container(
          height: 50,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/img/primary_btn.png")),
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                  color: TColor.secondary.withOpacity(0.1),
                  blurRadius: 10,
                  offset: const Offset(0, 4))
            ],
          ),
          alignment: Alignment.center,
          child: Text(
            "Get Started",
            style: TextStyle(
                color: TColor.white, fontSize: 14, fontWeight: FontWeight.w600),
          ),
        ));
  }
}
