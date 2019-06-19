import 'package:flutter/material.dart';
import 'package:swiper_demo/utils/flutter_swiper.dart';
import 'package:swiper_demo/utils/src/swiper.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Swiper(
          itemBuilder: (BuildContext context, int index) {
            List<Widget> pageList = new List();
            pageList.add(Text('111'));
            pageList.add(Text('222'));
            pageList.add(Text('333'));
            return pageList[index];
          },
          itemCount: 3,
          pagination: new SwiperPagination(
              builder: DotSwiperPaginationBuilder(
            color: Colors.grey,
            activeColor: Colors.red,
            size: 7.0,
            activeSize: 9.0,
          )),
//          pagination: new SwiperPagination(
//              builder: MyIndSwiperPaginationBuilder(
//                color: Colors.grey,
//                activeColor: Colors.red,
//                size: 7.0,
//                activeSize: 9.0,
//              )),
          scrollDirection: Axis.horizontal,
          autoplay: false,
          onTap: (index) => print('点击了第$index个'),
        ),
      ),
    );
  }
}
