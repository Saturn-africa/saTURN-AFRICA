import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:saturn/auth/Registration/create_details.dart';
import 'package:saturn/custom_widgets/custom_button.dart';
import 'package:saturn/custom_widgets/custom_input.dart';
import 'package:saturn/custom_widgets/custom_rich_text.dart';
import 'package:saturn/helper_widgets/email_validator.dart';
import 'package:saturn/helper_widgets/text_style.dart';
import 'package:saturn/models/login_models/sign_in_model.dart';
import 'package:saturn/providers/auth/login_provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Sign In",
          style: appBarTextStyle,
        ),
        elevation: 0,
      ),
      body: Consumer<LoginProvider>(
        builder: (_, login, __) => SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
                vertical: size.height * 0.02, horizontal: size.width * 0.04),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Input your details to Sign in",
                    style: registrationHeaderTextStyle,
                  ),
                  const SizedBox(height: 20),
                  CustomInputField(
                    size: size,
                    text: "Email",
                    hintText: "Enter your email address",
                    keyboardType: TextInputType.emailAddress,
                    controller: emailController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Email address must be entered";
                      } else if (!validateEmail(value)) {
                        return "Email address format is incorrect";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  CustomInputField(
                    size: size,
                    text: "Password",
                    obscureText: true,
                    maxLines: 1,
                    controller: passwordController,
                    hintText: "Enter your password",
                    keyboardType: TextInputType.name,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Password must be entered";
                      } else if (value.length < 8) {
                        return "Password must be at least 8 characters long";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 10),
                  InkWell(
                    onTap: () {},
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        "Forgot Password?",
                        style: verifyOTPResendStyle,
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.35),
                  CustomButtonWidget(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          SignInModel userData = SignInModel(
                              email: emailController.text.trim(),
                              password: passwordController.text.trim(),
                              passwordConfirm: passwordController.text.trim());

                          login.userSignIn(userData);
                        }
                      },
                      text: Text(
                        "Sign In",
                        style: buttonStyle,
                      )),
                  const SizedBox(height: 10),
                  Center(
                    child: CustomRichTextWidget(
                        firstText: "Don't have an account? ",
                        lastText: "Sign Up",
                        defaultStyle: verifyOTPLabelStyle,
                        linkStyle: verifyOTPResendStyle,
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const CreateAccount()));
                        }),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
