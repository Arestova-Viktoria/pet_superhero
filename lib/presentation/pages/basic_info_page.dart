import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:test_superhero/domain/model/superhero.dart';

@RoutePage()
class BasicInfoPage extends StatelessWidget {
  final int number;
  final String name;
  final String image;
  const BasicInfoPage({
    super.key,
    required this.number,
    required this.name,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Text('Номер: $number'),
          Text('Имя: $name'),
          const Gap(16),
          ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: CachedNetworkImage(
              imageUrl: image,
            ),
          ),
        ],
      ),
    );
  }
}
