import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wether1/bloc/cubitb.dart';
import 'package:wether1/models/m1.dart';
import 'package:wether1/models/m2.dart';
import 'package:wether1/search.dart';
import 'package:provider/provider.dart';
import 'package:wether1/services/se.dart';

void main() {
  runApp(BlocProvider(
    create: (context) {
      return whcubit(wh());
    },
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (BuildContext context) {
          return Wprovider();
        },
        child: MaterialApp(home: search()));
  }
}
