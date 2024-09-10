import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kartela_app/core/service/local_service/dbHelper.dart';
import 'package:kartela_app/product/util/custom_dialogs.dart';
import 'package:kartela_app/product/util/custom_snackbar.dart';
import '../../../core/cache/cache_manager.dart';
import '../../../core/model/order_model.dart';

class OrderCartViewModel extends ChangeNotifier {
  List<OrderModel>? orders;
  DbHelper dbHelper = DbHelper();

  void addOrder({required OrderModel order}) {
    List<OrderModel>? isAlreadyAdded;
    OrderModel? alReadyAddedModel;

    orders ??= [];

    if (orders != null && orders!.isNotEmpty) {
      isAlreadyAdded = orders
          ?.where((element) => element.product?.bar == order.product?.bar)
          .toList();

      if (isAlreadyAdded != null && isAlreadyAdded.isNotEmpty) {
        alReadyAddedModel = isAlreadyAdded.first;
        alReadyAddedModel.orderCount =
            (int.parse(alReadyAddedModel.orderCount!) +
                    int.parse(order.orderCount!))
                .toString();
      } else {
        orders!.add(order);
      }
    } else {
      orders!.add(order);
    }
  }

  void deleteOrder({required BuildContext context, required OrderModel order}) {
    if (order.product != null) {
      AlertDialog deleteDialog = AlertDialog(
        title: const Text("Silme"),
        content: Text(
            "${order.product!.bar} Barkod nolu ürünü sepetinizden çıkartmak istediğinize emin misniz?"),
        actions: [
          TextButton(
              onPressed: () async {
                CustomDialogs.showLoadingDialog(context: context);

                await Future.delayed(const Duration(milliseconds: 300));
                orders!.remove(order);
                notifyListeners();
                if (context.mounted) {
                  Navigator.pop(context);
                  Navigator.pop(context);
                  CustomSnackBar.showSuccess(
                      context: context, content: "Ürün sepetten kaldırıldı");
                }
              },
              child: const Text("Evet")),
          FilledButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Hayır")),
        ],
      );
      showDialog(context: context, builder: (_) => deleteDialog);
    }
  }

  TextEditingController numberOfOrderController =
      TextEditingController(text: "1");

  int count = 1;

  void increaseOrder() {
    if (numberOfOrderController.text == '') {
      count = 1;
    } else {
      count = int.parse(numberOfOrderController.text);
    }

    count++;
    numberOfOrderController.text = count.toString();
    notifyListeners();
  }

  void decreaseOrder() {
    if (numberOfOrderController.text == '') {
      count = 1;
    } else {
      count = int.parse(numberOfOrderController.text);
    }
    if (count > 1) count--;
    numberOfOrderController.text = count.toString();
    notifyListeners();
  }

  Future<void> updateCount(
      {required BuildContext context, required OrderModel order}) async {
    CustomDialogs.showLoadingDialog(context: context);

    await Future.delayed(const Duration(milliseconds: 500));

    if (numberOfOrderController.text == '') {
      numberOfOrderController.text = '1';
    }
    order.orderCount = numberOfOrderController.text;
    notifyListeners();

    if (context.mounted) {
      Navigator.pop(context);
      Navigator.pop(context);
    }
  }

  Future<void> orderToLocale({required BuildContext context}) async {
    CustomDialogs.showLoadingDialog(context: context);

    await dbHelper.createDb().then((value) => null);

    String? companyName = await CacheManager.instance.getCompanyName();
    String? email = await CacheManager.instance.getMail();
    String? phone = await CacheManager.instance.getPhoneNumber();

    if (orders != null &&
        companyName != null &&
        email != null &&
        phone != null) {
      for (var order in orders!) {
        dbHelper.orderAdd(
            orderModel: order,
            companyName: companyName,
            email: email,
            phone: phone);
      }
      orders!.clear();
    }
    notifyListeners();
    await Future.delayed(const Duration(milliseconds: 500));
    if (context.mounted) {
      Navigator.pop(context);
      CustomSnackBar.showSuccess(
          context: context, content: "Sipariş Başarıyla Verildi");
    }
  }
}
