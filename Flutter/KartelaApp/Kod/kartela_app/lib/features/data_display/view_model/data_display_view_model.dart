import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../core/model/kartela_data_model.dart';
import '../../../core/service/local_service/dbHelper.dart';

class DataDisplayViewModel extends ChangeNotifier {
  List<KartelaDataModel>? data;
  List<String>? kartelaDataTypes;
  final DbHelper _dbHelper = DbHelper();

  TextEditingController searchController = TextEditingController();

  String? selectedType;
  bool isLoading = false;
  bool isSearched = false;

  void changeLoading() {
    isLoading = !isLoading;
    notifyListeners();
  }

  Future<void> getDataFromLocale() async {
    changeLoading();
    _dbHelper.createDb().then((value) => null);
    data = await _dbHelper.getKartelaData();
    //Just Types For Filtering
    kartelaDataTypes = await _dbHelper.getKartelaDataTypes();
    await Future.delayed(const Duration(milliseconds: 1000));
    changeLoading();
  }

  void searchKartelaDataWBarcode() async {
    changeLoading();
    _dbHelper.createDb().then((value) => null);
    data =
        await _dbHelper.getKartelaDataWBarcode(barcode: searchController.text);
    await Future.delayed(const Duration(milliseconds: 1000));
    changeLoading();
  }

  void searchKartelaDataWType() async {
    changeLoading();
    _dbHelper.createDb().then((value) => null);
    data = await _dbHelper.getKartelaDataWTypes(type: selectedType ?? "");
    await Future.delayed(const Duration(milliseconds: 1000));
    changeLoading();
  }

  void setSelectedType({required String value}) {
    selectedType = value;
    notifyListeners();
  }
}
