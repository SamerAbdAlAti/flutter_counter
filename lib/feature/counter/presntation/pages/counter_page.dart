import 'package:flutter/material.dart';

import '../widgets/00_counter_floating_action_button.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const CounterFloatingActionButton(),
      appBar: counterAppBar(),
      body: const CounterBody(),
    );
  }
}
