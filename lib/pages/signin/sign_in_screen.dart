import 'package:budget_tracker/components/custom_appbar.dart';
import 'package:budget_tracker/size_config.dart';
import 'package:flutter/material.dart';

import 'components/body.dart';

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
      body: Body(),
    );
  }
}
