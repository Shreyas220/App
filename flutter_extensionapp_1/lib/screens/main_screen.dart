import 'package:flutter/material.dart';
import 'package:flutter_extensionapp_1/screens/Dashbaord/dashboard_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'component/sideMenu.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(child: SideMenu()),
            Expanded(
              flex: 5,
              child: Dashboard(),
            )
          ],
        ),
      ),
    );
  }
}
