import 'package:counter_7/detail_mywatchlist.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/form.dart';
import 'package:counter_7/data.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/drawer.dart';
import 'package:counter_7/models.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:counter_7/models.dart';
import 'dart:developer';



class MyWatchlistPage extends StatefulWidget {
  const MyWatchlistPage({Key? key}) : super(key: key);

  @override
  _MyWatchlistState createState() => _MyWatchlistState();
}

class _MyWatchlistState extends State<MyWatchlistPage> {
  Future<List<Model>> fetchModel() async {
    var url = Uri.parse('https://assignment2pbp.herokuapp.com/mywatchlist/json/');
    var response = await http.get(
      url,
      headers: {
        "Access-Control-Allow-Origin": "*",
        "Content-Type": "application/json",
      },
    );

    // decode the response into the json form
    var data = jsonDecode(utf8.decode(response.bodyBytes));

    // convert the json data into ToDo object
    List<Model> listmywatchlist = [];
    for (var d in data) {
      if (d != null) {
        listmywatchlist.add(Model.fromJson(d));
      }
    }

    return listmywatchlist;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('My Watch List'),
        ),
        drawer: drawer(),
        body: FutureBuilder(
            future: fetchModel(),
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.data == null) {
                return const Center(child: CircularProgressIndicator());
              } else {
                if (!snapshot.hasData) {
                  return Column(
                    children: const [
                      Text(
                        "To do list is empty :(",
                        style: TextStyle(
                            color: Color(0xff59A5D8),
                            fontSize: 20),
                      ),
                      SizedBox(height: 8),
                    ],
                  );
                } else {
                  return ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: (_, index)=> GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => DetailMywatchlist(model:snapshot.data![index])),
                          );
                        },
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                          padding: const EdgeInsets.all(20.0),
                          decoration: BoxDecoration(
                              color:Colors.white,
                              borderRadius: BorderRadius.circular(15.0),
                              boxShadow: const [
                                BoxShadow(
                                    color: Colors.black,
                                    blurRadius: 2.0
                                )
                              ]
                          ),

                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${snapshot.data![index].title}",
                                style: const TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 10),
                              // Text("${snapshot.data![index].completed}"),
                            ],
                          ),
                        )
                      ),
                  );
                }
              }
            }
        )
    );
  }
}