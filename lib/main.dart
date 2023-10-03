import 'package:flutter/material.dart';
import 'package:test_flora_co/lib.dart';

void main() async {
  runApp(
    const GlobalBlocProvider(
      child: Application(),
    ),
  );
}
