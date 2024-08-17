import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wether1/models/m1.dart';

class Wprovider extends ChangeNotifier {
  m1? _f;
  set f(m1? fn) {
    _f = fn;
    notifyListeners();
  }

  m1? get f => _f;
}
