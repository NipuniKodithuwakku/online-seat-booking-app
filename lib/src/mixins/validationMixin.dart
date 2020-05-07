class ValidationMixin {
  String validateEmail(String value) {
    if (!value.contains('@')) {
      return 'Please Enter a valid Email';
    }
    return null;
  }

  String validatePassword(String value) {
    if (value.length < 4) {
      return 'password must have at least 4 characters';
    }
    return null;
  }
}
