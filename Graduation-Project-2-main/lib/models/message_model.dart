class MessageModel {
  var Id , Description, User_Name,Id_User;

  MessageModel({required this.Id,required this.Description,required this.Id_User,required this.User_Name});

  factory MessageModel.fromJson(Map<String, dynamic> json) {
    return MessageModel(
      Id: json["Id"],
      Description: json["Description"],
      Id_User: json["Id_User"], User_Name: json['User_Name'],
    );
  }
//
}