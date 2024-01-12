class CommentsModel {
  var Id,Description,Id_User,User_Name;

  CommentsModel({required this.Id,required this.Description,required this.Id_User,required this.User_Name});

  factory CommentsModel.fromJson(Map<String, dynamic> json) {
    return CommentsModel(
      Id: json["Id"],
      Description: json["Description"],
      Id_User: json["Id_User"], User_Name: json['User_Name'],
    );
  }
//
}