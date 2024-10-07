import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../BLoC/blocs.dart';
import '../constants/constants.dart';

class NavScreen extends StatelessWidget {
  const NavScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<IndexBloc, int>(
      builder: (context, state) {
        return Scaffold(
          body: IndexedStack(
            index: state,
            children: screens,
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: state,
            onTap: (value) => BlocProvider.of<IndexBloc>(context)
                .add(CurrentIndex(value: value)),
            items: barItems.map(
              (item) {
                return BottomNavigationBarItem(
                  icon: item["icon"],
                  label: item["label"],
                );
              },
            ).toList(),
          ),
        );
      },
    );
  }
}
