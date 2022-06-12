import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:letgo/curit/category_cubit.dart';
import 'package:letgo/entiti/category_model.dart';

class CirculList extends StatefulWidget {
  const CirculList({Key? key}) : super(key: key);

  @override
  State<CirculList> createState() => _CirculListState();
}

class _CirculListState extends State<CirculList> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<CategoryCubit, List<Kategori>>(
        builder: (context, kategoriListesi) {
          if (kategoriListesi.isNotEmpty) {
            return ListView.builder(
              padding: EdgeInsets.fromLTRB(4, 20, 4, 20),
              scrollDirection: Axis.horizontal,
              itemCount: kategoriListesi.length,
              itemBuilder: (context, index) {
                var kategori = kategoriListesi[index];
                return Column(children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 10),
                    child: Card(
                        clipBehavior: Clip.antiAlias,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(150),
                        ),
                        child: SizedBox(
                          height: 60,
                          width: 60,
                          child: Ink.image(
                            image: AssetImage(
                                "resimler/circul/${kategori.CategoryImage}"),
                            fit: BoxFit.cover,
                          ),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Text("${kategori.CategoryName}"),
                  ),
                ]);
              },
            );
          } else {
            return const Center(
              child: Text("burasıs mı çalışıyor"),
            );
          }
        },
      ),
    );
  }
}
