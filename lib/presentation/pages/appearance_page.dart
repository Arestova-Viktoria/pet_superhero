import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:test_superhero/domain/model/appearance.dart';
import 'package:test_superhero/presentation/util/util.dart';

@RoutePage()
class AppearancePage extends StatelessWidget {
  final Appearance appearance;

  const AppearancePage({
    super.key,
    required this.appearance,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Text(context.locale.appearance),
          const SizedBox(height: 10),
          Text('${context.locale.gender}: ${appearance.gender}'),
          Text('${context.locale.race}: ${appearance.race}'),
          Text('${context.locale.height}: ${appearance.height[1].toString()}'),
          Text('${context.locale.weight}: ${appearance.weight[1].toString()}'),
          Text('${context.locale.eye_color}: ${appearance.eyeColor}'),
          Text('${context.locale.hair_color}: ${appearance.hairColor}'),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
