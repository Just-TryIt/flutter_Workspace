import 'package:flutter/material.dart';
import 'package:skateboard_community2/palette.dart';

class GeneralTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Palette.beige,
        bottomAppBarColor: Palette.beige,
        scaffoldBackgroundColor: Palette.night,
        backgroundColor: Palette.night,
        selectedRowColor:Palette.teal,
          // appBarTheme:Palette.beige,
        // 예전엔 accentColor였는데 용어가 바뀐듯
        // colorScheme: Palette.beige.copyWith(secondary: Palette.teal),

        fontFamily:'SeoulHangangC BL',
      ),
    );
  }
}
