import 'package:flutter/foundation.dart';

class EmailValidateProvider extends ChangeNotifier {
  bool isError = false;

  bool isValidate() => isError;

  void changeValidate(bool validation) {
    isError = validation;
    notifyListeners();
  }

  void cancel(bool boolean) {
    isError = boolean;
  }
}