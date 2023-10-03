import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_flora_co/lib.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundAppBarWidget(
      background: background2,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'The value selected on the first step:',
              style: GoogleFonts.nunito(
                  textStyle: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w700)),
            ),
            BlocBuilder<FirstScreenBloc, FirstScreenState>(
              builder: (context, state) {
                String firstItem = '';
                if (state is SelectedItem) {
                  firstItem = state.firstScreenModel.selectedItem;
                }
                return Text(
                  firstItem,
                  style: GoogleFonts.nunito(
                      textStyle: const TextStyle(
                          fontSize: 30, fontWeight: FontWeight.w900)),
                );
              },
            ),
            const SizedBox(height: 40),
            Text(
              'The value selected on the second step:',
              style: GoogleFonts.nunito(
                  textStyle: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w700)),
            ),
            BlocBuilder<SecondScreenBloc, SecondScreenState>(
              builder: (context, state) {
                int secondItem = 0;
                if (state is SelectedSScreenItem) {
                  secondItem = state.secondScreenModel.year;
                }
                return Text(
                  secondItem.toString(),
                  style: GoogleFonts.nunito(
                      textStyle: const TextStyle(
                          fontSize: 30, fontWeight: FontWeight.w900)),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
