import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:letgo/curit/anasayfa_cubit.dart';
import 'package:letgo/entiti/model.dart';
class AnasayfaUrunlerVidget extends StatelessWidget {
  const AnasayfaUrunlerVidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<AnasayfaCubit, List<Urunler>>(
        builder: (context, urunlerListesi) {
          if (urunlerListesi.isNotEmpty) {
            return GridView.builder(
              gridDelegate:
              const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, childAspectRatio: 1.1 / 1),
              itemCount: urunlerListesi.length,
              itemBuilder: (context, index) {
                var kisi = urunlerListesi[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Stack(
                      children: [
                        Ink.image(image: AssetImage("resimler/urunler/${kisi.Uressimdres}"),fit: BoxFit.fill,height:170,),

                       const  Positioned(
                          bottom: 10,
                          right: 10,
                          child:  Icon(Icons.favorite_rounded,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                );
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
