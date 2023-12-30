class User {
  int? id;
  bool? role;
  String? fullname;
  String? email;
  String? phone;
  String? gender;
  String? age;
  String? createdAt;
  String? token;

  User(
      {this.id,
      this.role,
      this.fullname,
      this.email,
      this.phone,
      this.gender,
      this.age,
      this.createdAt,
      this.token});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
        id: json['id'],
        role: json['role'],
        fullname: json['fullname'],
        email: json['email'],
        phone: json['phone'],
        gender: json['gender'],
        age: json['age'],
        createdAt: json['created_at'],
        token: json['token']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['role'] = this.role;
    data['fullname'] = this.fullname;
    data['email'] = this.email;
    data['phone'] = this.phone;
    data['gender'] = this.gender;
    data['age'] = this.age;

    data['created_at'] = this.createdAt;
    data[''] = this.token; 
    return data;
  }
}
