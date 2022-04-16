import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:admin/constants.dart';
import 'package:admin/screens/dashboard/components/header.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
          padding: EdgeInsets.all(defaultPadding),
          child: Column(
            children: [
              Header()
            ],
          )),
    );
  }
}