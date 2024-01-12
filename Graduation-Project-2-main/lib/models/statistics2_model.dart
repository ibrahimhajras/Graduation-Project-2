class Statistic2Model {
  var Id, Semester, Crops, City, Year,Url;

  Statistic2Model(
      {required this.Id,
        required this.Semester,
        required this.Crops,
        required this.City,
        required this.Year,
      required this.Url});

  factory Statistic2Model.fromJson(Map<String, dynamic> json) {
    return Statistic2Model(
      Id: json["Id"],
      Semester: json["Semester"],
      Crops: json["Crops"],
      City: json["City"],
      Year: json["Year"], Url: json['Url'],
    );
  }
//
}
