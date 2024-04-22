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
  String? description;
  String? costPerMonth;
  String? experience;
  String? token;
  Bookings? bookings;
  String? photo;

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
    this.description,
    this.costPerMonth,
    this.experience,
    this.token,
    this.bookings,
    this.photo,
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
    description = json['description'];
    costPerMonth = json['cost_per_month'];
    experience = json['experience'];
    token = json['token'];

    bookings =
        json['bookings'] != null ? Bookings.fromJson(json['bookings']) : null;
    photo = json['photo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['name'] = name;
    data['email'] = email;
    data['email_verified_at'] = emailVerifiedAt;
    data['gender'] = gender;
    data['dob'] = dob;
    data['user_role'] = userRole;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['description'] = description;
    data['cost_per_month'] = costPerMonth;
    data['experience'] = experience;
    data['token'] = token;

    if (bookings != null) {
      data['bookings'] = bookings!.toJson();
    }
    data['photo'] = photo;

    return data;
  }
}

class Bookings {
  int? currentPage;
  List<Data>? data;
  String? firstPageUrl;
  int? from;
  int? lastPage;
  String? lastPageUrl;
  String? nextPageUrl;
  String? path;
  int? perPage;
  String? prevPageUrl;
  int? to;
  int? total;

  Bookings(
      {this.currentPage,
      this.data,
      this.firstPageUrl,
      this.from,
      this.lastPage,
      this.lastPageUrl,
      this.nextPageUrl,
      this.path,
      this.perPage,
      this.prevPageUrl,
      this.to,
      this.total});

  Bookings.fromJson(Map<String, dynamic> json) {
    currentPage = json['current_page'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(Data.fromJson(v));
      });
    }
    firstPageUrl = json['first_page_url'];
    from = json['from'];
    lastPage = json['last_page'];
    lastPageUrl = json['last_page_url'];

    nextPageUrl = json['next_page_url'];
    path = json['path'];
    perPage = json['per_page'];
    prevPageUrl = json['prev_page_url'];
    to = json['to'];
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['current_page'] = currentPage;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['first_page_url'] = firstPageUrl;
    data['from'] = from;
    data['last_page'] = lastPage;
    data['last_page_url'] = lastPageUrl;

    data['next_page_url'] = nextPageUrl;
    data['path'] = path;
    data['per_page'] = perPage;
    data['prev_page_url'] = prevPageUrl;
    data['to'] = to;
    data['total'] = total;
    return data;
  }
}

class Data {
  int? id;
  int? trainerId;
  int? clientId;
  String? from;
  String? to;
  String? createdAt;
  String? updatedAt;

  Data(
      {this.id,
      this.trainerId,
      this.clientId,
      this.from,
      this.to,
      this.createdAt,
      this.updatedAt});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    trainerId = json['trainer_id'];
    clientId = json['client_id'];
    from = json['from'];
    to = json['to'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['trainer_id'] = trainerId;
    data['client_id'] = clientId;
    data['from'] = from;
    data['to'] = to;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}
