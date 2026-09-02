import 'package:countdown_timer/features/home/widget/countdown_card.dart';
import 'package:flutter/material.dart';

class CountdownListView extends StatefulWidget {
  const CountdownListView({super.key});

  @override
  State<CountdownListView> createState() => _CountdownListViewState();
}

class _CountdownListViewState extends State<CountdownListView> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          spacing: 20,
          children: [
            CountdownCard(),
            CountdownCard(),
            CountdownCard(),
            CountdownCard(),
          ],
        ),
      ),
    );
  }
}
