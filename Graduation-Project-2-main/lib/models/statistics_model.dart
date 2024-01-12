class StatisticModel {
  var Id, Production, Space, Semester, Crops, City, Year;

  StatisticModel(
      {required this.Id,
      required this.Production,
      required this.Space,
      required this.Semester,
      required this.Crops,
      required this.City,
      required this.Year});

  factory StatisticModel.fromJson(Map<String, dynamic> json) {
    return StatisticModel(
      Id: json["Id"],
      Production: json["Production"],
      Space: json["Space"],
      Semester: json["Semester"],
      Crops: json["Crops"],
      City: json["City"],
      Year: json["Year"],
    );
  }
//
}
