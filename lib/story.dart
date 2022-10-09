import 'dart:async';
import 'package:flutter/material.dart';

class Story extends StatefulWidget {
  const Story({super.key});

  @override
  State<Story> createState() => _StoryState();
}

class _StoryState extends State<Story> {
  PageController pageController = PageController();

  Timer? timer;

  List<String> titles = ["Тренды", "Инсайты дня"];

  int index = 0, milliseconds = 0;

  @override
  void initState() {
    timer = Timer.periodic(const Duration(milliseconds: 100), (timer) {
      if (milliseconds > 150) {
        if (index == titles.length - 1) {
          Navigator.of(context).pop();
          timer.cancel();
        }
        else {
          index++;
          milliseconds = 0;
          pageController.nextPage(
              duration: const Duration(milliseconds: 500),
              curve: Curves.ease
          );
        }
      }
      milliseconds++;
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20)
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  bottom: 82,
                  child: PageView(
                    controller: pageController,
                    onPageChanged: (value) {
                      index = value;
                      setState(() {});
                    },
                    children: [
                      Stack(
                        children: [
                          Image.asset(
                            "assets/background.png",
                            height: MediaQuery.of(context).size.height,
                            width: MediaQuery.of(context).size.width,
                            fit: BoxFit.fill,
                          ),
                          Positioned(
                              top: 92,
                              left: 16,
                              right: 16,
                              child: SizedBox(
                                  height: 295,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Stack(
                                        fit: StackFit.loose,
                                        children: [
                                          Container(
                                            height: 295,
                                            width: double.infinity,
                                            margin: const EdgeInsets.symmetric(horizontal: 13),
                                            padding: const EdgeInsets.only(
                                                top: 52,
                                                left: 23
                                            ),
                                            decoration: BoxDecoration(
                                                color: const Color(0xff161616),
                                                borderRadius: BorderRadius.circular(24)
                                            ),
                                            child: const Text(
                                              "Инфляция растёт",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 48,
                                                  color: Colors.white
                                              ),
                                            ),
                                          ),
                                          Align(
                                              alignment: Alignment.bottomRight,
                                              child: Image.asset(
                                                  "assets/inflation.png",
                                                  height: 254,
                                                  width: 199.5
                                              )
                                          )
                                        ],
                                      )
                                    ],
                                  )
                              )
                          )
                        ],
                      ),
                      Stack(
                        children: [
                          Image.asset(
                            "assets/background2.png",
                            height: MediaQuery.of(context).size.height,
                            width: MediaQuery.of(context).size.width,
                            fit: BoxFit.fill,
                          ),
                          Positioned(
                            left: 16,
                              right: 25,
                              bottom: 71,
                              child: Column(
                                children: const [
                                  Text(
                                    "Топ-6 платформ, где можно купить и продать NFT",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 40,
                                      color: Colors.white
                                    )
                                  ),
                                  SizedBox(height: 18),
                                  Text(
                                    "Популярность NFT растет не только среди коллекционеров, но и среди инвесторов и трейдеров. Разбираемся, где можно купить или продать NFT.",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: Colors.white
                                    ),
                                  )
                                ],
                              )
                          )
                        ],
                      ),
                    ],
                  )
                ),
                Positioned(
                    top: 16,
                    left: 16,
                    right: 16,
                    bottom: 26.5,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              titles[index],
                              style: const TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 22,
                                  color: Colors.white
                              ),
                            ),
                            const Spacer(),
                            GestureDetector(
                              onTap: () => Navigator.of(context).pop(),
                              child: ClipOval(
                                  child: Container(
                                      color: const Color.fromARGB(1, 255, 255, 255),
                                      child: const Icon(
                                          Icons.close,
                                          color: Color(0xffF2F3F8)
                                      )
                                  )
                              )
                            )
                          ]
                        ),
                        const SizedBox(height: 25),
                        Row(
                            children: [
                              Flexible(
                                child: SizedBox(
                                    height: 1,
                                    child: LinearProgressIndicator(
                                      value: index == 0 ? milliseconds * 0.006 : 0,
                                      color: const Color(0xffC9CBCD),
                                      valueColor: const AlwaysStoppedAnimation<Color>(Colors.white),
                                    )
                                ),
                              ),
                              const SizedBox(width: 16),
                              Flexible(
                                child: SizedBox(
                                    height: 1,
                                    child: LinearProgressIndicator(
                                      value: index == 1 ? milliseconds * 0.006 : 0,
                                      color: const Color(0xffC9CBCD),
                                      valueColor: const AlwaysStoppedAnimation<Color>(Colors.white),
                                    )
                                ),
                              )
                            ]
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.keyboard_arrow_up,
                          color: Colors.white
                        ),
                        const Text(
                          "ЧИТАТЬ ДАЛЕЕ",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                            color: Colors.white
                          )
                        ),
                        const SizedBox(height: 40.5),
                        Row(
                          children: const [
                            Icon(
                                Icons.bookmark_border,
                              color: Color(0xffA3A5A7),
                            ),
                            Spacer(),
                            Icon(
                                Icons.share,
                              color: Color(0xffA3A5A7),
                            )
                          ],
                        )
                      ],
                    )
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  bottom: 82,
                  child: GestureDetector(
                      onTap: () {
                        if (index == 0) {
                          Navigator.of(context).pop();
                        }
                        else {
                          index--;
                          milliseconds = 0;
                          pageController.previousPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.ease
                          );
                        }
                      },
                      child: Container(
                          height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width / 2,
                          color: Colors.transparent
                      )
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  bottom: 82,
                  child: GestureDetector(
                      onTap: () {
                        if (index == titles.length - 1) {
                          Navigator.of(context).pop();
                        }
                        else {
                          index++;
                          milliseconds = 0;
                          pageController.nextPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.ease
                          );
                        }
                      },
                      child: Container(
                          height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width / 2,
                          color: Colors.transparent
                      )
                  ),
                ),
              ],
            ),
          )
      )
  );
}