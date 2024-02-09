import 'package:counter/counter_provider.dart';
import 'package:counter/cubit_counter/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import 'home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (context) => CounterCubit(),
    // provider
      // MultiProvider(providers: [
      //  // one provider class
      // // ChangeNotifierProvider(
      // // create: (_)=> CounterProvider(),
      // // child:
      // ChangeNotifierProvider(create: (_)=>CounterProvider()),
      // ChangeNotifierProvider(create: (_)=>CounterProvider()),
      // ],
     child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(

          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home:  MyHome(),
      ),
    );
  }
}
