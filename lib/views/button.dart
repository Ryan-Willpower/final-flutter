import 'package:flutter/material.dart';
import '../pages/second_page.dart';

class HomeButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // SingleChildScrollView เป็น method ที่ทำให้ column สามารถ scroll ได้
    // ปกติแล้วความสูงของ column จะเท่ากับความสูงหน้าจอ ทำให้เลื่อนขึ้นลงไม่ได้
    return SingleChildScrollView(
      // สร้าง container แนวนอน (Row)
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
          // ปุ่มที่เหลือ ใช้วิธีเดียวกันตามท่ี่ได้กล่าวไว้
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
        ],
        crossAxisAlignment: CrossAxisAlignment.center,
      ),
    );
  }
}