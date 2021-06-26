class User {
  int iD;
  String name;
  String role;
  String phone;
  String email;
  String gender;
  String code;
  String password;

  User(
      {this.iD,
        this.name,
        this.role,
        this.phone,
        this.email,
        this.gender,
        this.code,
        this.password});

  User.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    name = json['Name'];
    role = json['Role'];
    phone = json['Phone'];
    email = json['Email'];
    gender = json['Gender'];
    code = json['Code'];
    password = json['Password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ID'] = this.iD;
    data['Name'] = this.name;
    data['Role'] = this.role;
    data['Phone'] = this.phone;
    data['Email'] = this.email;
    data['Gender'] = this.gender;
    data['Code'] = this.code;
    data['Password'] = this.password;
    return data;
  }
}