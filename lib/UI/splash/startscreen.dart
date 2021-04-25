import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hire/UI/splash/selectLogin.dart';
import 'package:hire/util/colors.dart';
import 'package:hire/widgets/sizedButton.dart';

// ignore: must_be_immutable
class SplashScreen extends StatelessWidget {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "Adopt a plant",
      "image": "assets/images/splash/startscreen0.png",
    },
    {
      "text": "Befriend a furn",
      "image": "assets/images/splash/startscreen1.png",
    },
    {
      "text": "Go green",
      "image": "assets/images/splash/startscreen2.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
        builder: (BuildContext context, StateSetter setState) {
      return Scaffold(
          body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 3,
                child: PageView.builder(
                  onPageChanged: (index) {
                    setState(() {
                      currentPage = index;
                    });
                  },
                  itemCount: splashData.length,
                  itemBuilder: (context, index) => splashContent(
                    "hany",
                    splashData[index]["image"],
                  ),
                ),
              ),
              Expanded(
                  flex: 2,
                  child: Column(
                    children: <Widget>[
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          3,
                          (index) => buildDot(index: index),
                        ),
                      ),
                      Spacer(flex: 3),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: SizedButton(
                          textButton: 'continue',
                          onPress: () {
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SelectLogin()));
                          },
                        ),
                      ),
                      Spacer(),
                    ],
                  ))
            ],
          ),
        ),
      ));
    });
  }

  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: Duration(seconds: 1),
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 12 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? MyColors().blueColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }

  splashContent(String text, String image) {

    return Column(
      children: <Widget>[
        Spacer(),
        Text(
          "Little Green Friends",
          style: TextStyle(
            fontFamily: "DancingScript",
            fontSize: 36,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          text,
          textAlign: TextAlign.center,
        ),
        Spacer(),
        Image.asset(
          image,
          height: 256,
          width: 235,
        )
      ],
    );
  }
}
