import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:saturn/auth/Registration/verify_email.dart';
import 'package:saturn/auth/login/login_page.dart';
import 'package:saturn/custom_widgets/custom_button.dart';
import 'package:saturn/custom_widgets/custom_input.dart';
import 'package:saturn/custom_widgets/custom_rich_text.dart';
import 'package:saturn/helper_widgets/email_validator.dart';
import 'package:saturn/helper_widgets/progress_bar.dart';
import 'package:saturn/helper_widgets/text_constants.dart';
import 'package:saturn/helper_widgets/text_style.dart';
import 'package:saturn/models/registration_models/signup_payload.dart';
import 'package:saturn/providers/auth/registration_provider.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  RegistrationTexts texts = RegistrationTexts();
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController mobileController = TextEditingController();

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    mobileController.dispose();
    emailController.dispose();
    super.dispose();
  }

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          texts.appBarText,
          style: appBarTextStyle,
        ),
        elevation: 0,
      ),
      body: Consumer<RegistrationProvider>(
        builder: (_, register, __) => SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.05, vertical: size.height * 0.02),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(texts.headerText, style: registrationHeaderTextStyle),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomInputField(
                    size: size,
                    text: texts.usernameText,
                    hintText: texts.usernameHint,
                    controller: usernameController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return texts.usernameError;
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomInputField(
                    size: size,
                    text: texts.emailText,
                    controller: emailController,
                    hintText: texts.emailHint,
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value!.trim().isEmpty) {
                        return texts.emailError;
                      } else {
                        if (!validateEmail(value.trim())) {
                          return texts.inValidEmail;
                        } else {
                          return null;
                        }
                      }
                    },
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomInputField(
                    size: size,
                    text: texts.mobileText,
                    hintText: texts.mobileHint,
                    keyboardType: TextInputType.phone,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return texts.mobileError;
                      } else if (!register.checkPhoneNumber(value)) {
                        return texts.ivalidNumber;
                      }
                      return null;
                    },
                    controller: mobileController,
                  ),
                  const SizedBox(height: 15),
                  CustomInputField(
                    size: size,
                    text: texts.passwordText,
                    controller: passwordController,
                    obscureText: true,
                    maxLines: 1,
                    keyboardType: TextInputType.name,
                    hintText: texts.passwordHint,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return texts.passwordError;
                      } else if (value.length < 8) {
                        return texts.inCompletePassword;
                      } else {
                        return null;
                      }
                    },
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomInputField(
                    size: size,
                    text: texts.confirmPasswordText,
                    controller: confirmPasswordController,
                    obscureText: true,
                    maxLines: 1,
                    keyboardType: TextInputType.name,
                    hintText: texts.passwordHint,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return texts.confirmPasswordError;
                      } else if (passwordController.text.trim() != value) {
                        return texts.unequalPassword;
                      } else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(
                    height: size.height * 0.1,
                  ),
                  SizedBox(
                    height: 60,
                    child: CustomButtonWidget(
                      text: register.isClicked
                          ? loadingIndicator()
                          : Text(
                              texts.continueText,
                              style: buttonStyle.copyWith(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                      onPressed: () {
                        FocusScope.of(context).unfocus();
                        if (register.isClicked) {
                          register.onClick();
                          return;
                        }
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const VerifyOTP()));
                        if (_formKey.currentState!.validate()) {
                          register.onClick();
                          SignupModel userData = SignupModel(
                            username: usernameController.text.trim(),
                            phoneNumber: register
                                .getPhoneNumber(mobileController.text.trim()),
                            password: passwordController.text.trim(),
                            passwordConfirm:
                                confirmPasswordController.text.trim(),
                            email: emailController.text.trim(),
                          );
                          register.userSignup(userData, context);
                        }
                      },
                    ),
                  ),
                  const SizedBox(height: 10),
                  Center(
                      child: CustomRichTextWidget(
                          firstText: texts.richText1,
                          lastText: texts.richText2,
                          defaultStyle: verifyOTPLabelStyle,
                          linkStyle: verifyOTPResendStyle,
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LoginPage()));
                          })),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}