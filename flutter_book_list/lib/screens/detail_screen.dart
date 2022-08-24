import 'package:flutter/material.dart';

// 화면 클래스 선언
class DatailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('패키지 없이 R로 구현하는 심층 강화학습'),
      ),
      body: Column(
        children: [
          // children의 첫번 째 자식 : Image
          Image.network(
            'https://img1.daumcdn.net/thumb/R1280x0/?scode='
            'mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FCuoqW%2Fbtq8uatukHu'
            '%2FO0VapTwcTTpV3T29lqMYd0%2Fimg.png',
          ),

          // children의 두번 째 자식 : Padding
          const Padding(
            padding: EdgeInsets.all(3),
          ),

          // children의 세번 째 자식 : Row
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Container1 : 제목과 부제목
              Container(
                padding: const EdgeInsets.all(10),
                child: Column( // 작은 위젯들 간 배치를 표현할 때도 Row와 Column을 자주 사용!
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: const Text(
                        '패키지 없이 R로 구현하는 심층 강화학습',
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Text(
                      '손으로 풀어보는 Q-Learning부터 R로 구현하는 심층 강화학습까지',
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                  ],
                ),
              ),
              // Container2 : Icon
              Container(
                padding: EdgeInsets.all(10),
                child: const Center(
                  child: Icon(
                    Icons.star,
                    color: Colors.redAccent,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
