import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gradproject2/Utils/Widget/NavBar.dart';
import 'package:gradproject2/View/Screen/ForumScreen/components/AddNewPost.dart';
import 'package:gradproject2/View/Screen/ForumScreen/components/comments.dart';
import 'package:provider/provider.dart';
import '../../../Utils/Static/SizeConfig.dart';
import '../../../Utils/Widget/LogoText.dart';
import '../../../Utils/Widget/drawer.dart';
import '../../../controller/provider/message_provider.dart';

class ForumScreen extends StatefulWidget {
  const ForumScreen({super.key});

  @override
  State<ForumScreen> createState() => _ForumScreenState();
}

class _ForumScreenState extends State<ForumScreen> {
  @override
  void initState() {
    Provider.of<MessageProvider>(context, listen: false).fetchMessage();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const LogoText(),
      ),
      bottomNavigationBar: const NavBar(id: 'Messages'),
      drawer: const CustomDrawer(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(18),),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: getProportionateScreenHeight(15),),
            InkWell(
                onTap: (){
                  showModalBottomSheet(context: context, builder: (context) => const AddNewPost(),);
                  // Get.toNamed(AppRoute.addnewpost);
                },
                child: const Text('+ Add New Post',style: TextStyle(color: Colors.blue),)),
            SizedBox(height: getProportionateScreenHeight(10),),
            Expanded(
              child: Consumer<MessageProvider>(
                builder: (BuildContext context, MessageProvider value, Widget? child) => ListView.builder(
                  itemCount: value.message.length,
                  itemBuilder: (context, index) => Container(
                    width: getProportionateScreenWidth(375),
                    padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(15),
                        vertical: getProportionateScreenHeight(15)),
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.symmetric(
                        vertical: getProportionateScreenHeight(10)),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: const [BoxShadow(color: Colors.black54, blurRadius: 5)],
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.transparent,
                              child: Image.asset('assets/images/avatar.png'),
                            ),
                            SizedBox(
                              width: getProportionateScreenWidth(10),
                            ),
                            Text(value.message[index].User_Name),
                          ],
                        ),
                        SizedBox(
                          height: getProportionateScreenHeight(10),
                        ),
                        Text(value.message[index].Description,
                          maxLines: 5,
                        ),
                        SizedBox(
                          height: getProportionateScreenHeight(10),
                        ),
                        InkWell(
                            onTap: () {
                              Get.to(Comments(message: value.message[index],));
                            },
                            child: const Text(
                              'Comments',
                              style: TextStyle(
                                  color: Colors.grey,
                                  decoration: TextDecoration.underline,
                                  decorationColor: Colors.grey),
                            )),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
