import 'package:flutter/material.dart';

//ignore: must_be_immutable
class GetDetailScreen extends StatefulWidget {
  List? value;

  GetDetailScreen({Key? key, required this.value}) : super(key: key);
  @override
  _GetDetailScreenState createState() => _GetDetailScreenState(value);
}

class _GetDetailScreenState extends State<GetDetailScreen> {
  List? value;
  _GetDetailScreenState(this.value);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Detail Screen News',
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              value![0],
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              value![1],
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
            )
          ],
        ),
      ),
    );
  }
}
