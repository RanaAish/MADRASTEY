class Trip {
  int iD;
  String name;
  String duration;
  int count;
  int price;
  bool iSActive;

  Trip(
      {this.iD,
        this.name,
        this.duration,
        this.count,
        this.price,
        this.iSActive});

  Trip.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    name = json['Name'];
    duration = json['Duration'];
    count = json['Count'];
    price = json['Price'];
    iSActive = json['ISActive'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ID'] = this.iD;
    data['Name'] = this.name;
    data['Duration'] = this.duration;
    data['Count'] = this.count;
    data['Price'] = this.price;
    data['ISActive'] = this.iSActive;
    return data;
  }
}