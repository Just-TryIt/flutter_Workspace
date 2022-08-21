import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('도서 목록 앱'),
      ),
      body: ListView(
        children: [
          ListTile(
            // ListView 의 한 줄을 나타냄!
            title: Text(' 패키지 없이 R로 구현하는 심층 강화학습'), // ListTile 가운데에 나타날 위젯
            leading: Image.network(
              'https://img1.daumcdn.net/thumb/R1280x0/?scode='
              'mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FCuoqW%2Fbtq8uatukHu'
              '%2FO0VapTwcTTpV3T29lqMYd0%2Fimg.png',
            ),
          ),
          ListTile(
            // ListView 의 한 줄을 나타냄!
            title: Text(' 바로 찾아 바로 만드는 포토샵 콘텐츠 디자인 북'), // ListTile 가운데에 나타날 위젯
            leading: Image.network(
              'https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname'
                  '=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2Flzlyb%2Fbtq8nD5gYAf%2FiuHnWoFZPoBM35Y89aQZb0%2Fimg.png',
            ),
          ),
          ListTile(
            // ListView 의 한 줄을 나타냄!
            title: Text(' Vue.js 프로젝트 투입 일주일 전'), // ListTile 가운데에 나타날 위젯
            leading: Image.network(
              'https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname='
                  'https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FbGOxQ8%2Fbtq6imQpvmA%2FEY3gKphHOPQbk8KT5FOm8K%2Fimg.jpg',
            ),
          ),
          ListTile(
            // ListView 의 한 줄을 나타냄!
            title: Text(' 파이썬 해킹 레시피'), // ListTile 가운데에 나타날 위젯
            leading: Image.network(
              'https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%'
                  '2F%2Fblog.kakaocdn.net%2Fdn%2FrTh6k%2Fbtq517fdjqN%2FumbKQy7r9eGVnK4fkC8orK%2Fimg.png',
            ),
          ),
        ],
      ),
    );
  }
}
