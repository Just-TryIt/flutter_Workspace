import 'package:flutter/material.dart';
import 'package:skateboard_community2/menu/01_general_forum.dart';
import 'package:skateboard_community2/menu/setting.dart';
import 'package:skateboard_community2/palette.dart';

class QnA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            const Text(
              "여기는 Q&A 게시판 입니다",
              style: TextStyle(
                fontFamily: "IBM Plex Sans KR SemiBold",
                fontSize: 30,
              ),
            ),
            Image.network(
                "https://item.kakaocdn.net/do/39bc8eb741caa75a8b7fa356741df5b49f5287469802eca457586a25a096fd31"),
            Padding(padding: EdgeInsets.all(3)), // 효과를 모르겠음
            Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween)
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: Image.network(
                  "https://pbs.twimg.com/media/FWRSf_maAAYJi27.jpg"),
              accountName: Text('My Account'),
              accountEmail: Text('Test@gmail.com'),
              decoration: BoxDecoration(
                color: Palette.beige,
              ),
            ),
            ListTile(
              title: const Text('GeneralForum',
                  style: TextStyle(fontFamily: 'Pretendard')),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GeneralForum()),
                );
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Q&A'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => QnA()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: const Text('설정'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Setting()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
