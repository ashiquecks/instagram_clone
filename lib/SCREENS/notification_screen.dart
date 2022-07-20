import 'package:flutter/material.dart';
import 'package:instagram/DATA/asset_datas.dart';
import 'package:instagram/const.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  final bool typeFollow = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              "Activity",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: Image.asset(instaTick),
            title: const Text(
              "You're all caught up",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: const Text("See new activity for minyetes"),
          ),
          const Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              "This Week",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          notificationTab(
              typeFollow: false,
              name: "Shilpa Shetty",
              message: "Liked your Comment great initiative...",
              avatar: shilpa,
              image: dhaushPost),
          notificationTab(
              typeFollow: false,
              name: "Aliya batt",
              message: "Liked your your Post",
              avatar: aliya,
              image: saiPost),
          notificationTab(
              typeFollow: false,
              name: "Saif Ali Khan",
              message: "Liked your your Post",
              avatar: saif,
              image: saiPost),
          notificationTab(
              typeFollow: true,
              name: "Santo Martin",
              message: "started following You",
              avatar: santo,
              image: ""),
          notificationTab(
              typeFollow: true,
              name: "Ajeesh ",
              message: "started following You",
              avatar: ajeesh,
              image: ""),
          notificationTab(
              typeFollow: true,
              name: "tinu",
              message: "started following You",
              avatar: tinu,
              image: ""),
          notificationTab(
              typeFollow: false,
              name: "Bavana",
              message: "Liked your Comment great initiative...",
              avatar: bavana,
              image: dhaushPost),
          notificationTab(
              typeFollow: false,
              name: "ram charan",
              message: "Liked your your Post",
              avatar: ramCharan,
              image: saiPost),
        ],
      ),
    );
  }
}
