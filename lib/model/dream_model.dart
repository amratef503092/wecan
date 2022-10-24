class DreamModel {
  bool? status;
  int? code;
  String? msg;
  Data? data;

  DreamModel({this.status, this.code, this.msg, this.data});

  DreamModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    code = json['code'];
    msg = json['msg'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['code'] = this.code;
    data['msg'] = this.msg;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
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
  String? age;
  String? sex;
  String? socialStatus;
  String? healthStatus;
  String? physicalCondition;
  String? kids;
  String? time;
  String? brothers;
  int? opened;
  AdminReplay? adminReplay;
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
        this.age,
        this.sex,
        this.socialStatus,
        this.healthStatus,
        this.physicalCondition,
        this.kids,
        this.time,
        this.brothers,
        this.opened,
        this.adminReplay,
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
    age = json['age'];
    sex = json['sex'];
    socialStatus = json['social_status'];
    healthStatus = json['health_status'];
    physicalCondition = json['physical_condition'];
    kids = json['kids'];
    time = json['time'];
    brothers = json['brothers'];
    opened = json['opened'];
    adminReplay = json['admin_replay'] != null
        ? new AdminReplay.fromJson(json['admin_replay'])
        : null;
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
    data['age'] = this.age;
    data['sex'] = this.sex;
    data['social_status'] = this.socialStatus;
    data['health_status'] = this.healthStatus;
    data['physical_condition'] = this.physicalCondition;
    data['kids'] = this.kids;
    data['time'] = this.time;
    data['brothers'] = this.brothers;
    data['opened'] = this.opened;
    if (this.adminReplay != null) {
      data['admin_replay'] = this.adminReplay!.toJson();
    }
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}

class AdminReplay {
  int? id;
  String? content;
  String? userId;
  String? dreamId;
  String? side;
  String? createdAt;
  String? updatedAt;

  AdminReplay(
      {this.id,
        this.content,
        this.userId,
        this.dreamId,
        this.side,
        this.createdAt,
        this.updatedAt});

  AdminReplay.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    content = json['content'];
    userId = json['user_id'];
    dreamId = json['dream_id'];
    side = json['side'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['content'] = this.content;
    data['user_id'] = this.userId;
    data['dream_id'] = this.dreamId;
    data['side'] = this.side;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
