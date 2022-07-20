import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:instagram/DATA/search_data.dart';

import 'package:instagram/const.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        searchBox(),
        Container(
          height: MediaQuery.of(context).size.height,
          child: StaggeredGridView.count(
            crossAxisCount: 3,
            staggeredTiles: cardTile,
            children: listTile,
            mainAxisSpacing: 1,
            crossAxisSpacing: 1,
          ),
        ),
      ],
    );
  }
}
