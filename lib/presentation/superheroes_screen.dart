import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_superhero/app_router.gr.dart';
import 'package:test_superhero/domain/bloc/superheroes_cubit.dart';
import 'package:test_superhero/domain/bloc/theme_cubit.dart';
import 'package:test_superhero/domain/model/enum/theme_type.dart';
import 'package:test_superhero/injection.dart';
import 'package:test_superhero/presentation/superhero_tile.dart';

@RoutePage()
class SuperheroesScreen extends StatefulWidget {
  const SuperheroesScreen({super.key});

  @override
  State<SuperheroesScreen> createState() => _SuperheroesScreenState();
}

class _SuperheroesScreenState extends State<SuperheroesScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt.get<SuperheroesCubit>()..getAllSuperheroesInfo(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Superheroes'),
          actions: [
            IconButton(
              onPressed: () {
                context.read<ThemeCubit>().setThemeMode(ThemeType.light);
              },
              icon: const Icon(Icons.light_mode),
            ),
            IconButton(
              onPressed: () {
                context.read<ThemeCubit>().setThemeMode(ThemeType.dark);
              },
              icon: const Icon(Icons.dark_mode),
            ),
            IconButton(
              onPressed: () {
                context.pushRoute(const HelaRoute());
              },
              icon: const Icon(Icons.heart_broken),
            ),
          ],
        ),
        body: BlocBuilder<SuperheroesCubit, SuperheroesCubitState>(
          builder: (context, state) {
            return Container(
              child: state.when(
                loading: () => const Center(child: CircularProgressIndicator()),
                error: (error) => Text(error),
                ready: (superheroes) => ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: superheroes.length,
                  itemBuilder: (context, index) {
                    return SuperheroTile(superhero: superheroes[index]);
                  },
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
