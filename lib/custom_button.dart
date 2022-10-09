import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, required this.text, required this.onTap}) : super(key: key);

  final String text;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        child: Align(
          alignment: Alignment.center,
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'PFDinTextPro-Regular'
            ),
          ),
        ),
        height: 60,
        width: 311,
        decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(80)),
      ),
    );
  }
}

