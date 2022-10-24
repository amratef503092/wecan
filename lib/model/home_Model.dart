class HomeMdoel {
  bool? status;
  int? code;
  String? msg;
  List<Data>? data;

  HomeMdoel({this.status, this.code, this.msg, this.data});

  HomeMdoel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    code = json['code'];
    msg = json['msg'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['code'] = this.code;
    data['msg'] = this.msg;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int? id;
  String? name;
  String? content;
  String? views;
  String? category;
  String? status;
  int? userId;
  String? userName;
  int? opened;
  String? createdAt;
  String? updatedAt;

  Data(
      {this.id,
        this.name,
        this.content,
        this.views,
        this.category,
        this.status,
        this.userId,
        this.userName,
        this.opened,
        this.createdAt,
        this.updatedAt});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    content = json['content'];
    views = json['views'];
    category = json['category'];
    status = json['status'];
    userId = json['user_id'];
    userName = json['user_name'];
    opened = json['opened'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['content'] = this.content;
    data['views'] = this.views;
    data['category'] = this.category;
    data['status'] = this.status;
    data['user_id'] = this.userId;
    data['user_name'] = this.userName;
    data['opened'] = this.opened;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
