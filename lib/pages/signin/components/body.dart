import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class Body extends StatefulWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  FocusNode _emailFocus = new FocusNode();
  FocusNode _passwordFocus = new FocusNode();

  double _animatedContainerHeight = 190;
  double _animatedContainerWidth = 190;

  @override
  void initState() {
    super.initState();
    _emailFocus.addListener(_onFocusChange);
    _passwordFocus.addListener(_onFocusChange);
  }

  void _onFocusChange() {
    setState(() {
      if (_emailFocus.hasFocus || _passwordFocus.hasFocus) {
        _animatedContainerHeight = 90;
        _animatedContainerWidth = 90;
      } else {
        _animatedContainerHeight = 190;
        _animatedContainerWidth = 190;
      }
    });
  }

  @override
  void dispose() {
    _emailFocus.dispose();
    _passwordFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            AnimatedContainer(
              duration: kAnimationDuration,
              child: Image.asset(
                "assets/images/image1.png",
                width: _animatedContainerWidth,
                height: _animatedContainerHeight,
              ),
            ),
            SizedBox(height: 30),
            Text(
              "Login to you account",
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 30),
            TextField(
              focusNode: _emailFocus,
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
              ),
              decoration: InputDecoration(
                floatingLabelBehavior: FloatingLabelBehavior.always,
                hintText: "name@domain.com",
                hintStyle: TextStyle(
                  color: Colors.black12,
                  fontSize: 22,
                ),
                labelText: "Email",
                labelStyle: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(
                  width: SizeConfig.screenWidth * 0.6,
                  child: TextField(
                    focusNode: _passwordFocus,
                    obscureText: true,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                    ),
                    decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      hintText: "************",
                      hintStyle: TextStyle(
                        color: Colors.black12,
                        fontSize: 22,
                      ),
                      labelText: "Password",
                      labelStyle: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                Spacer(),
                Container(
                  width: 55,
                  height: 55,
                  margin: EdgeInsets.only(top: 15),
                  decoration: BoxDecoration(
                    color: kInactiveColor,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Icon(
                    Icons.chevron_right,
                    size: 35,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(height: 40),
            Center(child: Text("or", style: TextStyle(fontSize: 18))),
            SizedBox(height: 40),
            Container(
              height: 50,
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: kFacebookColor,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 20,
                    child: SvgPicture.asset(
                      "assets/icons/facebook.svg",
                      color: kFacebookColor,
                    ),
                  ),
                  Text(
                    "Login With Facebook",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: kFacebookColor,
                    ),
                  ),
                  SizedBox(width: 20),
                ],
              ),
            ),
            SizedBox(height: 50),
            Center(
              child: Text(
                "Forgot Password?",
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
