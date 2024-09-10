class LoginValidator {
  static LoginValidator? _instance;
  static LoginValidator get instance {
    _instance ??= LoginValidator._init();
    return _instance!;
  }

  LoginValidator._init();

  String? companyNameValidator(String? value) {
    if (value == null || value.isEmpty || value == "") {
      return "Lütfen Geçerli Bir Ad Giriniz";
    }
    return null;
  }

  String? mailValidator(String? value) {
    if (value == null || value.isEmpty || value == "" || !value.contains("@")) {
      return "Lütfen Geçerli Bir Mail Giriniz";
    }
    return null;
  }
}
