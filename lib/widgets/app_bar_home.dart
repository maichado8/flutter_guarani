import 'package:flutter/material.dart';
import '../themes/app_colors.dart';

class AppBarHome extends AppBar {
  AppBarHome({
    Key? key,
    Widget? leading,
  }) : super(
          key: key,
          iconTheme: const IconThemeData(color: Colors.white),
          leading: leading,
          elevation: 0,
          backgroundColor: AppColors.blue2,
        );
}
