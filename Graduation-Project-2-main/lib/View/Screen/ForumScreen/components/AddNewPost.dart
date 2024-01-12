import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gradproject2/Utils/Static/SizeConfig.dart';
import 'package:gradproject2/Utils/Widget/CustomButton.dart';
import 'package:gradproject2/controller/provider/message_provider.dart';
import 'package:gradproject2/main.dart';
import 'package:provider/provider.dart';

class AddNewPost extends StatefulWidget {
  const AddNewPost({super.key});

  @override
  State<AddNewPost> createState() => _AddNewPostState();
}

class _AddNewPostState extends State<AddNewPost> {
  TextEditingController desc=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 20,left: 4),
                  height: getProportionateScreenHeight(50),
                  width: getProportionateScreenWidth(50),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(50.0)),
                ),
                Text(sharedPreferences.getString('User_Name').toString(),style: const TextStyle(fontSize: 15 ,fontWeight: FontWeight.bold)),

              ],
            ),
            SizedBox(height: getProportionateScreenHeight(20),),
            TextField(
              controller: desc,
              decoration: const InputDecoration(
                border: UnderlineInputBorder(borderSide: BorderSide.none),
                hintText: 'Enter your post here',
              ),
              maxLines: 8,
            ),
            const Spacer(),
            CustomButton(text: 'Add Post', onTap: (){
              Provider.of<MessageProvider>(context,listen: false).addMessage(desc);
              Provider.of<MessageProvider>(context,listen: false).fetchMessage();
              Get.back();
            })
          ],
        ),
    );
  }
}
