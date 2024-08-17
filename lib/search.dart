import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:wether1/bloc/cubitb.dart';
import 'package:wether1/bloc/statebloc.dart';
import 'package:wether1/models/m1.dart';
import 'package:wether1/models/m2.dart';
import 'package:wether1/search.dart';
import 'package:wether1/searchpage.dart';

import 'search.dart';

class search extends StatefulWidget {
  search({super.key});
  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
  void set() {
    setState(() {});
  }

  late final m1 f;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => sepage(
                          set: set,
                        )));
              },
              icon: Icon(Icons.search)),
        ],
      ),
      body: BlocBuilder<whcubit, blocs>(builder: (context, state) {
        if (state is whlo) {
          return Center(child: CircularProgressIndicator());
        } else if (state is whsucc) {
          f = BlocProvider.of<whcubit>(context).w!;
          return Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Center(
                    heightFactor: 2,
                    child: Text(
                        style: TextStyle(fontSize: 37), f.address.toString())),
                Center(
                  child: Row(
                    children: [
                      Center(
                        widthFactor: 10,
                        child: Icon(Icons.sunny),
                      ),
                      Text(f.temp.toString()),
                      Center(
                        widthFactor: 4,
                        child: Column(
                          children: [
                            Text(f.dew.toString()),
                            Text("min:20"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Text(style: TextStyle(fontSize: 23), "dta")
              ],
            ),
          );
        } else if (state is whfa) {
          return Center(
            child: Container(
              child: Text(
                  style: TextStyle(fontSize: 23),
                  "tjrf efef fddfrj eferf jfe dfref wdwdedw ewdfewf"),
            ),
          );
        } else
          return Center(
            child: Text("Start"),
          );
      }),
    );

    //   body: Provider.of<Wprovider>(context, listen: true).f == null
    //       ?
    //         )
    //       : Center(
    //           child: Column(
    //             mainAxisSize: MainAxisSize.min,
    //             children: [
    //               Center(
    //                   heightFactor: 2,
    //                   child: Text(style: TextStyle(fontSize: 37), "London")),
    //               Center(
    //                 child: Row(
    //                   children: [
    //                     Center(
    //                       widthFactor: 10,
    //                       child: Icon(Icons.sunny),
    //                     ),
    //                     Text("30"),
    //                     Center(
    //                       widthFactor: 4,
    //                       child: Column(
    //                         children: [
    //                           Text("max:30"),
    //                           Text("min:20"),
    //                         ],
    //                       ),
    //                     ),
    //                   ],
    //                 ),
    //               ),
    //               Text(style: TextStyle(fontSize: 23), "dta")
    //             ],
    //           ),
    //         ),
    // );
  }
}
