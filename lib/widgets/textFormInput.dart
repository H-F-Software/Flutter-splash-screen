import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hire/util/colors.dart';
import 'package:hire/util/textStyles.dart';

class TextInputForm extends StatelessWidget {
  final String Function(String) validator;
  final TextEditingController textEditingController;
  final String hintText;
  final IconData icon;
  final Color fillColor;

  const TextInputForm(
      {@required this.validator,
      @required this.textEditingController,
      @required this.hintText,
      @required this.icon,
      this.fillColor});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      child: Container(
        color: fillColor == null ? MyColors().blueColor : fillColor,
        width: 320,
        child: TextFormField(
          validator: validator,
          controller: textEditingController,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: MyStyle().textStyleWhite_14,
            icon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                icon,
                color: Colors.white,
              ),
            ),
            filled: true,
            fillColor: fillColor == null ? MyColors().blueColor : fillColor,
          ),
        ),
      ),
    );
  }
}
