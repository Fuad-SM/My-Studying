import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:sanberappflutter/tugas/tugas14/get_detail.dart';
import 'package:sanberappflutter/tugas/tugas14/post_data.dart';

class GetDataScreen extends StatefulWidget {
  static const routeName = '/get_data';
  const GetDataScreen({Key? key}) : super(key: key);
  @override
  _GetDataScreenState createState() => _GetDataScreenState();
}

class _GetDataScreenState extends State<GetDataScreen> {
  final String url = "https://achmadhilmy-sanbercode.my.id/api/v1/news";
  List? data;

  @override
  void initState() {
    _getRefreshData();
    super.initState();
  }

  Future<void> _getRefreshData() async {
    this.getJsonData(context);
  }

  Future<String?> getJsonData(BuildContext context) async {
    var response =
        await http.get(Uri.parse(url), headers: {'Accept': 'application/json'});
    print(response.body);
    setState(() {
      var convertDataToJson = jsonDecode(response.body);
      data = convertDataToJson['data'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Get Data API'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => PostDataApi()));
        },
        child: Icon(Icons.add),
      ),
      body: RefreshIndicator(
        onRefresh: _getRefreshData,
        child: ListView.builder(
            itemCount: data == null ? 0 : data!.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                margin: EdgeInsets.all(5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    GestureDetector(
                      onTap: () {
                        var data1 = data![index]['title'];
                        var data2 = data![index]['value'];
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    GetDetailScreen(value: [data1, data2])));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    data![index]['title']!,
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Divider(
                                    height: 20,
                                    thickness: 1,
                                    endIndent: 25,
                                    indent: 15,
                                  )
                                ],
                              )
                            ]),
                      ),
                    )
                  ],
                ),
              );
            }),
      ),
    );
  }
}
