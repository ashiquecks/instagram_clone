import 'package:flutter/material.dart';
import 'package:instagram/DATA/suggestion_data.dart';
import 'package:instagram/WIDGET/suggestion_card.dart';
import 'package:instagram/const.dart';

class SuggestionSection extends StatefulWidget {
  const SuggestionSection({Key? key}) : super(key: key);

  @override
  State<SuggestionSection> createState() => _SuggestionSectionState();
}

class _SuggestionSectionState extends State<SuggestionSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      child: Column(
        children: [
          labelRow(),
          Container(
            height: 310,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: suggestionData.length,
              itemBuilder: (context, index) {
                return SuggestionCard(
                  suggestionImage: suggestionData[index]["avatar"],
                  suggestionName: suggestionData[index]["label"],
                );
              },
            ),
          ),
          const SizedBox(
            height: 15,
          )
        ],
      ),
    );
  }
}
