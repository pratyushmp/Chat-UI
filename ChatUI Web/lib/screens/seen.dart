import 'package:flutter/material.dart';

class Seen extends StatefulWidget {
  @override
  _SeenState createState() => _SeenState();
}

class _SeenState extends State<Seen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color:Colors.grey)
      ),
      child: Center(
        child: Text("Seen"),
      ),
    );
  }
}
