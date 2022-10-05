import 'package:flutter/material.dart';
import 'package:flutter_guarani/models/pokemon.dart';
import '../../themes/app_colors.dart';
import '../../themes/text_styles.dart';
import 'pokemon_item_controller.dart';

class PokemonItem extends StatelessWidget {
  final PokemonModel model;
  final Size size;
  const PokemonItem({
    Key? key,
    required this.size,
    required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = PokemonItemController();

    return GestureDetector(
      onTap: () => controller.redirect(context, model.id),
      child: Card(
        child: Container(
          width: size.width * 0.42,
          height: size.height * 0.15,
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Flexible(
                      child: SizedBox(
                        width: size.width * 0.24,
                        child: Text(
                          model.name,
                          softWrap: true,
                          textAlign: TextAlign.center,
                          style: TextStyles.type,
                        ),
                      ),
                    ),
                    Text(
                      '#${model.code}',
                      textAlign: TextAlign.start,
                      style: TextStyles.code,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Image.network(
                  model.imageUrl,
                  fit: BoxFit.cover,
                  width: size.width * 0.40,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
