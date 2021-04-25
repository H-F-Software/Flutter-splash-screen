import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hire/UI/signUp/companySignUp/companySignUp.dart';
import 'package:hire/util/StaticData.dart';
import 'package:hire/util/textStyles.dart';
import 'package:hire/widgets/sizedButton.dart';

class SelectLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Image.asset(
              'assets/images/splash/selectlogin.png',
              fit: BoxFit.contain,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              StaticData().companyName,
              style: MyStyle().textStyleBoldBlack_24,
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedButton(
                textButton: 'Work',
                onPress: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => CompanySignUp()));
                }),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedButton(textButton: 'Hire', onPress: () {}),
          ),
        ],
      ),
    );
  }
}
