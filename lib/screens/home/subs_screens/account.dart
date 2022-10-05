import 'package:flutter/material.dart';
import 'package:flutter_guarani/screens/home/children/profile_picture.dart';
import 'package:flutter_guarani/themes/app_images.dart';
import 'package:flutter_guarani/themes/text_styles.dart';

class Account extends StatelessWidget {
  const Account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width,
      height: size.height,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ProfilePicture(
              image: AppImages.profilePicture,
              width: size.width * 0.5,
            ),
            Text.rich(
              TextSpan(
                text: 'Maicon Machado',
                style: TextStyles.loading,
                children: [
                  TextSpan(
                    text: '\nDev - Mobile Flutter',
                    style: TextStyles.loading,
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
