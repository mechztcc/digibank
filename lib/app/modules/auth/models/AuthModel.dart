class AuthModel {
  String? token;
  String? name;
  String? accountCode;
  int? balance;

  AuthModel({this.token, this.name, this.balance});

  AuthModel.fromJson(Map<String, dynamic> json) {
    token = json['token'];
    name = json['name'];
    balance = json['balance'];
    accountCode = json['accountCode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['token'] = this.token;
    data['name'] = this.name;
    data['balance'] = this.balance;
    data['accountCode'] = this.accountCode;
    return data;
  }
}
