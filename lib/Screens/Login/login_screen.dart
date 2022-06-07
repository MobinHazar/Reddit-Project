import 'package:flutter/material.dart';
import '../../components/already_have_an_account_check.dart';
import '../../components/rounded_button.dart';
import '../../components/rounded_input_field.dart';
import '../../components/rounded_password_field.dart';
import '../Signup/signup_screen.dart';
import '../Welcome/Background.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Material(
      child: Background(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                "LOGIN Page",
                style: TextStyle(
                    fontSize: 40,fontWeight: FontWeight.bold
                    ),
              ),
              SizedBox(height: size.height * 0.01),
              SvgPicture.asset(
                "assets/icons/login.svg",
                height: size.height * 0.3,
              ),
              SizedBox(height: size.height * 0.01),
              RoundedInputField(
                hintText: "Your Email",
               onChanged: (value) {},
              ),
               RoundedPasswordField(
                 onChanged: (value) {},
               ),
               RoundedButton(
                 text: "LOGIN",
                 press: () {},
               ),
              SizedBox(height: size.height * 0.03),
              AlreadyHaveAnAccountCheck(
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const SignUpScreen();
                      },
                   ),
                 );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
