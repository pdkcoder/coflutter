class User {
  Info info;
  String token;

  User({required this.info, required this.token});

  factory User.fromJson(Map<String, dynamic> json) {
    Info info = Info.fromJson(json['info']);
    String token = json['token'];

    return User(info: info, token: token);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['info'] = this.info.toJson();
    data['token'] = this.token;
    return data;
  }

  @override
  String toString() {
    return '"user" : {${info.toString()}, "token": $token}';
  }
}

class Info {
  String id;
  String name;
  String avatar;

  Info({required this.id, required this.name, required this.avatar});

  factory Info.fromJson(Map<String, dynamic> json) {
    String id = json['id'];
    String name = json['name'];
    String avatar = json['avatar'];

    return Info(id: id, name: name, avatar: avatar);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['avatar'] = this.avatar;
    return data;
  }

  @override
  String toString() {
    return '"info" : { "id": $id, "name": $name, "avatar": $avatar}';
  }
}