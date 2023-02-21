import 'package:email_validator/email_validator.dart';

bool validateEmail(String email) {
  bool valid = EmailValidator.validate(email);
  if (valid) {
    return true;
  } else {
    return false;
  }
}
