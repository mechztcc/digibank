import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class TransactionHistory {
  int? id;
  String? code;
  String? shipperAccountCode;
  String? receiverAccountCode;
  int? value;
  String? status;
  String? createdAt;
  String? updatedAt;

  TransactionHistory({
    this.id,
    this.code,
    this.shipperAccountCode,
    this.receiverAccountCode,
    this.value,
    this.status,
    this.createdAt,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'code': code,
      'shipperAccountCode': shipperAccountCode,
      'receiverAccountCode': receiverAccountCode,
      'value': value,
      'status': status,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
    };
  }

  factory TransactionHistory.fromMap(Map<String, dynamic> map) {
    return TransactionHistory(
      id: map['id'] != null ? map['id'] as int : null,
      code: map['code'] != null ? map['code'] as String : null,
      shipperAccountCode: map['shipperAccountCode'] != null
          ? map['shipperAccountCode'] as String
          : null,
      receiverAccountCode: map['receiverAccountCode'] != null
          ? map['receiverAccountCode'] as String
          : null,
      value: map['value'] != null ? map['value'] as int : null,
      status: map['status'] != null ? map['status'] as String : null,
      createdAt: map['createdAt'] != null ? map['createdAt'] as String : null,
      updatedAt: map['updatedAt'] != null ? map['updatedAt'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory TransactionHistory.fromJson(String source) =>
      TransactionHistory.fromMap(json.decode(source) as Map<String, dynamic>);
}
