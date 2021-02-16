import 'package:flutter/material.dart';
import '../constants.dart';

class CustomAppbar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppbar({
    Key key,
    @required this.buttonText,
    @required this.press,
  }) : super(key: key);

  final String buttonText;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.only(top: 45, left: 10, right: 10),
        padding: EdgeInsets.only(left: 16),
        height: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [kDefaultShadow],
        ),
        child: Row(
          children: [
            Text(
              "Budget tracker",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  fontFamily: "Mali"),
            ),
            Spacer(),
            FlatButton(
              onPressed: press,
              child: Text(
                buttonText,
                style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 13,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight + 15);
}
