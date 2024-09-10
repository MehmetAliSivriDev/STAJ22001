import 'dart:convert';
import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:http/http.dart' as http;
import '../lang/locale_strings.dart';
import '../model/kartela_data_model.dart';
import '../model/order_model.dart';
import '../model/result_model.dart';
import 'local_service/dbHelper.dart';
import '../../product/network/product_network_manager.dart';
import '../../product/util/custom_exception.dart';

abstract class IKartelaDataService {
  DbHelper dbHelper = DbHelper();
  Future<void> synchronizeData();
  Future<List<KartelaDataModel>?> getKartelaData();
  Future<ResultModel> ordersToServer();
}

class KartelaDataService extends IKartelaDataService {
  List _dataFromApi = [];

  @override
  Future<List<KartelaDataModel>?> getKartelaData() async {
    final response =
        await http.get(ProductNetworkManager.instance.getKartelaData);

    if (response.statusCode == HttpStatus.ok) {
      _dataFromApi = json.decode(response.body);

      return _dataFromApi
          .map((data) => KartelaDataModel.fromJson(data))
          .toList();
    } else {
      return [];
    }
  }

  @override
  Future<void> synchronizeData() async {
    try {
      dbHelper.createDb().then((value) => null);
      List<KartelaDataModel>? serviceData = await getKartelaData();

      if (serviceData != null) {
        await dbHelper.deleteAllKartelaData();
        for (var data in serviceData) {
          dbHelper.kartelaDataAdd(kartelaDataModel: data);
        }
      }
    } catch (e) {
      throw CustomException(LocaleStrings.errorOccured.tr());
    }
  }

  @override
  Future<ResultModel> ordersToServer() async {
    dbHelper.createDb().then((value) => null);
    List<OrderModel>? serviceData = await dbHelper.getOrders();
    ResultModel? resultModel;

    if (serviceData != null && serviceData.isNotEmpty) {
      for (var data in serviceData) {
        if (data.product != null) {
          Map<String, String> body = {
            "CompanyName": data.companyName.toString(),
            "Email": data.email.toString(),
            "Phone": data.phone.toString(),
            "KartelaBar": data.product!.bar.toString(),
            "orderCount": data.orderCount.toString(),
            "ODate": data.date.toString(),
            "OHour": data.hour.toString()
          };

          final response = await http
              .post(ProductNetworkManager.instance.insertOrder, body: body);

          if (response.statusCode == HttpStatus.ok) {
            resultModel = ResultModel.fromJson(json.decode(response.body));

            if (resultModel.result == "0") {
              return resultModel;
            }
          }
        }
      }
    }

    return ResultModel(message: "Bir Hata Meydana Geldi", result: "1");
  }
}
