import 'package:counter_mahmout_teem/feature/counter/presntation/manger/cubit/counter_cubit.dart';
import 'package:counter_mahmout_teem/feature/counter/presntation/manger/cubit/counter_state.dart';
import 'package:counter_mahmout_teem/feature/counter/presntation/pages/counter_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/bloc/bloc_opserver/my_bloc_opserver.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  CounterCubit();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (BuildContext context) => CounterCubit()),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: CounterPage(),
      ),
    );
  }
}
