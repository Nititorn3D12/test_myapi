class BMRmodel {
  String? title;
  Bmrdata? bmrdata;

  BMRmodel({this.title, this.bmrdata});

  BMRmodel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    bmrdata =
        json['bmrdata'] != null ? new Bmrdata.fromJson(json['bmrdata']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    if (this.bmrdata != null) {
      data['bmrdata'] = this.bmrdata!.toJson();
    }
    return data;
  }
}

class Bmrdata {
  String? weight;
  String? height;
  String? age;
  String? gender;
  double? bmr;
  String? unit;
  String? interpretation;

  Bmrdata(
      {this.weight,
      this.height,
      this.age,
      this.gender,
      this.bmr,
      this.unit,
      this.interpretation});

  Bmrdata.fromJson(Map<String, dynamic> json) {
    weight = json['weight'];
    height = json['height'];
    age = json['age'];
    gender = json['gender'];
    bmr = json['bmr'];
    unit = json['unit'];
    interpretation = json['interpretation'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['weight'] = this.weight;
    data['height'] = this.height;
    data['age'] = this.age;
    data['gender'] = this.gender;
    data['bmr'] = this.bmr;
    data['unit'] = this.unit;
    data['interpretation'] = this.interpretation;
    return data;
  }
}
