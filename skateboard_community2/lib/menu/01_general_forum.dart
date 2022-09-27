import 'package:flutter/material.dart';
import 'package:skateboard_community2/palette.dart';

class GeneralForum extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            const Text(
              "여기는 자유 게시판 입니다",
              style: TextStyle(
                fontFamily: "IBM Plex Sans KR",
                fontSize: 23,
              ),
            ),
            Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQv1W9eRbQbmStkDUgHANWEldelMycunIr4Zw&usqp=CAU"),
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