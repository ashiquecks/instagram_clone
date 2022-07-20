import 'package:flutter/material.dart';
import 'package:instagram/DATA/asset_datas.dart';
import 'package:instagram/SCREENS/status_section.dart';
import 'package:instagram/SCREENS/suggestion_section.dart';
import 'package:instagram/WIDGET/post_card.dart';
import 'package:instagram/const.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: intstaAppBar(),
      body: ListView(
        children: [
          const StatusSection(),
          PostCard(
            postProfile: dhaush,
            postName: 'Dhanush actor',
            postImage: dhaushPost,
          ),
          const SuggestionSection(),
          PostCard(
            postProfile: naynThara,
            postName: 'Nayan Thara',
            postImage: nayanPost,
          ),
          PostCard(
            postProfile: dq,
            postName: 'Dulquar Salman',
            postImage: dqPost,
          ),
          PostCard(
            postProfile: myPic,
            postName: 'Ashique_Cks',
            postImage: xlTech,
          ),
        ],
      ),
    );
  }
}
