import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kartal/kartal.dart';
import 'package:kartela_app/product/constant/product_pass.dart';
import '../../../core/service/kartela_data_service.dart';
import '../../../product/constant/product_border_radius.dart';
import '../../../product/constant/product_colors.dart';
import '../../../product/util/custom_dialogs.dart';
import '../../../product/util/custom_exception.dart';
import '../../../product/util/custom_snackbar.dart';

import '../../../core/lang/locale_strings.dart';

class SettingsViewModel extends ChangeNotifier {
  final IKartelaDataService _service = KartelaDataService();

  bool isLoading = false;
  TextEditingController passController = TextEditingController();

  void changeLoading() {
    isLoading = !isLoading;
    notifyListeners();
  }

  Future<void> synchronizeData({required BuildContext context}) async {
    try {
      changeLoading();
      if (context.mounted) {
        CustomDialogs.showLoadingDialog(context: context);
      }
      await _service.synchronizeData();
      changeLoading();
      if (context.mounted) {
        Navigator.pop(context);
      }

      if (context.mounted) {
        CustomSnackBar.showSuccess(
            context: context,
            content: LocaleStrings.synchronizeDataSucess.tr());
      }
    } on CustomException catch (e) {
      if (context.mounted) {
        CustomSnackBar.showError(context: context, content: e.message);
      }
    }
  }

  void showPassDialog({required BuildContext context}) {
    AlertDialog passDialog = AlertDialog(
      title: Text("Şifre"),
      content: TextField(
        controller: passController,
        decoration: InputDecoration(
          hintText: "Şifre",
          hintStyle: context.general.textTheme.bodyLarge!
              .copyWith(color: ProductColors.instance.grey600),
          border: OutlineInputBorder(
            borderRadius: ProductBorderRadius.circularHigh30(),
            borderSide: BorderSide(
              color: ProductColors.instance.grey200!,
            ),
          ),
        ),
      ),
      actions: [
        SizedBox(
          width: context.sized.dynamicWidth(0.6),
          child: FilledButton(
              onPressed: () async {
                CustomDialogs.showLoadingDialog(context: context);
                await Future.delayed(const Duration(milliseconds: 500));

                if (context.mounted) {
                  Navigator.pop(context);
                  Navigator.pop(context);
                  if (passController.text == ProductPass.ORDERTOSERVER) {
                    ordersToServer(context: context);
                  } else {
                    CustomSnackBar.showError(
                        context: context, content: "Hatalı Şifre");
                  }
                }
              },
              child: Text(
                "Devam Et",
                style: context.general.textTheme.titleMedium!
                    .copyWith(color: ProductColors.instance.white),
              )),
        )
      ],
    );

    showDialog(context: context, builder: (_) => passDialog);
  }

  Future<void> ordersToServer({required BuildContext context}) async {
    changeLoading();
    if (context.mounted) {
      CustomDialogs.showLoadingDialog(context: context);
    }
    final response = await _service.ordersToServer();
    changeLoading();
    if (context.mounted) {
      Navigator.pop(context);
    }

    if (response.result == "1") {
      if (context.mounted) {
        CustomSnackBar.showSuccess(
            context: context, content: "Veriler Başarıyla Servera Aktarıldı");
      }
    } else {
      if (context.mounted) {
        CustomSnackBar.showError(
            context: context, content: "Bir Hata Meydana Geldi");
      }
    }
  }
}
