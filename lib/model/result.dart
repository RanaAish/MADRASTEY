class Result {
  String courseName;
  dynamic mED;
  dynamic mIN;
  dynamic mAX;

  Result({this.courseName, this.mED, this.mIN, this.mAX});

  Result.fromJson(Map<String, dynamic> json) {
    courseName = json['CourseName'];
    mED = json['MED'];
    mIN = json['MIN'];
    mAX = json['MAX'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['CourseName'] = this.courseName;
    data['MED'] = this.mED;
    data['MIN'] = this.mIN;
    data['MAX'] = this.mAX;
    return data;
  }
}