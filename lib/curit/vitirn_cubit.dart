import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:letgo/entiti/vitrin.dart';
import 'package:letgo/repo/data.dart';

class VitrinCubit extends Cubit<List<Vitrin>> {
  VitrinCubit() : super(<Vitrin>[]);
  var ctdia = LetgoDia();

  Future<void> VitirnGetir() async {
    emit(await ctdia.VitrinGetir());
  }
}
