import 'package:counter_mahmout_teem/feature/counter/presntation/manger/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(const CounterState());

  static CounterCubit get(context) => BlocProvider.of(context);

  Future<void> indexMethod() async {
    emit(state.copyWith(index: state.index + 1));
  }
}
