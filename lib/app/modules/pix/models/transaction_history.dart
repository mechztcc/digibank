class TransactionHistory {
  int? id;
  String? code;
  String? shipperAccountCode;
  String? receiverAccountCode;
  int? value;
  String? status;
  String? createdAt;
  String? updatedAt;

  TransactionHistory(
      {this.id,
      this.code,
      this.shipperAccountCode,
      this.receiverAccountCode,
      this.value,
      this.status,
      this.createdAt,
      this.updatedAt});

  TransactionHistory.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    code = json['code'];
    shipperAccountCode = json['shipperAccountCode'];
    receiverAccountCode = json['receiverAccountCode'];
    value = json['value'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['code'] = this.code;
    data['shipperAccountCode'] = this.shipperAccountCode;
    data['receiverAccountCode'] = this.receiverAccountCode;
    data['value'] = this.value;
    data['status'] = this.status;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
