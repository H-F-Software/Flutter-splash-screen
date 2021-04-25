import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hire/util/colors.dart';
import 'package:hire/util/textStyles.dart';

class SizedButton extends StatelessWidget {
  final String textButton;
  final double width, height, radius;
  final Color color;
  final void Function() onPress;

  const SizedButton(
      {@required this.textButton,
      @required this.onPress,
      this.width = 240,
      this.height = 46,
      this.radius = 10,
      this.color});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(radius)),
      child: SizedBox(
        width: width,
        height: height,
        child: FlatButton(
          color: color == null ? MyColors().blueColor : color,
          onPressed: onPress,
          child: Text(
            textButton,
            style: MyStyle().textStyleWhite_14,
          ),
        ),
      ),
    );
  }
}
