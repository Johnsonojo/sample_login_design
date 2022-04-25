import 'package:flutter/material.dart';
import 'package:sample_login_design/components/rectangular_button.dart';
import 'package:sample_login_design/components/reusable_input_field.dart';
import 'package:sample_login_design/home/homepage.dart';
import 'package:sample_login_design/utils/app_resource.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: AppResource.primaryColor,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            height: MediaQuery.of(context).size.height,
            padding: const EdgeInsets.all(20.0),
            color: AppResource.primaryColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(AppResource.appName),
                const Text("Welcome Back"),
                const SizedBox(height: 64.0),
                ReusableInputField(
                    controller: _firstNameController,
                    borderRadius: 10.0,
                    enabledBorderColor: Colors.transparent,
                    labelColor: Colors.black,
                    hintText: "",
                    height: 50.0,
                    labelText: "First Name",
                    hasLabelText: true,
                    obscureText: false),
                const SizedBox(height: 14.0),
                ReusableInputField(
                    controller: _lastNameController,
                    borderRadius: 10.0,
                    enabledBorderColor: Colors.transparent,
                    labelColor: Colors.black,
                    hintText: "",
                    height: 50.0,
                    labelText: "Last Name",
                    hasLabelText: true,
                    obscureText: false),
                const SizedBox(height: 14.0),
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
                    handleSignupInputs();
                  },
                  text: "Sign up",
                  textColor: AppResource.primaryColor,
                  width: double.infinity,
                  borderRadius: BorderRadius.circular(10),
                  hasGradient: false,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void handleSignupInputs() {
    String firstName = _firstNameController.text.toString().trim();
    String lastName = _lastNameController.text.toString().trim();
    String email = _emailController.text.toString().trim();
    String password = _passwordController.text.toString().trim();

    if (firstName.isEmpty ||
        lastName.isEmpty ||
        email.isEmpty ||
        password.isEmpty) {
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
