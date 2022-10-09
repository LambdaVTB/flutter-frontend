import 'package:flutter/material.dart';

class Version extends StatefulWidget {
  const Version({super.key});

  @override
  State<Version> createState() => _VersionState();
}

class _VersionState extends State<Version> {

  @override
  Widget build(BuildContext context) => Scaffold(
      backgroundColor: const Color(0xffDBDBDB),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xffDBDBDB),
        leading: GestureDetector(
            onTap: () => Navigator.of(context).pop(),
            child: Row(
              children: const [
                Icon(
                    Icons.arrow_back_ios,
                    color: Color(0xff007AFF)
                ),
                Text(
                  "Назад",
                  style: TextStyle(
                    color: Color(0xff007AFF)
                  ),
                )
              ],
            )
        )
      ),
      body: Column(
        children: [
          RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                    text: "Сделано командой",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 24,
                        color: Color(0xff161616)
                    )
                ),
                TextSpan(
                    text: "Lambda()",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                        color: Color(0xff161616)
                    )
                ),
                TextSpan(
                    text: " с любовью для more.tech4",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 24,
                        color: Color(0xff161616)
                    )
                )
              ],
            ),
          ),
          const SizedBox(height: 48),
          Transform.rotate(
            angle: 3.14 / 12.0,
            child: Image.asset("assets/heart.png")
          )
        ],
      )
  );
}