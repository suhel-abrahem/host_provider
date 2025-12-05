import 'package:flutter/material.dart';
import 'package:hosta_provider/core/resource/main_page/main_page.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MainPage(
      body: ListView(children: const [Text("Notification Page")]),
    );
  }
}
