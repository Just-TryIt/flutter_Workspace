import 'package:flutter/material.dart';
import 'package:skateboard_community2/menu/03_Q&A.dart';
import 'package:skateboard_community2/menu/setting.dart';
import 'package:skateboard_community2/palette.dart';
import 'package:skateboard_community2/home.dart';
import 'package:skateboard_community2/menu/01_general_forum.dart';

import 'menu/setting.dart';

void main() {
  runApp(const MyApp());
}

// palette 커스텀 참고 사이트
// https://dev.to/rohanjsh/custom-swatch-for-material-app-theme-primaryswatch-3kic

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // 적용X
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'community dmo',
      home: MyPage(),
      // theme: ThemeData(primarySwatch: Palette.blue),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Drawer'),
          backgroundColor: Palette.beige,
          foregroundColor: Palette.black, // 글자색
          surfaceTintColor: Palette.teal,
        ),
        body: Home(),
        // body: const Center(child: Text('My Page!')),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                  currentAccountPicture:   Image.network("https://pbs.twimg.com/media/FWRSf_maAAYJi27.jpg"),
                  accountName: Text('My Account'),
                  accountEmail: Text('Test@gmail.com'),
                  decoration: BoxDecoration(
                    color: Palette.beige,
                  ),
              ),
              //  DrawerHeader(
              //   child: Text('Drawer Header'),
              //   decoration: BoxDecoration(
              //     color: Palette.beige,
              //     // 애매하다 라운드 처리 안하는게 나은거 같기도하고..
              //     // 아래 색을 바꾸는건 어떻게 하지?
              //     borderRadius: BorderRadius.only(
              //       bottomLeft: Radius.circular(20.10),
              //       bottomRight: Radius.circular(20.10),
              //     ),
              //   ),
              // ),
              ListTile(
                title: const Text(
                    'GeneralForum',
                    style: TextStyle(fontFamily: 'Pretendard')
                ),
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
      ),
    );
  }
}

// // 참고 : https://velog.io/@viiviii/flutter-DrawerHeader-bottom-border-%EC%97%86%EC%95%A0%EA%B8%B0
