import 'package:flutter/material.dart';
import 'package:instagram/DATA/asset_datas.dart';
import 'package:instagram/const.dart';

class SuggestionCard extends StatelessWidget {
  final String suggestionImage;
  final String suggestionName;
  const SuggestionCard(
      {Key? key, required this.suggestionImage, required this.suggestionName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      child: Stack(
        children: [
          Positioned(
              right: 10,
              top: 10,
              child: iconImageButton(
                  iconImage: crossIcon, iconHeight: 15, iconWidth: 15)),
          Column(
            children: [
              Container(
                width: 160,
                height: 160,
                margin: EdgeInsets.all(25),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage(suggestionImage), fit: BoxFit.cover),
                ),
              ),
              Text(
                suggestionName,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "New to Instagram",
                style: TextStyle(fontSize: 10, color: Colors.grey),
              ),
              followButton(context: context),
            ],
          ),
        ],
      ),
    );
  }
}
