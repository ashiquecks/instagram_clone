import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/DATA/asset_datas.dart';

// =============== APBAR FUNCTION ==================\\

intstaAppBar() {
  return AppBar(
    elevation: 0,
    leading: const SizedBox(),
    centerTitle: false,
    leadingWidth: 0,
    title: Image.asset(
      instaText,
      width: 130,
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: Image.asset(addIcon),
      ),
      IconButton(
        onPressed: () {},
        icon: Image.asset(messengerIcon),
      ),
    ],
    backgroundColor: Colors.transparent,
  );
}

// =============== ADD BLU CIRCLE ==================\\

Widget addCircle() {
  return Positioned(
    bottom: 5,
    right: 10,
    child: Container(
      width: 20,
      height: 20,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(width: 2, color: Colors.white),
        color: Colors.blue,
      ),
      child: const Icon(
        Icons.add,
        color: Colors.white,
        size: 15,
      ),
    ),
  );
}

// ================== ICON BUTTON =====================\\

Widget iconButtons({
  required IconData buttonIcon,
  required Color iconColor,
  required double iconSize,
}) {
  return IconButton(
    onPressed: () {},
    icon: Icon(
      buttonIcon,
      color: iconColor,
      size: iconSize,
    ),
  );
}

Widget iconImageButton({
  required String iconImage,
  required double iconHeight,
  required double iconWidth,
}) {
  return IconButton(
    onPressed: () {},
    icon: Image.asset(
      iconImage,
      height: iconHeight,
      width: iconWidth,
    ),
  );
}

// ================= AVATAR CIRCLE =======================\\

Widget avatarCircle({
  required avatarImage,
  required double avatarMargin,
}) {
  return Container(
    height: 25,
    width: 25,
    margin: EdgeInsets.only(left: avatarMargin),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.white, width: 2),
      shape: BoxShape.circle,
      image: DecorationImage(
        image: AssetImage(avatarImage),
      ),
    ),
  );
}

Widget commentAvatar() {
  return Container(
    height: 30,
    width: 30,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      image: DecorationImage(image: AssetImage(sai), fit: BoxFit.cover),
    ),
  );
}

// ===================== RICH TEXT =======================\\

Widget richTextWidget({
  required String name,
  required String count,
}) {
  return RichText(
    text: TextSpan(
      children: [
        const TextSpan(
          text: "Liked by",
          style: TextStyle(color: Colors.black),
        ),
        TextSpan(
          text: name,
          style:
              const TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        const TextSpan(
          text: "and",
          style: TextStyle(color: Colors.black),
        ),
        TextSpan(
          text: count,
          style:
              const TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ],
    ),
  );
}

// ====================== Follow Button ==========================\\

Widget followButton({
  required BuildContext context,
}) {
  return Container(
    margin: EdgeInsets.all(10),
    width: MediaQuery.of(context).size.width / 2,
    height: 30,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5), color: Colors.blue),
    child: const Center(
      child: Text(
        "Follow",
        style: TextStyle(color: Colors.white),
      ),
    ),
  );
}

// ====================== LABEL ROW =====================\\

Widget labelRow() {
  return Padding(
    padding: const EdgeInsets.all(10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text(
          "Suggested for  You",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "See All",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
        ),
      ],
    ),
  );
}

Widget commentRow({
  required BuildContext context,
}) {
  return Padding(
    padding: const EdgeInsets.only(left: 10, top: 5, bottom: 5, right: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            commentAvatar(),
            const SizedBox(
              width: 10,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 2,
              height: 50,
              child: TextFormField(
                decoration: const InputDecoration(
                    border: InputBorder.none, hintText: "Add a comment"),
              ),
            ),
          ],
        ),
        Row(
          children: [
            iconButtons(
              buttonIcon: Icons.favorite,
              iconColor: Colors.red,
              iconSize: 15,
            ),
            iconImageButton(
                iconImage: handEmoji, iconHeight: 15, iconWidth: 15),
            iconImageButton(
                iconImage: addIconRound, iconHeight: 15, iconWidth: 15)
          ],
        )
      ],
    ),
  );
}

Widget postTimingText() {
  return const Padding(
    padding: EdgeInsets.only(left: 10),
    child: Text(
      "11 hours ago",
      style: TextStyle(fontSize: 10),
    ),
  );
}

Widget searchBox() {
  return Container(
    margin: const EdgeInsets.all(10),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5), color: Colors.grey[300]),
    child: Center(
      child: TextFormField(
        decoration: const InputDecoration(
          border: InputBorder.none,
          hintText: "Search",
          prefixIcon: Icon(Icons.search),
        ),
      ),
    ),
  );
}

Widget floatingIcons() {
  return SizedBox(
    width: 30,
    child: ListView(
      shrinkWrap: true,
      children: [
        const Icon(
          CupertinoIcons.heart,
          color: Colors.white,
          size: 35,
        ),
        const SizedBox(height: 15),
        const Icon(
          CupertinoIcons.chat_bubble,
          color: Colors.white,
          size: 30,
        ),
        const SizedBox(height: 15),
        const Icon(
          CupertinoIcons.paperplane,
          color: Colors.white,
          size: 30,
        ),
        const SizedBox(height: 15),
        const Icon(
          Icons.more_vert,
          color: Colors.white,
          size: 30,
        ),
        const SizedBox(height: 15),
        Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(width: 2, color: Colors.white),
            image: DecorationImage(
              image: AssetImage(sethupathiPost),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget reelsLabelRow() {
  return Row(
    children: [
      CircleAvatar(
        radius: 15,
        backgroundImage: AssetImage(naynThara),
      ),
      const Padding(
        padding: EdgeInsets.only(left: 10, right: 15),
        child: Text(
          "Nayan thara",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      OutlinedButton(
        style: OutlinedButton.styleFrom(
          side: const BorderSide(width: 2.0, color: Colors.white),
        ),
        onPressed: () {},
        child: const Text(
          "Follow",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    ],
  );
}

Widget notificationTab({
  required bool typeFollow,
  required String name,
  required String message,
  required String avatar,
  required String image,
}) {
  return Padding(
    padding: const EdgeInsets.only(
      top: 15,
    ),
    child: ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(avatar),
        radius: 25,
      ),
      title: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: name,
              style: const TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.black),
            ),
            TextSpan(
              text: message,
              style: const TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
      trailing: typeFollow
          ? Container(
              margin: EdgeInsets.all(10),
              width: 80,
              height: 30,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.blue),
              child: const Center(
                child: Text(
                  "Follow",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          : Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.cover),
              ),
            ),
    ),
  );
}

Widget userFollowersRow() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      CircleAvatar(
        backgroundImage: AssetImage(sai),
        radius: 40,
      ),
      const SizedBox(
        width: 80,
        child: ListTile(
          title: Text("183"),
          subtitle: Text("Post"),
        ),
      ),
      const SizedBox(
        width: 100,
        child: ListTile(
          title: Text("15M"),
          subtitle: Text("Followers"),
        ),
      ),
      const SizedBox(
        width: 100,
        child: ListTile(
          title: Text("75"),
          subtitle: Text("Following"),
        ),
      ),
    ],
  );
}

// ================================== Story Circle ==============================\\

Widget storyCircle() {
  return Column(
    children: const [
      CircleAvatar(
        radius: 31,
        backgroundColor: Colors.black,
        child: CircleAvatar(
          backgroundColor: Colors.white,
          radius: 30,
          child: Icon(
            Icons.add,
            size: 25,
            color: Colors.black,
          ),
        ),
      ),
      Text("New")
    ],
  );
}
