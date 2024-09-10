import 'package:barcode_scan2/barcode_scan2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import '../../../core/service/local_service/dbHelper.dart';
import '../../../product/util/custom_dialogs.dart';
import '../../../product/util/custom_snackbar.dart';
import '../../../core/cache/cache_manager.dart';
import '../../../core/model/kartela_data_model.dart';
import '../../../core/routes/routes.dart';

class HomeViewModel extends ChangeNotifier {
  KartelaDataModel? scannedProduct;
  String scanResult = 'UNKNOWN';

  final DbHelper _dbHelper = DbHelper();

  String? companyName;
  String? mail;
  String? phoneNumber;

  Future<void> getCompanyData() async {
    companyName = await CacheManager.instance.getCompanyName();
    mail = await CacheManager.instance.getMail();
    phoneNumber = await CacheManager.instance.getPhoneNumber();

    notifyListeners();
  }

  Future<void> logout({required BuildContext context}) async {
    CustomDialogs.showLoadingDialog(context: context);

    await CacheManager.instance.removeCompanyName();
    await CacheManager.instance.removeMail();
    await CacheManager.instance.removePhoneNumber();

    await Future.delayed(const Duration(milliseconds: 500));

    if (context.mounted) {
      Navigator.pushNamedAndRemoveUntil(
          context, Routes.LOGIN, (route) => false);
    }
  }

  Future<void> scan({required BuildContext context}) async {
    try {
      var options = const ScanOptions();

      var result = await BarcodeScanner.scan(options: options);
      scanResult = result.rawContent;
    } on PlatformException catch (e) {
      if (context.mounted) {
        CustomSnackBar.showError(
            context: context,
            content: e.message ?? "Failed to Get Platform Version");
      }
    }

    if (!context.mounted) return;
    getKartelaDataWBarcode(context: context);
  }

  void getKartelaDataWBarcode({required BuildContext context}) async {
    List<KartelaDataModel>? data;
    CustomDialogs.showLoadingDialog(context: context);
    _dbHelper.createDb().then((value) => null);
    data = await _dbHelper.getKartelaDataWBarcode(barcode: scanResult);
    await Future.delayed(const Duration(milliseconds: 500));

    if (data == null || data.isEmpty) {
      scanResult = 'UNKNOWN';
      if (context.mounted) {
        CustomSnackBar.showError(
            context: context, content: "Aradığınız Kartela Bulunamadı");
      }
    } else {
      scannedProduct = data.first;
    }

    notifyListeners();

    if (context.mounted) {
      Navigator.pop(context);
    }
  }
}
