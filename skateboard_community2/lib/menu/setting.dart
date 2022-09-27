import 'package:flutter/material.dart';
import 'package:skateboard_community2/palette.dart';

class Setting extends StatelessWidget{
  const Setting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            const Text(
              "여기는 설정 페이지 입니다",
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
    );
  }
}