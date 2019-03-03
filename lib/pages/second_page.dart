import 'package:flutter/material.dart';

// Second page ทำหน้าที่แสดงผลหน้าที่สองหลังจากที่ปุ่มหน้าแรกถูกกด
class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("I love duck"),
      ),
      body: Center(
        // child จะทำไรก็ทำ จะเปลี่ยนเป็น Text() ก็ได้ตามใจ
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 20),
            ),
            Image.network(
              'https://static1.squarespace.com/static/53e916a5e4b04af975fe94ec/t/54d12172e4b096f808bba314/1422991737345/tumblr_mn8b8sLRb61rkz363o1_1280.jpg',
              width: 380,
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
            ),
            Text(
              'I ❤️ DUCK',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold
              ),
            )
          ],
        )
      ),
    );
  }
}