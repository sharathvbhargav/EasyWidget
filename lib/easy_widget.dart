import 'package:flutter/material.dart';
import 'package:svb_easy_widget/const/orientation.dart';
import 'package:svb_easy_widget/linear_layout.dart';

class Sample extends StatefulWidget {
  const Sample({Key key}) : super(key: key);

  @override
  _SampleState createState() => _SampleState();
}

class _SampleState extends State<Sample> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: LinearLayout(
        width: 100,
        height: 40,
        layoutOrientation: LayoutOrientation.horizontal,
        widgets: [
          Text("Hello"),
          Text("Good")
        ],
      ),
    );
  }
}
