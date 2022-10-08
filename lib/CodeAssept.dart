import 'package:flutter/material.dart';
import 'package:vtb_frontend/InterestsScreen.dart';
import 'package:vtb_frontend/SecondScreen.dart';

class CodeAsseptScreen extends StatefulWidget {
  const CodeAsseptScreen({Key? key}) : super(key: key);

  @override
  State<CodeAsseptScreen> createState() => CodeAsseptState();
}

class CodeAsseptState extends State<CodeAsseptScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 61, 16, 16),
                child: Text("Код отправден на номер телефона",
                    style: TextStyle(fontSize: 16,
                        fontFamily: 'PFDinTextPro-Regular',
                        fontWeight: FontWeight.bold),
                textAlign: TextAlign.center),
              ),
              SizedBox(
                height: 4,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(70, 0, 0, 69),
                child: Text("+7 904 333 64 64",
                    style: TextStyle(fontSize: 16,
                        fontFamily: 'PFDinTextPro-Regular',
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 95),
                child: TextFormField(
                  decoration: InputDecoration(
                    label: const Center(
                      child: Text("SMS code"),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 48),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const InterestsScreen()),
                    );
                  },
                  child: Container(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Запросить через 00:55",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black38,
                            fontFamily: 'PFDinTextPro-Regular'
                        ),
                      ),
                    ),
                    height: 60,
                    width: 311,
                    decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(80)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}