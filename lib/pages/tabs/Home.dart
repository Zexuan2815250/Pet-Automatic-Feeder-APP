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
    return Container(
      alignment: Alignment.topLeft,
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.all(15),
      // color: Colors.white,
      height: 200,
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
          mainAxisSpacing: 1,
          crossAxisSpacing: 1,
          childAspectRatio: 1 / 0.15,
        ),
        children: [
          Text(
            "Food intake today",
            style: TextStyle(
              color: Color.fromRGBO(187,215,216,1),
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),

          Text(
            "2 meals / 50 g",
            textAlign: TextAlign.right,
            style: TextStyle(
              color: Color.fromRGBO(187,215,216,1),
              fontSize: 16,
              fontWeight: FontWeight.bold,
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
              Text("00", textAlign: TextAlign.center, style: TextStyle(color: Colors.black12,),),
              Text("04", textAlign: TextAlign.center, style: TextStyle(color: Colors.black12,),),
              Text("08", textAlign: TextAlign.center, style: TextStyle(color: Colors.black12,),),
              Text("12", textAlign: TextAlign.center, style: TextStyle(color: Colors.black12,),),
              Text("16", textAlign: TextAlign.center, style: TextStyle(color: Colors.black12,),),
              Text("20", textAlign: TextAlign.center, style: TextStyle(color: Colors.black12,),),
              Text("24", textAlign: TextAlign.center, style: TextStyle(color: Colors.black12,),),
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
                    backgroundColor: Colors.black12,
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.black12),
                  ),
                ),
              ),
            ],
          ),

          // const SizedBox(
          //   height: 0.01,
          //   width: 1.0,
          //   // 圆角矩形剪裁（`ClipRRect`）组件，使用圆角矩形剪辑其子项的组件。
          //   child: ClipRRect(
          //     // 边界半径（`borderRadius`）属性，圆角的边界半径。
          //     borderRadius: BorderRadius.all(Radius.circular(10.0)),
          //     child: LinearProgressIndicator(
          //       value: 1.0,
          //       backgroundColor: Colors.black12,
          //       valueColor: AlwaysStoppedAnimation<Color>(Colors.black12),
          //     ),
          //   ),
          // ),

          // Expanded(
          //   child: Container(
          //     child: Text(
          //       "0    4    8    12    16    20    24",
          //       style: TextStyle(
          //         color: Colors.black12,
          //       ),
          //     ),
          //   )
          // )

          // Text(
          //   "0    4    8    12    16    20    24",
          //   textAlign: TextAlign.justify,
          //   style: TextStyle(
          //     color: Colors.black12,
          //   ),
          // ),
        ]
      ),
    );
  }
}