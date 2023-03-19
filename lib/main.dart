import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Exercise 1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Color(8桁のカラーコード)で色を自由に指定することができます。最初の2桁は透過率を表します。00で完全に透明になります。
        appBar: AppBar(title: const Text('タイトル', style: TextStyle(fontSize: 20, color: Color(0xff222222), fontWeight: FontWeight.bold),),),
        body: Column(
          children: [
            Container(
              // 内容が変化しないウィジェットにconstをつけると、処理が少し軽くなります。
              padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
              child: Row(
                children: const [
                  Icon(Icons.thumb_up, color: Colors.blue, size: 30,),
                  SizedBox(width: 10,),
                  Text('タイル１', style: TextStyle(fontSize: 18, color: Color(0xff222222),),)
                ],
              ),
            ),
            const Divider(height: 20,),
            Container(
              padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
              child: Row(
                children: const [
                  Icon(Icons.thumb_up, color: Colors.blue, size: 30,),
                  SizedBox(width: 10,),
                  Text('タイル2', style: TextStyle(fontSize: 18, color: Color(0xff222222),))
                ],
              ),
            ),
            const Divider(height: 20,),
            Container(
              padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
              child: Row(
                children: const [
                  Icon(Icons.thumb_up, color: Colors.blue, size: 30,),
                  SizedBox(width: 10,),
                  Text('タイル３', style: TextStyle(fontSize: 18, color: Color(0xff222222),))
                ],
              ),
            ),
            const Divider(height: 20,),
          ],
        )
    );
  }
}