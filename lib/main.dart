import 'package:aulas/AlertDialog/alert_dialog.dart';
import 'package:aulas/BottomSheet/bottom_sheet.dart';
import 'package:aulas/CheckBox_e_outros/checkbox.dart';
import 'package:aulas/SimpleDialog/simple_dialog.dart';
import 'package:aulas/bottomNavigationBar/navigator_bar.dart';
import 'package:aulas/form/form.dart';
import 'package:aulas/navigator/navigator.dart';
import 'package:aulas/showDate_showTime/show_example.dart';
import 'package:aulas/stepper/stepper.dart';
import 'package:aulas/tabBar/tab_bar.dart';
import 'package:aulas/tooltip/tolltip.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Example',
      home: BottomSheetExample(),
    );
  }
}
