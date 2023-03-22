import 'package:flutter/material.dart';
import 'package:saturn/helper_widgets/email_validator.dart';
import 'package:saturn/helper_widgets/text_constants.dart';
import 'package:saturn/providers/auth/registration_provider.dart';

dynamic usernameValidator(value) {
  if (value!.isEmpty) {
    return RegistrationTexts().usernameError;
  }
  return null;
}

dynamic emailAddressValidator(value) {
  if (value!.trim().isEmpty) {
    return RegistrationTexts().emailError;
  } else {
    if (!validateEmail(value.trim())) {
      return RegistrationTexts().inValidEmail;
    } else {
      return null;
    }
  }
}

dynamic numberValidator(value) {
  if (value!.isEmpty) {
    return RegistrationTexts().mobileError;
  } else if (!RegistrationProvider().checkPhoneNumber(value)) {
    return RegistrationTexts().ivalidNumber;
  }
  return null;
}

dynamic passwordValidator(value) {
  if (value!.isEmpty) {
    return RegistrationTexts().passwordError;
  } else if (value.length < 8) {
    return RegistrationTexts().inCompletePassword;
  } else {
    return null;
  }
}

dynamic confirmPasswordValidator(value, TextEditingController password) {
  if (value!.isEmpty) {
    return RegistrationTexts().confirmPasswordError;
  } else if (password.text.trim() != value) {
    return RegistrationTexts().unequalPassword;
  } else {
    return null;
  }
}
