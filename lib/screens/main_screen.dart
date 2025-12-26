import 'package:flutter/material.dart';
import 'package:flutter_workspace/widgets/custom_app_bar.dart';
import 'package:flutter_workspace/widgets/custom_bottom_nav.dart';
import 'package:flutter_workspace/widgets/custom_drawer.dart';
import 'package:flutter_workspace/widgets/custom_fab.dart';
import 'package:flutter_workspace/widgets/main_body.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(),
        body: const MainBody(),
        bottomNavigationBar: CustomBottomNav(),
        floatingActionButton: CustomFab(),
        drawer: CustomDrawer(),

        backgroundColor: Colors.grey[200],
      );
  }
}