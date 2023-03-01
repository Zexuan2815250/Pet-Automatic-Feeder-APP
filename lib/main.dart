//项目框架
//1.引入主题包
import 'package:flutter/material.dart';

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

class Tabs extends StatefulWidget {
  const Tabs({super.key});

  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;//默认选中第0个
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
     body: const MyHomePage(),
     bottomNavigationBar: BottomNavigationBar(
       type: BottomNavigationBarType.fixed,//解决底部导航四个的时候字体无法显示的情况
       currentIndex: this._currentIndex,//默认初始选中第0个Homepage
       onTap: (int index){
         setState(() {
           this._currentIndex = index;
         });
       },
       // selectedItemColor: Colors.blueGrey,
       items: const [
         BottomNavigationBarItem(
           icon: Icon(Icons.home, color: Colors.blueGrey),
           label: "Homepage",
         ),
         BottomNavigationBarItem(
           icon: Icon(Icons.pending_actions, color: Colors.blueGrey),
           label: "Record",
         ),
         BottomNavigationBarItem(
           icon: Icon(Icons.search, color: Colors.blueGrey),
           label: "Search",
         ),
         BottomNavigationBarItem(
           icon: Icon(Icons.settings, color: Colors.blueGrey),
           label: "Setting",
         ),
       ],
     ),
   );
  }
}

class MyHomePage extends StatelessWidget{
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   body: Column(
    //     children: const [
    //       Expanded(
    //         child: FeederCard(),
    //       ),
    //       BottomBar(),
    //     ],
    //   ),
    // );
    return Scaffold(
      body:
        FeederCard(),
        // BottomBar(),
    );
  }
}

class FeederCard extends StatelessWidget{
  const FeederCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Card(
          child: Column(
            children: [
              ListTile(
                title: const Text(
                  "Feed xx g pet food",
                  style: TextStyle(fontSize: 28),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    SizedBox(height: 20), // 添加 10 的间距
                    Text("Time: 13:22 28/02/2023"),
                  ],
                ),
              ),
              const Divider(),
              const ListTile(
                title: Text("Remark: Nana has been ate xx g"),
              ),
              const ListTile(
                title: Text("Recommend: Please do not let Nana ate more food"),
              ),
            ],
          )
        ),
        Card(
          child: Column(
            children: [
              ListTile(
                title: const Text(
                  "Feed xx g pet food",
                  style: TextStyle(fontSize: 28),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    SizedBox(height: 20), // 添加 10 的间距
                    Text("Time: 13:22 28/02/2023"),
                  ],
                ),
              ),
              const Divider(),
              const ListTile(
                title: Text("Remark: Nana has been ate xx g"),
              ),
              const ListTile(
                title: Text("Recommend: Please do not let Nana ate more food"),
              ),
            ],
          )
        ),
        Card(
          child: Column(
            children: [
              ListTile(
                title: const Text(
                  "Feed xx g pet food",
                  style: TextStyle(fontSize: 28),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    SizedBox(height: 20), // 添加 10 的间距
                    Text("Time: 13:22 28/02/2023"),
                  ],
                ),
              ),
              const Divider(),
              const ListTile(
                title: Text("Remark: Nana has been ate xx g"),
              ),
              const ListTile(
                title: Text("Recommend: Please do not let Nana ate more food"),
              ),
            ],
          )
        ),
        Card(
            child: Column(
              children: [
                ListTile(
                  title: const Text(
                    "Feed xx g pet food",
                    style: TextStyle(fontSize: 28),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      SizedBox(height: 20), // 添加 10 的间距
                      Text("Time: 13:22 28/02/2023"),
                    ],
                  ),
                ),
                const Divider(),
                const ListTile(
                  title: Text("Remark: Nana has been ate xx g"),
                ),
                const ListTile(
                  title: Text("Recommend: Please do not let Nana ate more food"),
                ),
              ],
            )
        ),
      ],
    );
  }
}

class BottomBar extends StatelessWidget{
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    //获取设备的宽度和高度
    final size = MediaQuery.of(context).size;

    return Stack(
      children: [
        Positioned(
          bottom: 0,
          width: size.width,
          height: 50,
          child: Container(
            color: Colors.blueGrey,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconContainer(Icons.home, color: Colors.blueGrey),
                IconContainer(Icons.pending_actions, color: Colors.blueGrey),
                IconContainer(Icons.search, color: Colors.blueGrey),
                IconContainer(Icons.settings, color: Colors.blueGrey),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class IconContainer extends StatelessWidget{
  Color color;
  IconData icon;
  IconContainer(this.icon,{super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        height: 120,
        width: 120,
        color: color,
        child: Icon(
          icon,
          color: Colors.white,
          size: 28,
        )
    );
  }
}