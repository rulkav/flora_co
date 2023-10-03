import 'package:flutter/material.dart';

class BackgroundAppBarWidget extends StatelessWidget {
  final bool hideBackButton;
  final Function()? onAppBarBackTap;
  final String? appBarTitle;
  final String? background;

  const BackgroundAppBarWidget({
    Key? key,
    this.hideBackButton = false,
    this.onAppBarBackTap,
    this.appBarTitle,
    this.background,
    required this.child,
  }) : super(key: key);

  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        alignment: Alignment.center,
        children: [
          if (background != null)
            Image.asset(
              background!,
              fit: BoxFit.fill,
              width: double.infinity,
              height: double.infinity,
            ),
          SizedBox(
            height: double.infinity,
            child: Scaffold(
              extendBodyBehindAppBar: true,
              backgroundColor: Colors.transparent,
              body: WillPopScope(
                onWillPop: () async {
                  return false;
                },
                child: SizedBox(
                  height: MediaQuery.of(context).size.height - 40,
                  child: child,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
