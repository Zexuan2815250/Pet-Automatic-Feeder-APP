import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   body:
    //   Record(),
    // );
    return Column(
      children: [
        FoodIntakeCard(),
        MenuCard(),
        RecommendedReading(),
      ],
    );
  }
}

class FoodIntakeCard extends StatelessWidget{
  const FoodIntakeCard ({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(15),
      // color: Colors.white,
      height: 200,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            // color: Colors.white,
            color: Color.fromRGBO(187,215,216,0.5),
            // offset: Offset(5, 5),
          ),
        ],
      ),
      child: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          mainAxisSpacing: 1,
          crossAxisSpacing: 1,
          childAspectRatio: 1 / 0.15,
        ),
        children: [
          Text(
            "Food intake today",
            style: TextStyle(
              // color: Color.fromRGBO(187,215,216,1),
              color: Colors.black,
              fontSize: 24,
              // fontWeight: FontWeight.bold,
            ),
          ),

          Text(
            "2 meals / 50 g",
            textAlign: TextAlign.right,
            style: TextStyle(
              // color: Color.fromRGBO(187,215,216,1),
              color: Colors.black,
              fontSize: 16,
              // fontWeight: FontWeight.bold,
            ),
          ),

          GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 7,
              mainAxisSpacing: 1,
              crossAxisSpacing: 1,
              childAspectRatio: 1 / 0.5,
            ),
            children: [
              Text("00", textAlign: TextAlign.center, style: TextStyle(color: Colors.black45,),),
              Text("04", textAlign: TextAlign.center, style: TextStyle(color: Colors.black45,),),
              Text("08", textAlign: TextAlign.center, style: TextStyle(color: Colors.black45,),),
              Text("12", textAlign: TextAlign.center, style: TextStyle(color: Colors.black45,),),
              Text("16", textAlign: TextAlign.center, style: TextStyle(color: Colors.black45,),),
              Text("20", textAlign: TextAlign.center, style: TextStyle(color: Colors.black45,),),
              Text("24", textAlign: TextAlign.center, style: TextStyle(color: Colors.black45,),),
            ],
          ),

          GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              mainAxisSpacing: 1,
              crossAxisSpacing: 1,
              childAspectRatio: 1 / 0.05,
            ),
            children: const [
              SizedBox(
                height: 0.01,
                width: 1.0,
                // 圆角矩形剪裁（`ClipRRect`）组件，使用圆角矩形剪辑其子项的组件。
                child: ClipRRect(
                  // 边界半径（`borderRadius`）属性，圆角的边界半径。
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  child: LinearProgressIndicator(
                    value: 1.0,
                    backgroundColor: Colors.black26,
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.black26),
                  ),
                ),
              ),
            ],
          ),
        ]
      ),
    );
  }
}

class MenuCard extends StatelessWidget{
  const MenuCard ({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
      padding: EdgeInsets.fromLTRB(0, 25, 0, 25),
      // color: Colors.white,
      height: 100,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: Colors.white,
            // offset: Offset(5, 5),
          ),
        ],
      ),
      child: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          mainAxisSpacing: 2,
          crossAxisSpacing: 1,
          childAspectRatio: 1 / 0.3,
        ),
        children: [
          Icon(Icons.restaurant),
          Icon(Icons.local_drink),
          Icon(Icons.delete_outline),
          Icon(Icons.videocam),
          Text("Food", textAlign: TextAlign.center,),
          Text("Water", textAlign: TextAlign.center,),
          Text("Clean", textAlign: TextAlign.center,),
          Text("Camera", textAlign: TextAlign.center,),
        ],
      ),
    );
  }
}

class RecommendedReading extends StatelessWidget{
  const RecommendedReading ({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
      padding: EdgeInsets.fromLTRB(0, 25, 0, 25),
      // color: Colors.white,
      height: 310,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: Colors.white,
            // offset: Offset(5, 5),
            ),
          ],
        ),
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          mainAxisSpacing: 5,
          crossAxisSpacing: 1,
          childAspectRatio: 1 / 0.2,
        ),
        children: [
          ListTile(
            // leading: Images.assets('images/account.png'),
            leading: CircleAvatar(
              backgroundImage: AssetImage('images/account.png'), // no matter how big it is, it won't overflow
            ),
            title: Text("lalalalalalalalalalalalalalalal"),
            subtitle: Text("dudududududududududududududududududududud"),
          ),
          ListTile(
            // leading: Images.assets('images/account.png'),
            leading: CircleAvatar(
              backgroundImage: AssetImage('images/account.png'), // no matter how big it is, it won't overflow
            ),
            title: Text("lalalalalalalalalalalalalalalal"),
            subtitle: Text("dudududududududududududududududududududud"),
          ),
          ListTile(
            // leading: Images.assets('images/account.png'),
            leading: CircleAvatar(
              backgroundImage: AssetImage('images/account.png'), // no matter how big it is, it won't overflow
            ),
            title: Text("lalalalalalalalalalalalalalalal"),
            subtitle: Text("dudududududududududududududududududududud"),
          ),
          ListTile(
            // leading: Images.assets('images/account.png'),
            leading: CircleAvatar(
              backgroundImage: AssetImage('images/account.png'), // no matter how big it is, it won't overflow
            ),
            title: Text("lalalalalalalalalalalalalalalal"),
            subtitle: Text("dudududududududududududududududududududud"),
          ),
          ListTile(
            // leading: Images.assets('images/account.png'),
            leading: CircleAvatar(
              backgroundImage: AssetImage('images/account.png'), // no matter how big it is, it won't overflow
            ),
            title: Text("lalalalalalalalalalalalalalalal"),
            subtitle: Text("dudududududududududududududududududududud"),
          )
        ],
      )
    );
  }
}