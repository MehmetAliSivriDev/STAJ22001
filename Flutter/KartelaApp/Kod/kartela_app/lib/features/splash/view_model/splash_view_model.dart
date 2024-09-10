import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../../core/cache/cache_manager.dart';

import '../../../core/routes/routes.dart';

class SplashViewModel extends ChangeNotifier {
  Future<void> navigateToHome({required BuildContext context}) async {
    var companyName = await CacheManager.instance.getCompanyName();
    var mail = await CacheManager.instance.getMail();
    var phoneNumber = await CacheManager.instance.getPhoneNumber();

    await Future.delayed(const Duration(milliseconds: 2500));

    if (companyName == null || mail == null || phoneNumber == null) {
      if (context.mounted) {
        Navigator.pushNamedAndRemoveUntil(
            context, Routes.LOGIN, (route) => false);
      }
    } else {
      if (context.mounted) {
        Navigator.pushNamedAndRemoveUntil(
            context, Routes.HOME, (route) => false);
      }
    }
  }
}
