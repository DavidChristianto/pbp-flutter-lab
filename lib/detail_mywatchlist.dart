import 'package:counter_7/mywatchlist.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/form.dart';
import 'package:counter_7/data.dart';
import 'package:counter_7/models.dart';
import 'package:counter_7/drawer.dart';

class DetailMywatchlist extends StatelessWidget {
  const DetailMywatchlist({super.key, required this.model});

  final Model model;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail'),
      ),
      drawer: drawer(),
      body: Column(
        children: [
          Align(
            alignment: Alignment.center, child: Text('${model.title}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35)),
          ),
          ListTile(
            leading: Text('Release Date :', style: TextStyle(fontWeight: FontWeight.bold)),
            trailing: Text(''),
            title: Text("${model.release_date_of_the_film}"),
          ),
          ListTile(
            leading: Text('Rating :', style: TextStyle(fontWeight: FontWeight.bold)),
            trailing: Text(''),
            title: Text("${model.rating_film}"),
          ),
          ListTile(
            leading: Text('Status :', style: TextStyle(fontWeight: FontWeight.bold)),
            trailing: Text(''),
            title: Text("${model.status}"),
          ),
          ListTile(
            leading: Text('Review :', style: TextStyle(fontWeight: FontWeight.bold)),
            trailing: Text(''),
            title: Text("${model.reviews}"),
          ),
          Expanded(
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: MaterialButton(
                color: Colors.blue,
                textColor: Colors.white,
                minWidth: double.infinity,
                onPressed: () => {Navigator.pop(context)},
                child: Text('Back'),
              ),
            ),
          ),

        ],
      ),
    );
  }
}