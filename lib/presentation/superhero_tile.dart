import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:test_superhero/app_router.gr.dart';
import 'package:test_superhero/domain/model/superhero.dart';
import 'package:test_superhero/presentation/util/util.dart';

class SuperheroTile extends StatelessWidget {
  final Superhero superhero;
  const SuperheroTile({super.key, required this.superhero});

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      fontSize: 18,
    );
    return GestureDetector(
      onTap: () {
        context.pushRoute(
          SuperheroDetailsRoute(
            superhero: superhero,
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.fromLTRB(16, 16, 8, 16),
        margin: const EdgeInsets.fromLTRB(16, 16, 16, 0),
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('${context.locale.id}: ${superhero.id}', style: textStyle),
                Text(context.locale.name(superhero.name), style: textStyle),
              ],
            ),
            const SizedBox(
              height: 40,
              width: 40,
              child: Icon(
                Icons.favorite_border,
                color: Colors.red,
                size: 26,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
