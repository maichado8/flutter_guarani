import 'package:flutter/material.dart';
import '../../../../themes/app_colors.dart';

class PokemonImage extends StatelessWidget {
  final Size size;
  final String image;

  const PokemonImage({
    Key? key,
    required this.size,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: size.height * 0.5,
      decoration: const BoxDecoration(
        color: AppColors.blue,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(100),
          bottomRight: Radius.circular(100),
        ),
      ),
      child: Image.network(
        image,
        fit: BoxFit.cover,
      ),
    );
  }
}
