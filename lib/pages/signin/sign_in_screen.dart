import 'package:budget_tracker/components/custom_appbar.dart';
import 'package:budget_tracker/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignInScreen extends StatelessWidget {
  static const routeName = '/sign_in';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      appBar: CustomAppbar(
        buttonText: "Sign Up",
        press: () {},
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: SvgPicture.asset(
                "assets/icons/qucik1.svg",
                width: 200,
                height: 200,
              ),
            ),
            Text("Login to you account")
          ],
        ),
      ),
    );
  }
}
