import 'package:counter_mahmout_teem/feature/counter/presntation/manger/cubit/counter_cubit.dart';
import 'package:counter_mahmout_teem/feature/counter/presntation/manger/cubit/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part '01_counter_app_bar.dart';

part '02_counter_body.dart';

class CounterFloatingActionButton extends StatelessWidget {
  const CounterFloatingActionButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterCubit, CounterState>(
      builder: (context, state) {
        CounterCubit cubit = CounterCubit.get(context);

        return FloatingActionButton(
          onPressed: () {
            cubit.indexMethod();
          },
          child: const Icon(Icons.add),
        );
      },
    );
  }
}
