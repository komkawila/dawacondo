import 'dart:convert';

List<Userlogin> userloginFromJson(String str) =>
    List<Userlogin>.from(json.decode(str).map((x) => Userlogin.fromJson(x)));

String userloginToJson(List<Userlogin> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Userlogin {
  Userlogin({
    this.id,
    this.username,
    this.password,
    this.status,
  });

  int id;
  String username;
  String password;
  int status;

  factory Userlogin.fromJson(Map<String, dynamic> json) => Userlogin(
        id: json["id"] == null ? null : json["id"],
        username: json["username"] == null ? null : json["username"],
        password: json["password"] == null ? null : json["password"],
        status: json["status"] == null ? null : json["status"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "username": username == null ? null : username,
        "password": password == null ? null : password,
        "status": status == null ? null : status,
      };
}
