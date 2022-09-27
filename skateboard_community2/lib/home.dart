import 'package:flutter/material.dart';
import 'package:skateboard_community2/menu/01_general_forum.dart';
import 'package:skateboard_community2/palette.dart';
import 'package:skateboard_community2/theme_data.dart';

import 'menu/02_.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            const Text(
              "귀여운 농담곰을 보세요",
              style: TextStyle(
                fontFamily: "IBM Plex Sans KR",
                fontSize: 23,
              ),
            ),
            Image.network(
                "https://media.bunjang.co.kr/product/177600551_1_1643548856_w360.jpg"),
            Padding(padding: EdgeInsets.all(3)), // 효과를 모르겠음
            Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween)
          ],
        ),
      ),
    );
  }
}
