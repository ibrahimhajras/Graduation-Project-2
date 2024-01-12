import 'package:flutter/cupertino.dart';
import 'package:gradproject2/main.dart';
import 'package:gradproject2/models/comments_model.dart';
import '../../Utils/Static/crud.dart';
import '../../Utils/Static/links.dart';
class CommentsProvider extends ChangeNotifier{
  List<CommentsModel> comment=[];
  final Crud _crud = Crud();
  fetchMessage(var Id) async {
    try {
      comment.clear();
      var response = await _crud.postRequest(linkComment,
          {'Id_Message':Id}
      );
      if (response is Map) {
        var data = response['data'];
        if (data != null && response['status'] == "s") {
          for (var i in response['data']) {
            print(i);
            comment.add(CommentsModel.fromJson(i));
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

  addComments(String idMessage,TextEditingController desc) async {
    try {
      var idUser = sharedPreferences.getString('Id').toString();
      print(idUser);
      await _crud.postRequest(linkAddComment,
          {
            'Id_Message':idMessage,
            'Description':desc.text,
            'Id_User':idUser
          }
      );
    } catch (e) {
      print("Error occurred: $e");
    }
  }
}