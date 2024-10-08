import 'package:kartela_app/core/model/kartela_data_model.dart';

class OrderModel {
  KartelaDataModel? product;
  String? orderCount;
  String? date;
  String? hour;
  String? companyName;
  String? email;
  String? phone;

  OrderModel(
      {this.product,
      this.orderCount,
      this.date,
      this.hour,
      this.companyName,
      this.email,
      this.phone});

  OrderModel.fromJson(Map<String, dynamic> json) {
    var model = KartelaDataModel(
      id: json['Id'].toString(),
      bar: json['Bar'],
      varyant: json['Varyant'],
      desen: json['Desen'],
      com: json['Com'],
      desenKod: json['DesenKod'],
      kg: json['Kg'],
      en: json['En'],
      renk: json['Renk'],
      tip: json['Tip'],
      kEn: json['KEn'],
      tarih: json['Tarih'],
      active: json['Active'],
    );
    product = model;
    orderCount = json['orderCount'];
    date = json['ODate'];
    hour = json['OHour'];
    companyName = json['CompanyName'];
    email = json['Email'];
    phone = json['Phone'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['orderCount'] = this.orderCount;
    data['ODate'] = this.date;
    data['OHour'] = this.hour;
    data['CompanyName'] = this.companyName;
    data['Email'] = this.email;
    data['Phone'] = this.phone;
    return data;
  }
}
