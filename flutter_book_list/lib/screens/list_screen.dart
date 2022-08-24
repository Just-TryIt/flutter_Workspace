import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('도서 목록 앱'),
      ),
      body: ListView(
        children: <Widget>[
          BookTile(
            title: ' 패키지 없이 R로 구현하는 심층 강화학습',
            subtitle: '패키지 없이 R로 구현하는 심층 강화학습',
            description: '패키지 없이 R로 구현하는 심층 강화학습',
            image: 'https://img1.daumcdn.net/thumb/R1280x0/?scode='
                'mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FCuoqW%2Fbtq8uatukHu'
                '%2FO0VapTwcTTpV3T29lqMYd0%2Fimg.png',
          ),
          BookTile(
            title: '바로 찾아 바로 만드는 포토샵 콘텐츠 디자인 북',
            subtitle: '바로 찾아 바로 만드는 포토샵 콘텐츠 디자인 북',
            description: '바로 찾아 바로 만드는 포토샵 콘텐츠 디자인 북',
            image:
                'https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname'
                '=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2Flzlyb%2Fbtq8nD5gYAf%2FiuHnWoFZPoBM35Y89aQZb0%2Fimg.png',
          ),
          BookTile(
              title: ' Vue.js 프로젝트 투입 일주일 전',
              subtitle: ' Vue.js 프로젝트 투입 일주일 전',
              description: ' Vue.js 프로젝트 투입 일주일 전',
              image:
                  'https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname='
                  'https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FbGOxQ8%2Fbtq6imQpvmA%2FEY3gKphHOPQbk8KT5FOm8K%2Fimg.jpg'),
          BookTile(
            title: '파이썬 해킹 레시피',
            subtitle: '파이썬 해킹 레시피',
            description: '파이썬 해킹 레시피',
            image:
                'https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%'
                '2F%2Fblog.kakaocdn.net%2Fdn%2FrTh6k%2Fbtq517fdjqN%2FumbKQy7r9eGVnK4fkC8orK%2Fimg.png',
          ),
        ],
      ),
    );
  }
}

class BookTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final String description;
  final String image;

  BookTile({
    required this.title,
    required this.subtitle,
    required this.description,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      leading: Image.network(image),
      onTap:
          () {}, // 여기서 title, subtitle, description, image 데이터를 다음 화면으로 이동하면서 넘기게 된다!
    );
  }
}
