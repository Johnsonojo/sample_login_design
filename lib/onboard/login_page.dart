import 'package:flutter/material.dart';
import 'package:sample_login_design/components/rectangular_button.dart';
import 'package:sample_login_design/components/reusable_input_field.dart';
import 'package:sample_login_design/home/homepage.dart';
import 'package:sample_login_design/utils/app_resource.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: AppResource.primaryColor,
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          color: AppResource.primaryColor,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(AppResource.appName),
              const Text("Welcome Back"),
              const SizedBox(height: 64.0),
              ReusableInputField(
                  controller: _emailController,
                  borderRadius: 10.0,
                  enabledBorderColor: Colors.transparent,
                  labelColor: Colors.black,
                  hintText: "",
                  height: 50.0,
                  labelText: "Email",
                  hasLabelText: true,
                  obscureText: false),
              const SizedBox(height: 14.0),
              ReusableInputField(
                  controller: _passwordController,
                  borderRadius: 10.0,
                  enabledBorderColor: Colors.transparent,
                  labelColor: Colors.black,
                  hintText: "",
                  height: 50.0,
                  labelText: "Password",
                  hasLabelText: true,
                  obscureText: true),
              const SizedBox(height: 44.0),
              ReusableButton(
                backgroundColor: Colors.white,
                borderColor: AppResource.primaryColor,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                height: 50.0,
                onPressed: () {
                  handleLoginInputs();
                },
                text: "Login",
                textColor: AppResource.primaryColor,
                width: double.infinity,
                borderRadius: BorderRadius.circular(10),
                hasGradient: false,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void handleLoginInputs() {
    String email = _emailController.text.toString().trim();
    String password = _passwordController.text.toString().trim();

    if (email.isEmpty || password.isEmpty) {
      return;
    }

    Navigator.pushAndRemoveUntil<dynamic>(
        context,
        MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => const Homepage(),
        ),
        ((route) => false));
  }
}
