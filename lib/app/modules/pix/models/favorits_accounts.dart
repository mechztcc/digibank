// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:digibank/app/modules/auth/models/UserModel.dart';

class FavoritsAccounts {
  int id;

  String code;

  UserModel user;
  
  FavoritsAccounts({
    required this.id,
    required this.code,
    required this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'code': code,
      'user': user.toMap(),
    };
  }

  factory FavoritsAccounts.fromMap(Map<String, dynamic> map) {
    return FavoritsAccounts(
      id: map['id'] as int,
      code: map['code'] as String,
      user: UserModel.fromMap(map['user'] as Map<String,dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory FavoritsAccounts.fromJson(String source) => FavoritsAccounts.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'FavoritsAccounts(id: $id, code: $code, user: $user)';
}
