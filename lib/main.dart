//项目框架
//1.引入主题包
import 'package:flutter/material.dart';
import 'package:petfeeder/pages/Tabs.dart';

//2.定义入口方法，调用runApp，并在里面传入对应组件
void main(){
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        // textTheme: TextTheme(
        //   bodyText2: TextStyle(
        //     color: Colors.blueGrey,
        //   )
        // )
      ),
      home: Tabs(),
    );
  }
}