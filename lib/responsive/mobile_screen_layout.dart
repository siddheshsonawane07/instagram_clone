import 'package:flutter/material.dart';
import 'package:instagram_clone/utils/colors.dart';
import 'package:provider/provider.dart';
import '../models/user.dart' as model;
import '../providers/user_provider.dart';

class MobileScreenLayout extends StatefulWidget {
  const MobileScreenLayout({Key? key}) : super(key: key);

  @override
  State<MobileScreenLayout> createState() => _MobileScreenLayoutState();
}

class _MobileScreenLayoutState extends State<MobileScreenLayout> {
  @override
  Widget build(BuildContext context) {
    model.User user = Provider.of<UserProvider>(context).getUser;
    return Scaffold(
      body: Center(
          child: Text(
        user.email,
        style: const TextStyle(color: primaryColor),
      )),
    );
  }
}
