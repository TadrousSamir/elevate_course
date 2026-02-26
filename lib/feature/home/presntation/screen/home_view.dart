import 'package:elevate_course/config/di/di.dart';
import 'package:elevate_course/feature/home/presntation/view_model/home_view_model.dart';
import 'package:flutter/material.dart';

import '../../data/api/api_client.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  HomeViewModel viewModel = getIt.get<HomeViewModel>();
  @override
  Widget build(BuildContext context) {
    viewModel.getProduct();
    return const Placeholder();
  }
}
