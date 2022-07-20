import 'package:flutter/material.dart';
import 'package:instagram/DATA/status_data.dart';
import 'package:instagram/WIDGET/status_card.dart';

class StatusSection extends StatefulWidget {
  const StatusSection({Key? key}) : super(key: key);

  @override
  State<StatusSection> createState() => _StatusSectionState();
}

class _StatusSectionState extends State<StatusSection> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: statusData.length,
        itemBuilder: (context, index) {
          return StatusCard(
            ownAccount: statusData[index]["ownAccount"],
            avatar: statusData[index]["avatar"],
            label: statusData[index]["label"],
          );
        },
      ),
    );
  }
}
