import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:letgo/entiti/model.dart';
import 'package:letgo/repo/data.dart';

class AnasayfaCubit extends Cubit<List<Urunler>> {
  AnasayfaCubit() : super(<Urunler>[]);
  var ltdia = LetgoDia();

  Future<void> tumUrunler() async {
    emit(await ltdia.UrunlerGetir());
  }
}
