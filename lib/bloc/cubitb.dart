import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wether1/bloc/statebloc.dart';
import 'package:wether1/models/m1.dart';
import 'package:wether1/services/se.dart';

class whcubit extends Cubit<blocs> {
  whcubit(this.se) : super(whinit());
  wh se;
  m1? w;
  void getwea({required String c}) async {
    emit(whlo());

    try {
      w = await se.getcetyname(c: c);
      emit(whsucc());
    } on Exception catch (e) {
      emit(whfa());
    }
  }
}
