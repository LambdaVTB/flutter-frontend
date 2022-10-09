import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  TextEditingController name = TextEditingController(),
      phone = TextEditingController(),
      status = TextEditingController();

  @override
  void initState() {
    name.text = "Смурыгин Егор";
    phone.text = "+7 904 333 64 64";
    status.text = "Генеральный директор";
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
      backgroundColor: const Color(0xffDBDBDB),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xffDBDBDB),
        leading: GestureDetector(
          onTap: () => Navigator.of(context).pop(),
          child: const Icon(
              Icons.arrow_back_ios,
            color: Color(0xff007AFF)
          )
        ),
        title: const Text(
          "Профиль",
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 22,
            color: Color(0xff161616)
          ),
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 43),
              ClipOval(
                child: Image.asset(
                  "assets/avatar.png",
                  height: 116,
                  width: 116,
                ),
              ),
              const SizedBox(height: 16),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white
                ),
                padding: const EdgeInsets.only(
                  top: 21,
                  left: 16,
                  right: 16,
                  bottom: 31
                ),
                child: Column(
                  children: [
                    const Text(
                      "Имя Фамилия",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 13,
                        color: Color(0xffA3A5A7)
                      )
                    ),
                    TextField(
                      controller: name,
                      style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 22,
                        color: Color(0xff161616)
                      )
                    ),
                    const Text(
                        "Номер телефона",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                            color: Color(0xffA3A5A7)
                        )
                    ),
                    TextField(
                      controller: phone,
                        style: const TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 22,
                            color: Color(0xff161616)
                        )
                    ),
                    const Text(
                        "Должность",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                            color: Color(0xffA3A5A7)
                        )
                    ),
                    TextField(
                      controller: status,
                        style: const TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 22,
                            color: Color(0xff161616)
                        )
                    )
                  ],
                ),
              ),
            ],
          )
      )
  );
}