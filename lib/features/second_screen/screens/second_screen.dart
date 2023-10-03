import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_flora_co/lib.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    const yearModificator = 1980;
    return BackgroundAppBarWidget(
      background: background2,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 191),
            child: Text('Log in your date of birth',
                style: GoogleFonts.nunito(
                    textStyle: const TextStyle(
                        fontWeight: FontWeight.w700, fontSize: 25))),
          ),
          Expanded(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 67,
                  width: MediaQuery.of(context).size.width - 62,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xFFF6F6F6)),
                ),
                ListWheelScrollView(
                  physics: const FixedExtentScrollPhysics(),
                  itemExtent: 60,
                  diameterRatio: 25,
                  perspective: 0.003,
                  useMagnifier: true,
                  onSelectedItemChanged: (int index) {
                    setState(
                      () => selectedIndex = index,
                    );
                  },
                  children: List<Widget>.generate(35, (i) {
                    double fontSize = 0;
                    Color textColor = Colors.transparent;

                    if (i == selectedIndex) {
                      fontSize = 40;
                      textColor = Colors.black;
                    } else if (i == selectedIndex + 1 ||
                        i == selectedIndex - 1) {
                      fontSize = 40;
                      textColor = const Color(0xFFCACACA);
                    } else if (i == selectedIndex + 2 ||
                        i == selectedIndex - 2) {
                      fontSize = 34;
                      textColor = const Color(0xFFF0EFEF);
                    }
                    return Container(
                      height: 60,
                      margin: const EdgeInsets.symmetric(horizontal: 31),
                      child: Center(
                        child: Text(
                          (i + yearModificator).toString(),
                          style: GoogleFonts.nunito(
                            textStyle: TextStyle(
                                fontSize: fontSize,
                                color: textColor,
                                fontWeight: FontWeight.w900),
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 61),
            child: GestureDetector(
              onTap: () {
                context.read<SecondScreenBloc>().add(SelectSecondScreenItem(
                    secondScreenModel: SecondScreenModel(
                        year: selectedIndex + yearModificator)));
                context.read<RouteBloc>().add(GoToThirdScreen());
              },
              child: Image.asset(nextButton),
            ),
          ),
        ],
      ),
    );
  }
}
