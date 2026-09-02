import 'package:countdown_timer/core/extensions/theme_extension.dart';
import 'package:countdown_timer/features/home/widget/countdown_card.dart';
import 'package:countdown_timer/features/home/widget/countdown_list_view.dart';
import 'package:countdown_timer/features/home/widget/home_app_bar.dart';
import 'package:countdown_timer/features/home/widget/home_empty_state.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.background,
      appBar: HomeAppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: CircleBorder(),
        backgroundColor: context.primary,
        child: Icon(Icons.add, size: 32),
      ),
      body: CountdownListView(),
    );
  }
}
