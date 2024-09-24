import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:test_superhero/domain/model/powerstats.dart';

@RoutePage()
class PowerstatsPage extends StatelessWidget {
  final Powerstats powerstats;
  const PowerstatsPage({super.key, required this.powerstats});

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      fontSize: 18,
    );
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          const Text('Показатели мощности:', style: textStyle),
          const SizedBox(height: 10),
          Text('Интеллект: ${powerstats.intelligence}', style: textStyle),
          Text('Сила: ${powerstats.strength}', style: textStyle),
          Text('Скорость: ${powerstats.speed}', style: textStyle),
          Text('Выносливость: ${powerstats.durability}', style: textStyle),
          Text('Мощность: ${powerstats.power}', style: textStyle),
          Text('Бой: ${powerstats.combat}', style: textStyle),
        ],
      ),
    );
  }
}
