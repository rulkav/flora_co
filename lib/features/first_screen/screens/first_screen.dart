import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_flora_co/features/first_screen/bloc/first_screen_bloc.dart';

import 'package:test_flora_co/lib.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const header1 = 'Track my period';
    const header2 = 'Get pregnant';
    return BackgroundAppBarWidget(
      background: background1,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 34.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BigButton(
              header: header1,
              bodyText: 'contraception and wellbeing',
              onTap: () {
                context.read<FirstScreenBloc>().add(SelectFirstScreenItem(
                    firstScreenModel: FirstScreenModel(selectedItem: header1)));
                context.read<RouteBloc>().add(GoToSecondScreen());
              },
            ),
            BigButton(
              header: header2,
              bodyText: 'learn about reproductive health',
              onTap: () {
                context.read<FirstScreenBloc>().add(SelectFirstScreenItem(
                    firstScreenModel: FirstScreenModel(selectedItem: header2)));
                context.read<RouteBloc>().add(GoToSecondScreen());
              },
            ),
          ],
        ),
      ),
    );
  }
}
