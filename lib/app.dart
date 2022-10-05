import 'package:flutter/material.dart';
import 'package:flutter_guarani/providers/pokemons_provider.dart';
import 'package:flutter_guarani/screens/pokemon_detail/pokemon_detail.dart';
import 'package:provider/provider.dart';
import 'screens/home/home.dart';
import 'screens/login/login.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) => ChangeNotifierProvider(
        create: (context) => PokemonsProvider(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Pokémon',
          home: const Login(),
          routes: {
            Home.route: (context) => const Home(),
            PokemonDetail.route: (context) => const PokemonDetail(),
          },
        ),
      ),
      maxTabletWidth: 900,
    );
  }
}
