import 'package:flutter/cupertino.dart';
import 'package:gradproject2/models/message_model.dart';
import '../../Utils/Static/crud.dart';
import '../../Utils/Static/links.dart';
import '../../main.dart';
class MessageProvider extends ChangeNotifier{
  List<MessageModel> message=[];
  final Crud _crud = Crud();
  fetchMessage() async {
    try {
      message.clear();
      var response = await _crud.getRequest(linkMessage);
      if (response is Map) {
        var data = response['data'];
        if (data != null && response['status'] == "s") {
          for (var i in response['data']) {
            message.add(MessageModel.fromJson(i));
          }
          notifyListeners();
        }

      } else {
        print("Unexpected response type: ${response.runtimeType}");
      }
    } catch (e) {
      print("Error occurred: $e");
    }
  }
  addMessage(TextEditingController desc) async {
    try {
      var idUser = sharedPreferences.getString('Id').toString();
      await _crud.postRequest(linkAddMessage,
          {
            'Description':desc.text,
            'Id_User':idUser
          }
      );
    } catch (e) {
      print("Error occurred: $e");
    }
  }
}