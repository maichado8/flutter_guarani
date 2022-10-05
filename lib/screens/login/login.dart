import 'package:flutter/material.dart';
import 'package:flutter_guarani/screens/home/home.dart';

import 'package:flutter_guarani/screens/login/children/texts_login.dart';
import 'package:flutter_guarani/services/routes_services.dart';
import 'package:flutter_guarani/widgets/neon_button.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: size.height * 0.25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextsLogin(size: size),
            NeonButton(
              size: size,
              onTap: () =>
                  RoutesServices.redirectToWithNoReturn(context, Home.route),
              text: 'Começar',
              leadingIcon: Icons.arrow_back_ios_new,
            )
          ],
        ),
      ),
    );
  }
}
