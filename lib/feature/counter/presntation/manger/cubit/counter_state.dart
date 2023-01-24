import 'package:equatable/equatable.dart';

class CounterState extends Equatable {
  final int index;

  const CounterState({
    this.index = 0,
  });

  CounterState copyWith({
    int? index,
  }) {
    return CounterState(
      index: index ?? this.index,
    );
  }

  @override
  List<Object> get props => [
        index,
      ];
}

// class CounterInatialState extends CounterState {}
//
// class IndexState extends CounterState {
//   final int index_;
//
//   const IndexState({
//     required this.index_,
//   }) : super(index: index_,);
// }
