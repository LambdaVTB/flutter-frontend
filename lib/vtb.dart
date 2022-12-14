import 'package:flutter/material.dart';

class Vtb extends StatefulWidget {
  const Vtb({Key? key}) : super(key: key);

  @override
  State<Vtb> createState() => _VtbState();
}

class _VtbState extends State<Vtb> {

  @override
  Widget build(BuildContext context) => Container(
    height: 400,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20)
    ),
    child: Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(
              "assets/vtb_background.png",
            width: MediaQuery.of(context).size.width - 32,
            fit: BoxFit.fill
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset("assets/vtb.png"),
                  const SizedBox(width: 13),
                  Column(
                    children: const [
                      Text(
                        "ВТБ",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 17,
                          color: Colors.white
                        ),
                      ),
                      Text(
                        "До 55,32% за 6 месяцев",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: Color(0xffA3A5A7)
                        ),
                      )
                    ],
                  ),
                  const Spacer(),
                  const Text(
                    "ИДЕЯ",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 11,
                      color: Color(0xffA3A5A7)
                    )
                  )
                ]
              ),
              const Spacer(),
              const Text(
                "Банковский сектор растет вместе с восстановлением экономики",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                  color: Colors.white
                )
              ),
              const SizedBox(height: 4),
              Row(
                children: [
                  Container(
                    height: 8,
                    width: 8,
                    decoration: BoxDecoration(
                      color: const Color(0xff00C960),
                      borderRadius: BorderRadius.circular(90)
                    )
                  ),
                  const SizedBox(width: 4),
                  const Text(
                    "Сегодня, 15:30",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                      color: Color(0xffA3A5A7)
                    )
                  ),
                  const Spacer(),
                  const Icon(
                      Icons.bookmark_border,
                    color: Color(0xffA3A5A7),
                  )
                ],
              )
            ],
          ),
        )
      ],
    )
  );
}