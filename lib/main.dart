import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

//สร้างwidget : สามารถออกแบบทีหลัง โดยให้ main รอรับ widget มาทำงาน
class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //ส่งค่ากลับมาในรูปแบบ widget
    return MaterialApp(
      title: "My App",
      home: MyHomePage(),
      theme: ThemeData(primarySwatch: Colors.green),
    ); //ได้หน้าตาที่เขียน เขียนผ่าน return build โดยเรียกใช้งานผ่านชื่อ widget
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int number = 0; //การสร้าง state
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //มี 2 ส่วน
      //สำเร็จรูปมาช่วยจัด
      appBar: AppBar(
        title: Text("โปรแกรมนับเลข"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("กดปุ่มเพื่อเพิ่มจำนวนตัวเลข"), //widget ตัวแรก
          Text(number.toString(), style: TextStyle(fontSize: 60)), //2
        ],
      ) //ระบุผ่าน child เมื่ออยากให้อะไรอยู่ด้านใน
          ), //ส่วนสีขาว
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            number++;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
