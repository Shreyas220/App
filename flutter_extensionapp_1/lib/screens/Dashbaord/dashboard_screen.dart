import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_extensionapp_1/config/colorPalette.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'component/Header.dart';

class Dashboard extends StatefulWidget {
  Dashboard({Key key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      padding: EdgeInsets.all(defaultPadding),
      child: Column(
        children: [Header()],
      ),
    ));
  }
}
