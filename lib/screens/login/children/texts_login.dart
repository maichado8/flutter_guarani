import 'package:flutter/material.dart';
import '../../../themes/app_colors.dart';
import '../../../themes/text_styles.dart';

class TextsLogin extends Padding {
  TextsLogin({Key? key, required Size size})
      : super(
          key: key,
          padding: EdgeInsets.symmetric(vertical: size.height * 0.08),
          child: Center(
            child: Column(
              children: [
                Text.rich(
                  TextSpan(
                    text: 'Que',
                    style: TextStyles.loginTitle(AppColors.blackGrey),
                    children: [
                      TextSpan(
                        text: ' Pokémons',
                        style: TextStyles.loginTitle(AppColors.blue2),
                      ),
                      TextSpan(
                        text: ' Você',
                        style: TextStyles.loginTitle(AppColors.blackGrey),
                      ),
                      TextSpan(
                        text: '\n está procurando',
                        style: TextStyles.loginTitle(AppColors.blackGrey),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  'Descubra todas os pokémons e venha\nconhecer esse mundo tão espetacular',
                  style: TextStyles.loginText,
                ),
              ],
            ),
          ),
        );
}
