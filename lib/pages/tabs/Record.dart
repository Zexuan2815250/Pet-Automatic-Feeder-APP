import 'package:flutter/material.dart';

class RecordPage extends StatefulWidget{
  const RecordPage({super.key});

  _RecordPageState createState() => _RecordPageState();
}
class _RecordPageState extends State<RecordPage>{
  @override
  Widget build(BuildContext context) {
    return FeederCard();
  }
}
class FeederCard  extends StatelessWidget{
  const FeederCard ({super.key});

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
                    style: TextStyle(fontSize: 24),
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
                    style: TextStyle(fontSize: 24),
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
                    style: TextStyle(fontSize: 24),
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
                    style: TextStyle(fontSize: 24),
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