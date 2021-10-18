import 'package:flutter/material.dart';
import 'package:flutterapp/control_device.dart';
import 'package:flutterapp/data_channel.dart';
import 'package:flutterapp/get_display_media.dart';
import 'dart:core';
import 'package:flutterapp/get_user_media.dart';
import 'package:flutterapp/p2p/p2p_login.dart';
import 'package:flutterapp/peer_connection.dart';
import 'package:flutterapp/p2p/p2p_client.dart';
//入口程序
void main() => runApp(MyApp());

//主组件
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Material风格应用
    return MaterialApp(
      title: 'WebRTC示例',
      //主页面
      home: MySamples(),
    );
  }
}

//示例列表页面
class MySamples extends StatefulWidget {
  @override
  _MySamplesState createState() => _MySamplesState();
}

class _MySamplesState extends State<MySamples> {
  @override
  Widget build(BuildContext context) {
    //页面脚手架
    return Scaffold(
      //顶部应用栏
        appBar: AppBar(
          //标题
          title: Text('WebRTC示例'),
        ),
        //示例列表
        body: ListView(
          children: <Widget>[
            //列表项
            ListTile(
              //标题
                title: Text('GetUserMedia示例'),
                //点击处理
                onTap: () {
                  //路由跳转
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                        //GetUserMediaSample示例
                        GetUserMediaSample()),
                  );
                }),
            ListTile(
                title: Text('屏幕共享示例'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                            GetDisplayMediaSample()),
                  );
                }),
            ListTile(
                title: Text('控制设备示例'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                            ControlDeviceSample()),
                  );
                }),
            ListTile(
                title: Text('连接建立示例'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => PeerConnectionSample()),
                  );
                }),
            ListTile(
              title: Text('数据通道示例'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => DataChannelSample()));
              },
            ),
            ListTile(
              title: Text('一对一视频通话案例'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => P2PLogin()),
                );
              },
            ),

          ],
        ));
  }
}
