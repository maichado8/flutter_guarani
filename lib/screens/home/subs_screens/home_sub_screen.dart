import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:flutter_guarani/screens/home/home_controller.dart';
import '../../../themes/app_colors.dart';
import '../../../themes/text_styles.dart';
import '../../../widgets/pokemon_grid/pokemon_grid.dart';

class HomeSubScreen extends StatelessWidget {
  const HomeSubScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final controller = HomeController(context);

    return FutureBuilder(
      future: controller.loadPokemons(),
      builder: (context, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.none:
            return const Text('error');
          case ConnectionState.waiting:
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Carregando...',
                  style: TextStyles.loading,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Center(
                  child: SizedBox(
                    width: 80,
                    child: LoadingIndicator(
                      indicatorType: Indicator.ballBeat,
                      colors: [AppColors.blue2],
                      strokeWidth: 5,
                    ),
                  ),
                )
              ],
            );
          case ConnectionState.active:
            return const Text('active');
          case ConnectionState.done:
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 10),
                    child: Text(
                      'Pokémons mais procurados...',
                      style: TextStyles.type,
                      textAlign: TextAlign.start,
                    ),
                  ),
                  PokemonGrid(size: size),
                ],
              ),
            );
        }
      },
    );
  }
}
