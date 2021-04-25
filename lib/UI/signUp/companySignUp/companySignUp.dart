import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hire/widgets/textFormInput.dart';

// ignore: must_be_immutable
class CompanySignUp extends StatelessWidget {
  TextEditingController userController = TextEditingController();
  TextEditingController companyNameController = TextEditingController();
  TextEditingController mailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController confirmPassController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'assets/images/login/company.png',
                fit: BoxFit.contain,
              ),
            ),
            Center(child: Form(child: formFields()))
          ],
        ),
      ),
    );
  }

  formFields() {
    return Column(
      children: [
        SizedBox(
          height: 8,
        ),
        TextInputForm(
          textEditingController: userController,
          hintText: 'UserName',
          icon: Icons.person,
          validator: (str) {
            return 'error name';
          },
        ),
        SizedBox(
          height: 8,
        ),
        TextInputForm(
          textEditingController: companyNameController,
          hintText: 'Company Name',
          icon: Icons.home_work_sharp,
          validator: (str) {
            return 'error company';
          },
        ),
        SizedBox(
          height: 8,
        ),
        TextInputForm(
          textEditingController: mailController,
          hintText: 'Company Email',
          icon: Icons.mail,
          validator: (str) {
            return 'error mail';
          },
        ),
        SizedBox(
          height: 8,
        ),
        TextInputForm(
          validator: (str) {
            return 'error';
          },
          textEditingController: passController,
          hintText: 'Password',
          icon: Icons.lock,
        ),
        SizedBox(
          height: 8,
        ),
        TextInputForm(
          textEditingController: confirmPassController,
          hintText: 'Confirm Password',
          icon: Icons.lock,
          validator: (str) {
            return 'error';
          },
        )
      ],
    );
  }
}
