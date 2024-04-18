
class User {
  int? id;
  String? name;
  String? email;
  String? emailVerifiedAt;
  String? gender;
  String? dob;
  int? userRole;
  String? createdAt;
  String? updatedAt;
  String? token;

  User({
    this.id,
    this.name,
    this.email,
    this.emailVerifiedAt,
    this.gender,
    this.dob,
    this.userRole,
    this.createdAt,
    this.updatedAt,
    this.token,
  });

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    emailVerifiedAt = json['email_verified_at'];
    gender = json['gender'];
    dob = json['dob'];
    userRole = json['user_role'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['email'] = email;
    data['email_verified_at'] = emailVerifiedAt;
    data['gender'] = gender;
    data['dob'] = dob;
    data['user_role'] = userRole;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['token'] = token;

    return data;
  }
}
