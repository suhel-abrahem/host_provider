import 'package:flutter/material.dart';
import 'package:hosta_provider/core/resource/main_page/main_page.dart';

class ProfilePagePage extends StatefulWidget {
  const ProfilePagePage({super.key});

  @override
  State<ProfilePagePage> createState() => _ProfilePagePageState();
}

class _ProfilePagePageState extends State<ProfilePagePage> {
  @override
  Widget build(BuildContext context) {
    return MainPage(
      body: ListView(children: [Center(child: Text("Profile Page"))]),
    );
  }
}
