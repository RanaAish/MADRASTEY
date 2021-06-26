class Course {
  int iD;
  String name;
  int price;
  int hours;
  String description;

  Course({this.iD, this.name, this.price, this.hours, this.description});

  Course.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    name = json['Name'];
    price = json['Price'];
    hours = json['Hours'];
    description = json['Description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ID'] = this.iD;
    data['Name'] = this.name;
    data['Price'] = this.price;
    data['Hours'] = this.hours;
    data['Description'] = this.description;
    return data;
  }
}