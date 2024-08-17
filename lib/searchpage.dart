import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:wether1/bloc/cubitb.dart';
import 'package:wether1/models/m1.dart';
import 'package:wether1/models/m2.dart';
import 'package:wether1/services/se.dart';

class sepage extends StatefulWidget {
  sepage({this.set});
  VoidCallback? set;
  @override
  State<sepage> createState() => _sepageState();
}

class _sepageState extends State<sepage> {
  String? value;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search a city"),
      ),
      body: Center(
          child: TextField(
        onSubmitted: (data) async {
          value = data;
          BlocProvider.of<whcubit>(context).getwea(c: value!);
          Navigator.of(context).pop();
        },
        decoration: InputDecoration(
            label: Text(style: TextStyle(fontSize: 13.4), "anas"),
            contentPadding: EdgeInsets.all(33),
            fillColor: Colors.green,
            suffixIcon: Icon(Icons.search),
            border: OutlineInputBorder(),
            hintText: "Enter search"),
      )),
    );
  }
}
