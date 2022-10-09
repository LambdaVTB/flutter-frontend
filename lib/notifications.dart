import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  const Notifications ({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  bool notificationsValue = false;

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
          "Уведомления",
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 22,
              color: Color(0xff161616)
          ),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16),
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
            Row(
              children: [
                const Text(
                  "Разрешить уведомления",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Color(0xff161616)
                  ),
                ),
                const Spacer(),
                CupertinoSwitch(
                  value: notificationsValue,
                  activeColor: Color(0xff007AFF),
                  onChanged: (bool value) {
                    notificationsValue = value;
                    setState(() {});
                  },
                )
              ],
            ),
            const SizedBox(height: 18),
            const Divider(color: Color(0xffE3E5EB)),
            const SizedBox(height: 20),
            notificationsTile("Все уведомления"),
            const SizedBox(height: 23),
            notificationsTile("Персонализированные уведомления"),
            const SizedBox(height: 23),
            notificationsTile("Уведомления о инсайтах"),
            const SizedBox(height: 24),
          ],
        ),
      )
  );

  Row notificationsTile(String text) => Row(
    children: [
      Text(
        text,
        style: const TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 14,
            color: Color(0xff161616)
        ),
      ),
      const Spacer(),
      Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Color(0xff007AFF),
            borderRadius: BorderRadius.circular(90)
        ),
        child: const Icon(
          Icons.done,
          color: Colors.white,
        ),
      )
    ],
  );
}