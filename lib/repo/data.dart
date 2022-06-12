import 'package:letgo/entiti/category_model.dart';
import 'package:letgo/entiti/model.dart';
import 'package:letgo/entiti/vitrin.dart';

class LetgoDia {
  Future<List<Vitrin>> VitrinGetir() async {
    var vitrinList = <Vitrin>[];
    var f1 = Vitrin(vitrinId: 1, vitrinName: "Araba", vitirnImage: "cars.png");
    var f2 = Vitrin(
        vitrinId: 1, vitrinName: "Elektronik", vitirnImage: "phones.png");
    var f3 = Vitrin(
        vitrinId: 1, vitrinName: "Ev Eşyası", vitirnImage: "bicycles.png");
    var f4 = Vitrin(vitrinId: 1, vitrinName: "Müzik", vitirnImage: "laptops.png");


    vitrinList.add(f1);
    vitrinList.add(f2);
    vitrinList.add(f3);
    vitrinList.add(f4);


    return vitrinList;
  }

  Future<List<Urunler>> UrunlerGetir() async {
    var UrunlerListesi = <Urunler>[];
    var f1 = Urunler(id: 1, Uadi: "urun1", Uressimdres: "urun1.png");
    var f2 = Urunler(id: 2, Uadi: "urun2", Uressimdres: "urun2.png");
    var f3 = Urunler(id: 3, Uadi: "urun3", Uressimdres: "urun3.png");
    var f4 =
        Urunler(id: 4, Uadi: "urun4", Uressimdres: "urun4.png");

    UrunlerListesi.add(f1);
    UrunlerListesi.add(f2);
    UrunlerListesi.add(f3);
    UrunlerListesi.add(f4);


    return UrunlerListesi;
  }

  Future<List<Kategori>> KategoriGEtir() async {
    var kategoriListe = <Kategori>[];
    var f1 = Kategori(
        categoryId: 1, CategoryName: "Araba", CategoryImage: "Araba.png");
    var f2 = Kategori(
        categoryId: 1,
        CategoryName: "Elektronik",
        CategoryImage: "telefon.png");
    var f3 = Kategori(
        categoryId: 1, CategoryName: "Ev Eşyası", CategoryImage: "Evesyasi.png");
    var f4 = Kategori(
        categoryId: 1, CategoryName: "Müzik", CategoryImage: "Müzik.png");
    var f5 = Kategori(
        categoryId: 1, CategoryName: "Spor", CategoryImage: "spor.png");

    kategoriListe.add(f1);
    kategoriListe.add(f2);
    kategoriListe.add(f3);
    kategoriListe.add(f4);
    kategoriListe.add(f5);

    return kategoriListe;
  }
}
