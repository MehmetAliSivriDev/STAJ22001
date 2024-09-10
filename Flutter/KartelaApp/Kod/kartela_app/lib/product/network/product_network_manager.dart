class ProductNetworkManager {
  static ProductNetworkManager? _instance;
  static ProductNetworkManager get instance {
    _instance ??= ProductNetworkManager._init();
    return _instance!;
  }

  ProductNetworkManager._init();

  final getKartelaData = Uri.parse('http://10.0.2.2/mssqlvericekme');
  final insertOrder =
      Uri.parse('http://10.0.2.2/mssqlvericekme/insert_order.php');
}
