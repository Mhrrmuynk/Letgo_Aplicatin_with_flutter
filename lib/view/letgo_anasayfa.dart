import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:letgo/curit/anasayfa_cubit.dart';
import 'package:letgo/curit/category_cubit.dart';
import 'package:letgo/curit/vitirn_cubit.dart';
import 'package:letgo/repo/data.dart';
import 'package:letgo/view/anasayf_urunlar_vidget.dart';
import 'package:letgo/view/kategory_list.dart';
import 'package:letgo/view/vitrin_view.dart';

class LetgoAnasayfa extends StatefulWidget {
  LetgoAnasayfa({Key? key}) : super(key: key);

  @override
  State<LetgoAnasayfa> createState() => _LetgoAnasayfaState();
}

class _LetgoAnasayfaState extends State<LetgoAnasayfa> {
  var ltgdia = LetgoDia();

  var tfSearch = TextEditingController();
  int secilen = 0;

  @override
  void initState() {
    super.initState();
    context.read<AnasayfaCubit>().tumUrunler();
    context.read<VitrinCubit>().VitirnGetir();
    context.read<CategoryCubit>().KategoriGetir();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Card(

          elevation: 0,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(150)),
          color: Colors.greenAccent,
          child: SizedBox(
            height: 500,
            width: 500,
            child: Stack(
              children: const [
                Positioned(
                  child: Text(
                    "M",
                    style: TextStyle(fontSize: 32, color: Colors.white),
                  ),
                  top: 5,
                  right: 10,
                ),
              ],
            ),
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(left: 8.0),

          child: Card(
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10),),
            color: Color(0xF5F5F5FF),
            child: SizedBox(
              height: 40,
              child: Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 8.0,right: 8),
                      child: Icon(
                        Icons.search,
                        color: Colors.black54,
                        size: 32,
                      ),
                    ),
                    Text(
                      "Ara",
                      style: TextStyle(color: Colors.black54, fontSize: 20),
                    ),
                  ]),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: TextButton(
                onPressed: () {},
                child: const Text(
                  "Filtrele",
                  style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                )),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const CirculList(),
            ListTile(
              leading: const Text(
                "Vitrin ilanları",
                style: TextStyle(fontSize: 20),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text("Hepsini gör",
                      style: TextStyle(color: Colors.red, fontSize: 18,fontWeight: FontWeight.bold)),
                  Icon(
                    Icons.keyboard_arrow_right_outlined,
                    color: Colors.red,
                    size: 32,
                  )
                ],
              ),
            ),
            AnasayfaVitrin(),
            ListTile(
              leading: const Text(
                " En çok beğenilenler",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text("Düzelt",
                      style: TextStyle(color: Colors.red, fontSize: 18,fontWeight: FontWeight.bold)),
                  Icon(
                    Icons.keyboard_arrow_right_outlined,
                    color: Colors.red,
                    size: 32,
                  )
                ],
              ),
            ),
            const AnasayfaUrunlerVidget(),
          ],
        ),
      ),
      floatingActionButton: SizedBox(
          height: MediaQuery.of(context).size.width * 0.15,
          width: MediaQuery.of(context).size.width * 0.15,
          child: FloatingActionButton.extended(
            label: Column(
              children: [Icon(Icons.camera_alt), Text("Sat")],
            ),
            //foregroundColor: Colors.black,
            onPressed: () {},
            backgroundColor: Colors.red,

            // shape: const
          )),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      bottomNavigationBar: BottomNavigationBar(
        elevation: 20,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_filled), label: "Ana Sayfa"),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: "Bildirimler"),
          BottomNavigationBarItem(
              icon: Icon(Icons.sms_outlined), label: "Sohbet"),
          BottomNavigationBarItem(icon: Icon(Icons.badge), label: "İlanlar"),
        ],
        currentIndex: secilen,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey[500],
        onTap: (index) {
          setState(() {
            secilen = index;
          });
        },
      ),
    );
  }
}
