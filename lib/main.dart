import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Exercise 1',
      theme: ThemeData(

        //問１： ここでは基本色しか指定できません。
        primarySwatch: Colors.orange,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('タイトル', style: TextStyle(fontSize: 20, color: Color(0xff222222), fontWeight: FontWeight.bold),),),

        //問２： 真黒(0xff000000)や真白(0xffffffff)は目が疲れるので、あまり使わないようにしましょう。
        //Flutterのカラーコードは8桁ですが、頭の2桁は透過率を表します。
        backgroundColor: const Color(0xffeeeeee),
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
              child: Row(

                //問７： mainAxisAlignmentでColumnやRowと平行に位置を調節できます。
                //crossAxisAlignmentはColumnやRowと直角に位置を調整できます。
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Icon(Icons.thumb_up, color: Colors.blue, size: 30,),
                  SizedBox(width: 10,),

                  //問４: アイコンの一覧はこちらで確認できます(https://api.flutter.dev/flutter/material/Icons-class.html)。
                  //SizedBoxはちょっとした隙間を作りたいときに便利です。
                  Icon(Icons.thumb_down, color: Colors.red, size: 30,),
                  SizedBox(width: 10,),
                  Text('タイル１', style: TextStyle(fontSize: 18, color: Color(0xff222222),),)
                ],
              ),
            ),
            const Divider(height: 20,),
            Container(

              //問５： paddingはWidgetの大きさを広げるプロパティです。
              padding: const EdgeInsets.only(left: 20, top: 20, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
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
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Icon(Icons.thumb_up, color: Colors.blue, size: 30,),
                  SizedBox(width: 10,),

                  //問６： fontWeightで文字の太さを調整できます。
                  Text('タイル３', style: TextStyle(fontSize: 18, color: Color(0xff222222), fontWeight: FontWeight.bold))
                ],
              ),
            ),
            const Divider(height: 20,),

            //問３： Dividerで分けた部分をタイルとしています。
            Container(
              padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
              child: Row(
                children: const [
                  Icon(Icons.thumb_up, color: Colors.blue, size: 30,),
                  SizedBox(width: 10,),
                  Text('タイル４', style: TextStyle(fontSize: 18, color: Color(0xff222222),))
                ],
              ),
            ),
            const Divider(height: 20,),
          ],
        )
    );
  }
}