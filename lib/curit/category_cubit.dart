import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:letgo/entiti/category_model.dart';
import 'package:letgo/repo/data.dart';

class CategoryCubit extends Cubit<List<Kategori>> {
  CategoryCubit() : super(<Kategori>[]);
  var ktgdio = LetgoDia();

  Future<void> KategoriGetir() async {
    emit(await ktgdio.KategoriGEtir());
  }
}
