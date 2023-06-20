class AuthModel {
  String? token;
  String? name;
  int? balance;
  String? accountCode;
  int? userId;

  AuthModel({
    this.token,
    this.name,
    this.balance,
    this.accountCode,
    this.userId,
  });

  AuthModel.fromJson(Map<String, dynamic> json) {
    token = json['token'];
    name = json['name'];
    balance = json['balance'];
    accountCode = json['accountCode'];
    userId = json['userId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['token'] = this.token;
    data['name'] = this.name;
    data['balance'] = this.balance;
    data['accountCode'] = this.accountCode;
    data['userId'] = this.userId;
    return data;
  }
}
