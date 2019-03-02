import 'package:flutter/material.dart';

// ส่วน Main จะเป็นส่วนหลักในการแสดงผล ซึ่ง home screen จะไปเรียก class Home
class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Route',
      // เรียกใช้ Screen class
      home: Screen(),
    );
  }
}

class Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Duck'),
      ),
      // สร้าง container แนวนอน (Row) แล้วไปเรียกใช้ ScreenBuilder
      body: SingleChildScrollView(
        child: Column(
          // children จะเป็น property ที่บอกว่า container ของเรามีอะไรบ้าง
          children: <Widget>[
            // container เป็น method ที่รวมการแสดงผลต่างๆ
            Container(
              // RaiseButton เป็น method ที่ทำให้ child กลายเป็นปุ่มที่สามารถกดได้
              child: RaisedButton(
                // โหลดรูปจาก internet มาแสดงผล 
                child: Image.network(
                  // เปลี่ยน src ได้จ้า
                  'https://i.pinimg.com/originals/55/16/f1/5516f1f71057806091150a22d10654a1.jpg',
                ),
                // onPressed เป็น property ที่ทำให้เราสามารถกำหนดได้ว่าหลังจากที่กดปุ่มนี้แล้ว จะทำงานอะไรต่อ ปกติจะเรียกว่า event
                // ซึ่งปกติการ Navigate หรือที่เรียกกันว่า route จะใช้ class ที่ชื่อ Navigator ซึ่งจะมีทั้ง push และ pop
                onPressed: () {
                  // push เป็น method สำหรับเปลี่ยนไปอีกหน้าหนึ่ง รับ argument 2 ตัวคือ context กับ route
                  Navigator.push(
                    context,
                    // ใช้ route ของ material เพื่อความง่าย โดยที่มีการ build และ route ไปที่ class SecondPage หากมีการคลิกเกิดขึ้น
                    MaterialPageRoute(builder: (context) => SecondPage())
                  );
                },
              ),
              // ส่วนที่เหลือ จัดหน้าให้สวยงามเฉยๆ
              padding: EdgeInsets.all(10),
            ),
            // ที่เหลือทำตามด้านบน ก๊อบวางก็ได้
            Container(
              child: RaisedButton(
                child: Image.network(
                  'http://static.flickr.com/3553/3307270376_66cac90cbb.jpg'
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondPage())
                  );
                },
              ),
              padding: EdgeInsets.all(10),
            ),
            Container(
              child: RaisedButton(
                child: Image.network(
                  'https://farm8.staticflickr.com/7194/6878042799_6e09e179eb_b.jpg'
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondPage())
                  );
                },
              ),
              padding: EdgeInsets.all(10),
            ),
          ],
          crossAxisAlignment: CrossAxisAlignment.center,
        ),
      )
    );
  }
}

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

void main() => runApp(Main());