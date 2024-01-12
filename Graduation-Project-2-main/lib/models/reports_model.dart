class ReportsModel{
  var Id;
  var Time;
  var Url;

  ReportsModel({required this.Id,required this.Time,required this.Url});

  factory ReportsModel.fromJson(Map<String, dynamic> json) {
    return ReportsModel(
      Id: json["Id"],
      Time: json["Time"],
      Url: json["Url"],
    );
  }
//
}