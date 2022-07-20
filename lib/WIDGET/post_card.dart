import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/DATA/asset_datas.dart';
import 'package:instagram/const.dart';

class PostCard extends StatelessWidget {
  final String postProfile;
  final String postImage;
  final String postName;
  const PostCard(
      {Key? key,
      required this.postImage,
      required this.postName,
      required this.postProfile})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(postProfile),
            radius: 20,
          ),
          title: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: postName,
                  style: const TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                WidgetSpan(
                  child: Image.asset(
                    blueTick,
                    width: 20,
                  ),
                ),
              ],
            ),
          ),
          trailing: IconButton(
            icon: const Icon(CupertinoIcons.ellipsis_vertical),
            onPressed: () {},
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 2,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(postImage), fit: BoxFit.cover),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                iconButtons(
                  buttonIcon: Icons.favorite_outline,
                  iconColor: Colors.black,
                  iconSize: 30,
                ),
                iconImageButton(
                    iconImage: commentIcon, iconHeight: 25, iconWidth: 25),
                iconImageButton(
                    iconImage: shareIcon, iconHeight: 25, iconWidth: 25),
              ],
            ),
            iconImageButton(iconImage: saveIcon, iconHeight: 25, iconWidth: 25),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Stack(
                children: [
                  avatarCircle(avatarImage: dq, avatarMargin: 0),
                  avatarCircle(avatarImage: naynThara, avatarMargin: 15),
                  avatarCircle(avatarImage: sethupathi, avatarMargin: 30),
                ],
              ),
            ),
            richTextWidget(name: "Nayanthara  ", count: "66k others"),
          ],
        ),
        commentRow(context: context),
        postTimingText()
      ],
    );
  }
}
