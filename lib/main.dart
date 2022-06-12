import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:letgo/curit/anasayfa_cubit.dart';
import 'package:letgo/curit/category_cubit.dart';
import 'package:letgo/curit/vitirn_cubit.dart';
import 'package:letgo/view/letgo_anasayfa.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const _title = "Letgo";
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AnasayfaCubit()),
        BlocProvider(create: (context) => VitrinCubit()),
        BlocProvider(create: (context)=> CategoryCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: _title,
        theme:  ThemeData(scaffoldBackgroundColor: const Color(0xFFFFFFFF),

        ),
        home: LetgoAnasayfa(),
      ),
    );
  }
}
