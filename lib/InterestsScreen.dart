import 'package:flutter/material.dart';
import 'package:vtb_frontend/HomePage.dart';
import 'package:vtb_frontend/custom_button.dart';
import 'package:vtb_frontend/custom_navigation_bar.dart';


class InterestsScreen extends StatefulWidget {
  const InterestsScreen({Key? key}) : super(key: key);

  @override
  State<InterestsScreen> createState() => InterestsScreenState();
}

class InterestsScreenState extends State<InterestsScreen> {


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
                child: Text("Выберите свои интересы",
                    style: TextStyle(fontSize: 32,
                        fontFamily: 'PFDinTextPro-Bold',
                        fontWeight: FontWeight.bold)),
              ),
              Container(
                  child: Text("Выберите то, что вам нравится, чтобы мы\n давали вам самые интересные новости",
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.6),
                        fontFamily: 'PFDinTextPro'

                    ),
                  )
              ),
              Wrap(
                runSpacing: -15,
                children: [
                  container("Business", "Бизнес" ),

                  container("Money", "Финансы" ),

                  container("Market", "Рынок"),

                  container("Time", "Продуктивность"),

                  container("Fire", "Стартапы"),

                  container("Laptop", "Технологии"),

                  container("Light", "Идеи"),




                ],
              ),
              Spacer(),
              CustomButton(text: "Продолжить", onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => CustomNavigationBar()),
              ),),
              SizedBox(height: 20,)
            ],
          ),
        ),
      ),
    );
  }

  Container container(String image, text){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      margin: EdgeInsets.only(top: 48, right: 8),
      child: InkWell(
        onTap: () {

        },
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/$image.png'),
            Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'PFDinTextPro-Regular'
              ),
            ),
          ],
        ),
      ),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          color: Colors.white,
          borderRadius: BorderRadius.circular(80)),
    );
  }
}