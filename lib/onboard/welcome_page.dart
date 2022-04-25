import 'package:flutter/material.dart';
import 'package:sample_login_design/components/rectangular_button.dart';
import 'package:sample_login_design/onboard/login_page.dart';
import 'package:sample_login_design/onboard/signup_page.dart';
import 'package:sample_login_design/utils/app_resource.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  final Shader linearGradient = const LinearGradient(
    colors: <Color>[Color(0XFFb5dbac), Color(0XFF8aba80), Color(0XFF21381c)],
  ).createShader(
    const Rect.fromLTWH(100.0, 100.0, 200.0, 70.0),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppResource.primaryColor,
        elevation: 0.0,
      ),
      body: SafeArea(
        child: Container(
          // Image.asset(
          //   asset,
          //   height: 200,
          //   width: MediaQuery.of(context).size.width,
          //   fit: BoxFit.cover,
          // ),
          child: Column(
            children: [
              Expanded(
                child: Container(
                  height: 300.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/greeny.jpg"),
                      fit: BoxFit.cover,
                    ),
                    // color: AppResource.primaryColor,
                  ),
                ),
              ),
              Container(
                color: Colors.white,
                padding: const EdgeInsets.symmetric(
                    vertical: 64.0, horizontal: 32.0),
                height: 400.0,
                width: MediaQuery.of(context).size.width,
                child: Column(children: [
                  Text(
                    AppResource.appName,
                    style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        foreground: Paint()..shader = linearGradient),
                  ),
                  const Text(
                    "Start counting the calories and get healthier with our help",
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 32, bottom: 16),
                    child: ReusableButton(
                      borderRadius: BorderRadius.circular(22.0),
                      height: 44.0,
                      fontWeight: null,
                      fontSize: 16.0,
                      borderColor: Colors.transparent,
                      elevation: 0.0,
                      backgroundColor: AppResource.primaryColor,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPage()),
                        );
                      },
                      textColor: Colors.white,
                      text: 'Login',
                      width: MediaQuery.of(context).size.width,
                      hasGradient: true,
                    ),
                  ),
                  ReusableButton(
                    borderRadius: BorderRadius.circular(22.0),
                    height: 44.0,
                    fontWeight: null,
                    fontSize: 16.0,
                    borderColor: AppResource.primaryColor,
                    backgroundColor: Colors.white,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignupPage()),
                      );
                    },
                    textColor: AppResource.primaryColor,
                    text: 'Sign Up',
                    width: MediaQuery.of(context).size.width,
                    hasGradient: false,
                  )
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
