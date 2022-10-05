import 'package:flutter/material.dart';
import 'package:flutter_guarani/providers/pokemons_provider.dart';
import 'package:flutter_guarani/widgets/pokemon_item/pokemon_item.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PokemonGrid extends StatelessWidget {
  final Size size;
  const PokemonGrid({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.16.w,
      width: double.infinity,
      child: Consumer<PokemonsProvider>(
        builder: (context, value, child) => GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            childAspectRatio: 2.5,
          ),
          itemBuilder: (context, index) => PokemonItem(
            size: size,
            model: value.pokemons[index],
          ),
          itemCount: value.pokemons.length,
        ),
      ),
    );
  }
}
