import 'package:budget_tracker/components/custom_appbar.dart';
import 'package:budget_tracker/constants.dart';
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
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Center(
                child: SvgPicture.asset(
                  "assets/icons/qucik1.svg",
                  width: 200,
                  height: 200,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Login to you account",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 20),
              TextField(
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                ),
                decoration: InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  hintText: "name@domain.com",
                  hintStyle: TextStyle(
                    color: Colors.black12,
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                  ),
                  labelText: "Email",
                  labelStyle: TextStyle(fontSize: 16),
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  SizedBox(
                    width: SizeConfig.screenWidth * 0.6,
                    child: TextField(
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
                        labelStyle: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: 55,
                    height: 55,
                    margin: EdgeInsets.only(top: 15),
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
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
              SizedBox(height: 20),
              Center(child: Text("or", style: TextStyle(fontSize: 16))),
              SizedBox(height: 20),
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
                      width: 10,
                      child: Icon(
                        Icons.face,
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
                    SizedBox(width: 10),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
