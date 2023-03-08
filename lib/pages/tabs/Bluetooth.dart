import 'package:flutter/material.dart';
import 'package:flutter_blue/flutter_blue.dart';
import 'package:permission_handler/permission_handler.dart';

class BluetoothPage extends StatefulWidget {
  const BluetoothPage({super.key});

  _BluetoothPageState createState() => _BluetoothPageState();
}

class _BluetoothPageState extends State<BluetoothPage> {
  //初始化蓝牙，获取蓝牙实例
  FlutterBlue flutterBlue = FlutterBlue.instance;
  //定义蓝牙状态
  bool isBlueOn = false;
  bool hasPermission = false;
  //蓝牙设备的列表
  List<BluetoothDevice> deviceList = [];

  @override
  bool initState(){
    super.initState();
    //监听蓝牙有没有开启
    flutterBlue.state.listen((state) {
      if (state == BluetoothState.on) {
        print("蓝牙已打开");
        setState(() {
          this.isBlueOn = true;
        });
        //申请蓝牙权限
        this.requestPermission();
        //扫描设备
        this.scanDevice();
      } else {
        print("请开启蓝牙");
        setState(() {
          this.isBlueOn = false;
        });
      }
    });
    return this.isBlueOn;
  }

  //设备扫描
  void scanDevice() {
    if (this.isBlueOn) {
      // 开始扫描
      flutterBlue.startScan(timeout: Duration(seconds: 4));
      // 监听扫描的结果
      flutterBlue.scanResults.listen((results) {
        for (ScanResult r in results) {
          var device = r.device;
          if (device.name.length > 2) {
            if (deviceList.indexOf(device) == -1) {
              setState(() {
                deviceList.add(device);
              });
            }
            print('${r.device.name} found! rssi: ${r.rssi}');
          }
        }
      });
    }
    print("deviceList的长度是：");
    print(this.deviceList.length);
  }

  //动态权限
  Future<bool> requestPermission() async{
    //get permission
    bool hasBluetoothPermission = await requestPermission();
    if(hasBluetoothPermission){
      print("bluetooth permission granted");
      setState(() {
        this.hasPermission = true;
      });
    }else{
      print("bluetooth permission not granted");
      setState(() {
        this.hasPermission = false;
      });
    }
    return hasBluetoothPermission;
  }

  //申请蓝牙权限，授予定位权限返回true，否则返回false
  Future<bool> requestBluePermission() async {
    //获取当前的权限
    var status = await Permission.bluetooth.status;
    if (status == PermissionStatus.granted) {
      //已经授权
      return true;
    }else{
      //未授权则发起一次申请
      status = await Permission.bluetooth.request();
      if (status == PermissionStatus.granted) {
        return true;
      }else{
        return false;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // if(initState()){
    //   return const Text("Bluetooth is already on");
    // }else{
    //   return const Text("please turn on Bluetooth");
    // }
    return Center(
      child: this.deviceList.length > 0 ? Column(
        children: this.deviceList.map((device) {
          return ListTile(
            title: Text("${device.name} ${device.id}"), trailing: Icon(Icons.arrow_right_rounded), onTap: () {
              Navigator.pushNamed(context, '/blue', arguments: {"device": device});
            },
          );
        }).toList(),
      )
      : Center(
        child: this.isBlueOn ? Text("没有扫描到任何设备") : Text("蓝牙已关闭 请开启蓝牙"),
      ),
    );
  }
}