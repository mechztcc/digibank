class UserModel {
  String? name;
  String? password;
  String? document;

  UserModel({String? name, String? password, String? document}) {
    if (name != null) {
      name = name;
    }

    if (password != null) {
      password = password;
    }
    if (document != null) {
      document = document;
    }
  }

  UserModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    document = json['document'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['document'] = document;
    data['password'] = password;
    return data;
  }
}
