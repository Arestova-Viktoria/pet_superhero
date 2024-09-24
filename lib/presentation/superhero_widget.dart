import 'package:flutter/material.dart';
import 'package:test_superhero/domain/model/superhero.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:test_superhero/presentation/util/util.dart';

class SuperheroWidget extends StatelessWidget {
  final Superhero superhero;
  const SuperheroWidget({
    super.key,
    required this.superhero,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Theme.of(context).cardColor,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 1),
            blurRadius: 8.0,
            spreadRadius: 4.0,
            color: Colors.black.withOpacity(0.1),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('${context.locale.id}: ${superhero.id}'),
          Text(context.locale.name(superhero.name)),
          const SizedBox(height: 10),
          Text(context.locale.appearance),
          const SizedBox(height: 10),
          Text('${context.locale.gender}: ${superhero.appearance.gender}'),
          Text('${context.locale.race}: ${superhero.appearance.race}'),
          Text(
              '${context.locale.height}: ${superhero.appearance.height[1].toString()}'),
          Text(
              '${context.locale.weight}: ${superhero.appearance.weight[1].toString()}'),
          Text('${context.locale.eye_color}: ${superhero.appearance.eyeColor}'),
          Text(
              '${context.locale.hair_color}: ${superhero.appearance.hairColor}'),
          const SizedBox(height: 10),
          Text(context.locale.powerstats),
          const SizedBox(height: 10),
          Text(
              '${context.locale.intelligence}: ${superhero.powerstats.intelligence}'),
          Text('${context.locale.strength}: ${superhero.powerstats.strength}'),
          Text('${context.locale.speed}: ${superhero.powerstats.speed}'),
          Text(
              '${context.locale.durability}: ${superhero.powerstats.durability}'),
          Text('${context.locale.power}: ${superhero.powerstats.power}'),
          Text('${context.locale.combat}: ${superhero.powerstats.combat}'),
        ],
      ),
    );
  }
}
