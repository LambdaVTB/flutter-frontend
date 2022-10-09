import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vtb_frontend/settings.dart';
import 'package:vtb_frontend/version.dart';

import 'notifications.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  bool geopositionValue = false;

  @override
  Widget build(BuildContext context) => Scaffold(
      backgroundColor: const Color(0xffDBDBDB),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 79),
              ClipOval(
                child: Image.asset(
                    "assets/avatar.png",
                  height: 116,
                  width: 116,
                ),
              ),
              const SizedBox(height: 12),
              const Text(
                "Смурыгин Егор",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 22,
                    color: Color(0xff161616)
                ),
              ),
              const SizedBox(height: 3),
              const Text(
                  "Ген. Директор",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                      color: Color(0xffA3A5A7)
                  )
              ),
              const SizedBox(height: 25),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white
                ),
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    profileTile(const Settings(), "settings", "Основные"),
                    const Divider(color: Color(0xffE3E5EB)),
                    profileTile(const Notifications(), "notifications", "Уведомления"),
                    const Divider(color: Color(0xffE3E5EB)),
                    profileTile(const Settings(), "interests", "Интересы"),
                    const Divider(color: Color(0xffE3E5EB)),
                    profileTile(const Settings(), "geoposition", "Геопозиция", true),
                    const Divider(color: Color(0xffE3E5EB)),
                    profileTile(const Version(), "version", "Версия приложения"),
                  ],
                ),
              ),
              const SizedBox(height: 60),
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 56,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: const Color(0xffE3E5EB),
                      borderRadius: BorderRadius.circular(80)
                  ),
                  child: const Text(
                    "Выйти из аккаунта",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 17,
                        color: Color(0xff007AFF)
                    ),
                  ),
                ),
              )
            ],
          )
        )
      )
  );

  GestureDetector profileTile(Widget page, String icon, text,
      [bool isGeoposition = false]) => GestureDetector(
    onTap: () => Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => page)
    ),
    child: Container(
      height: 56,
      color: Colors.transparent,
      child: Row(
        children: [
          SvgPicture.asset("assets/$icon.svg"),
          const SizedBox(width: 16),
          Text(
            text,
            style: const TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 17,
              color: Color(0xff161616)
            ),
          ),
          const Spacer(),
          isGeoposition ? CupertinoSwitch(
              value: geopositionValue,
              onChanged: (value) {
                geopositionValue = value;
                setState(() {});
              },
            activeColor: const Color(0xffC9CBCD),
          ) : const Icon(
              Icons.arrow_forward_ios,
            color: Color(0xffC9CBCD),
          )
        ],
      ),
    )
  );
}