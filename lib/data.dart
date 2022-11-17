import 'package:counter_7/main.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/form.dart';
import 'package:counter_7/drawer.dart';

class MyDataPage extends StatefulWidget {
  const MyDataPage({super.key});

  @override
  State<MyDataPage> createState() => _MyDataPageState();
}

class _MyDataPageState extends State<MyDataPage> {
  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = [];
    for( var i = 0; i < Data.counter; i++){
      // widgets.add(Text('${Data.title}'));
      // widgets.add(Text('${Data.amnt}'));
      // widgets.add(Text('${Data.tipe_data}'));
      widgets.add(Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              title: Text('${Data.title[i]}', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35)),
              trailing: Text('${Data.Time[i]}'),
            ),
            ListTile(
              leading: Text('${Data.amnt[i]}\$'),
              trailing: Text('${Data.tipe_data[i]}'),
            ),
          ],
        ),
      ),
      );
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('Budget Data'),
      ),
      drawer: drawer(),
      body: Column(
          children: widgets,
        ),
    );
  }
}
