part of '00_counter_floating_action_button.dart';

class CounterBody extends StatelessWidget {
  const CounterBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterCubit, CounterState>(
      buildWhen: (c, p) => c.index != p.index,

      ///
      builder: (context, state) {
        ///
        return Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text("You well be success when you like your jop"),
              Text(
                "\n${state.index.toString()}",
                style: const TextStyle(fontSize: 40),
              ),
            ],
          ),
        );
      },
    );
  }
}
