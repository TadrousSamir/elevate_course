import 'package:flutter/material.dart';
import 'config/di/di.dart';
import 'feature/home/presntation/screen/home_view.dart';

void main() {
  configureDependencies();

  runApp(MaterialApp(home: HomeView(),));
}


