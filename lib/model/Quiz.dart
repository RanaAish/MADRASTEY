class Quiz {
  int iD;
  int studentID;
  int courseID;
  String name;
  int grade;
  String startTime;
  String endTime;

  Quiz(
      {this.iD,
        this.studentID,
        this.courseID,
        this.name,
        this.grade,
        this.startTime,
        this.endTime});

  Quiz.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    studentID = json['Student_ID'];
    courseID = json['Course_ID'];
    name = json['Name'];
    grade = json['Grade'];
    startTime = json['Start_Time'];
    endTime = json['End_Time'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ID'] = this.iD;
    data['Student_ID'] = this.studentID;
    data['Course_ID'] = this.courseID;
    data['Name'] = this.name;
    data['Grade'] = this.grade;
    data['Start_Time'] = this.startTime;
    data['End_Time'] = this.endTime;
    return data;
  }
}