import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:test_superhero/app_router.gr.dart';
import 'package:test_superhero/domain/model/superhero.dart';

@RoutePage()
class SuperheroDetailsScreen extends StatelessWidget {
  final Superhero superhero;
  SuperheroDetailsScreen({super.key, required this.superhero});

  late final List<(PageRouteInfo, IconData)> _routesInfo = [
    (
      BasicInfoRoute(
        number: superhero.id,
        name: superhero.name,
        image: superhero.images.lg,
      ),
      Icons.access_time_sharp
    ),
    (
      AppearanceRoute(appearance: superhero.appearance),
      Icons.accessibility_sharp,
    ),
    (
      PowerstatsRoute(powerstats: superhero.powerstats),
      Icons.accessible,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      appBarBuilder: (context, tabsRouter) => AppBar(
        title: Text(superhero.name),
      ),
      routes: _routesInfo.map((e) => e.$1).toList(),
      bottomNavigationBuilder: (context, tabsRouter) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            for (int i = 0; i < 3; i++)
              Flexible(
                fit: FlexFit.tight,
                child: InkWell(
                  onTap: () => tabsRouter.setActiveIndex(i),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 16,
                    ),
                    child: Icon(
                      _routesInfo[i].$2,
                      color: tabsRouter.activeIndex == i ? Colors.pink : null,
                    ),
                  ),
                ),
              )
          ],
        );
      },
    );
  }
}
