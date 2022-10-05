import 'package:flutter/material.dart';
import 'package:flutter_guarani/screens/home/home_controller.dart';
import '../../../../themes/text_styles.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DrawerHome extends StatelessWidget {
  final Size size;
  final HomeController controller;
  const DrawerHome({
    Key? key,
    required this.size,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: size.height * 0.9),
            child: InkWell(
                onTap: () => controller.logout(context),
                child: SizedBox(
                  width: size.width * 0.36,
                  child: Row(
                    children: [
                      Icon(Icons.logout,
                          size: 25.sp,
                          color: Color.fromARGB(207, 20, 144, 144)),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Sair',
                        style: TextStyles.loading,
                      )
                    ],
                  ),
                )),
          )
        ],
      ),
    );
  }
}
