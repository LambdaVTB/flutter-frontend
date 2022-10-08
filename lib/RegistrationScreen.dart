import 'package:flutter/material.dart';
import 'package:vtb_frontend/CodeAssept.dart';


class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => RegistrationScreenState();
}

class RegistrationScreenState extends State<RegistrationScreen> {


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
                    child: Text("Введите номер телефона",
                    style: TextStyle(fontSize: 32,
                    fontFamily: 'PFDinTextPro-Bold',
                    fontWeight: FontWeight.bold)),
                  ),
                  Container(
                    child: Text("Чтобы войти или стать\n клиентом ВТБ Новости",
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.6),
                        fontFamily: 'PFDinTextPro'

                    ),
                  )
                  ),
                  Container(

                    child: TextField(
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 48),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CodeAsseptScreen()),
                        );
                      },
                      child: Container(
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Продолжить",
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
                    ),
                  ),
                ],
              ),
            ),
    ),
        );
  }
}