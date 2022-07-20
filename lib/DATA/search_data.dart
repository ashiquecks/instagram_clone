import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:instagram/DATA/asset_datas.dart';
import 'package:instagram/WIDGET/staggred_card.dart';

// List<Map<dynamic, dynamic>> searchData = [
//   {"crossCount": 1, "verticalCount": 2, "backgroundImage": aliyaPost},
//   {"crossCount": 1, "verticalCount": 1, "backgroundImage": aliyaPost},
//   {"crossCount": 1, "verticalCount": 1, "backgroundImage": aliyaPost},
//   {"crossCount": 1, "verticalCount": 1, "backgroundImage": aliyaPost},
//   {"crossCount": 1, "verticalCount": 1, "backgroundImage": aliyaPost},
// ];

List<StaggeredTile> cardTile = <StaggeredTile>[
  const StaggeredTile.count(1, 2),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 2),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 2),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(1, 1),
];

//List of Cards with color and icon
List<Widget> listTile = <Widget>[
  StaggredCard(backgroundImage: aliyaPost),
  StaggredCard(backgroundImage: sr1),
  StaggredCard(backgroundImage: shipaPost),
  StaggredCard(backgroundImage: sr6),
  StaggredCard(backgroundImage: sr3),
  StaggredCard(backgroundImage: prabhasPost),
  StaggredCard(backgroundImage: sr7),
  StaggredCard(backgroundImage: sr5),
  StaggredCard(backgroundImage: bavanaPost),
  StaggredCard(backgroundImage: sr4),
  StaggredCard(backgroundImage: aliyaPost),
  StaggredCard(backgroundImage: lalPost),
  StaggredCard(backgroundImage: shipaPost),
  StaggredCard(backgroundImage: sr4),
  StaggredCard(backgroundImage: prabhasPost),
];
