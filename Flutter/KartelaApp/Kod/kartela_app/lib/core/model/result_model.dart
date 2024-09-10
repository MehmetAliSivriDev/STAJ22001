class ResultModel {
  String? message;
  String? result;

  ResultModel({this.message, this.result});

  ResultModel.fromJson(Map<String, dynamic> json) {
    message = json['Message'];
    result = json['Result'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Message'] = this.message;
    data['Result'] = this.result;
    return data;
  }
}
