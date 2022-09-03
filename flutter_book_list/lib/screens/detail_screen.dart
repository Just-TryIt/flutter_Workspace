import 'package:flutter/material.dart';

// 화면 클래스 선언
class DetailScreen extends StatelessWidget {
  final String title;
  final String subtitle;
  final String description;
  final String image;

  DetailScreen({
    required this.title,
    required this.subtitle,
    required this.description,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text(title),
      ),
      body: Container(
        child: Column(
          children: [
            // children의 첫번 째 자식 : Image
            Image.network(image),

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
                  width: MediaQuery.of(context).size.width * 0.8,
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    // 작은 위젯들 간 배치를 표현할 때도 Row와 Column을 자주 사용!
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child:  Text(
                          title,
                          style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                       Text(
                       subtitle,
                        style: TextStyle(fontSize: 18, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                // Container2 : Icon
                Container(
                  width: MediaQuery.of(context).size.width * 0.15,

                  //Flutter RenderFlex overflowed ... right... 오류 해결법
                  // 1. MediaQuery 이용하기
                  // 2. child:를 Flexible()로 감쌈. 근데 예제에는 안 써있는데 그냥X child: Flexible()로 감싸야 오류가 안남
                  padding: EdgeInsets.all(10),
                  child: const Center(
                    // child: Flexible(
                    child: Icon(
                      Icons.star,
                      color: Colors.redAccent,
                    ),
                  ),
                ),
                // ),
              ],
            ),

            Padding(
                padding: EdgeInsets.all(
              (3),
            )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.call,
                      color: Colors.brown,
                    ),
                    Text(
                      'Contact',
                      style: TextStyle(color: Colors.brown),
                    )
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.near_me,
                      color: Colors.brown,
                    ),
                    Text('Route', style: TextStyle(color: Colors.brown),)
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.save,
                      color: Colors.brown,
                    ),
                    Text(
                      'Save',
                      style: TextStyle(color: Colors.brown),
                    ),
                  ],
                ),
              ],
            ),

            Container(
              padding: EdgeInsets.all(15),
              child: Text(
               description,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
