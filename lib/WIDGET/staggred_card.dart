import 'package:flutter/material.dart';

class StaggredCard extends StatelessWidget {
  final String backgroundImage;

  StaggredCard({required this.backgroundImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(backgroundImage), fit: BoxFit.cover),
      ),
    );
  }
}
