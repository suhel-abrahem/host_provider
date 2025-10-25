import 'package:flutter/material.dart';
import 'package:hosta_provider/core/resource/main_page/main_page.dart';

class BookingPagePage extends StatefulWidget {
  const BookingPagePage({super.key});

  @override
  State<BookingPagePage> createState() => _BookingPagePageState();
}

class _BookingPagePageState extends State<BookingPagePage> {
  @override
  Widget build(BuildContext context) {
    return MainPage(
      body: ListView(children: [Center(child: Text("Booking Page"))]),
    );
  }
}
