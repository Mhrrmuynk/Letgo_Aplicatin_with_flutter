import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:letgo/curit/vitirn_cubit.dart';
import 'package:letgo/entiti/vitrin.dart';

class AnasayfaVitrin extends StatelessWidget {
  AnasayfaVitrin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<VitrinCubit, List<Vitrin>>(
        builder: (context, vitrinListesi) {
          if (vitrinListesi.isNotEmpty) {
            return ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: vitrinListesi.length,
              itemBuilder: (context, index) {
                var Virin = vitrinListesi[index];
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Card(
                        clipBehavior: Clip.antiAlias,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: SizedBox(
                          height: 130,
                          width: 130,
                          child: Stack(
                            children: [
                              Ink.image(
                                image:
                                    AssetImage("resimler/vitrin/${Virin.vitirnImage}"),
                                fit: BoxFit.fill,
                                height: 150,
                              ),
                              const Positioned(
                                bottom: 10,
                                right: 10,
                                child: Icon(Icons.favorite_rounded,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
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
