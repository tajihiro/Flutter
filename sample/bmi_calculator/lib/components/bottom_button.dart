import 'package:flutter/cupertino.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({@required this.buttonTitle, @required this.onTap});

  final String buttonTitle;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: kLargeLabelTextStyle,
          ),
        ),
        color: kBottomBarColor,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomBarHeight,
      ),
    );
  }
}
