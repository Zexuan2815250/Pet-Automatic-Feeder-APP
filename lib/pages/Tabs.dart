import 'package:flutter/material.dart';
import 'package:petfeeder/pages/tabs/Home.dart';
import 'package:petfeeder/pages/tabs/Record.dart';
import 'package:petfeeder/pages/tabs/Search.dart';
import 'package:petfeeder/pages/tabs/Setting.dart';

class Tabs extends StatefulWidget {
  const Tabs({super.key});

  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;//默认选中第0个

  //页面列表
  List _pageList = [
    HomePage(),
    RecordPage(),
    SearchPage(),
    SettingPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //最上面导航栏
      appBar: AppBar(
        title: const ListTile(
          leading: Icon(Icons.reorder, color: Colors.white,),
          title: Text(
            "Pet Feeder",
            style: TextStyle(
              fontSize: 20.0, // 设置字体大小
              color: Colors.white, // 设置字体颜色
            ),
          ),
          trailing: Icon(Icons.account_circle, color: Colors.white),
        ),
      ),
      //主体
      body: this._pageList[this._currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,//解决底部导航四个的时候字体无法显示的情况
        currentIndex: this._currentIndex,//默认初始选中第0个Homepage
        onTap: (int index){
          setState(() {
            this._currentIndex = index;
          });
        },
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: Colors.black45,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pending_actions),
            label: "Record",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Setting",
          ),
        ],
      ),
    );
  }
}


// class BottomBar extends StatelessWidget{
//   const BottomBar({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     //获取设备的宽度和高度
//     final size = MediaQuery.of(context).size;
//
//     return Stack(
//       children: [
//         Positioned(
//           bottom: 0,
//           width: size.width,
//           height: 50,
//           child: Container(
//             color: Colors.blueGrey,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 IconContainer(Icons.home, color: Colors.blueGrey),
//                 IconContainer(Icons.pending_actions, color: Colors.blueGrey),
//                 IconContainer(Icons.search, color: Colors.blueGrey),
//                 IconContainer(Icons.settings, color: Colors.blueGrey),
//               ],
//             ),
//           ),
//         )
//       ],
//     );
//   }
// }

// class IconContainer extends StatelessWidget{
//   Color color;
//   IconData icon;
//   IconContainer(this.icon,{super.key, required this.color});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         alignment: Alignment.center,
//         height: 120,
//         width: 120,
//         color: color,
//         child: Icon(
//           icon,
//           color: Colors.white,
//           size: 28,
//         )
//     );
//   }
// }