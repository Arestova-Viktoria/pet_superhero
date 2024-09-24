import 'package:auto_route/auto_route.dart';

import 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: SuperheroesRoute.page,
          initial: true,
        ),
        CustomRoute(
          page: HelaRoute.page,
        ),
        CustomRoute(
          page: SuperheroDetailsRoute.page,
          transitionsBuilder: TransitionsBuilders.slideLeftWithFade,
          children: [
            AdaptiveRoute(
              page: AppearanceRoute.page,
            ),
            AdaptiveRoute(
              page: BasicInfoRoute.page,
            ),
            AdaptiveRoute(
              page: PowerstatsRoute.page,
            ),
          ],
        ),
        CustomRoute(
          page: SuperheroDetailsRoute.page,
          children: [
            AdaptiveRoute(
              page: BasicInfoRoute.page,
            ),
            AdaptiveRoute(
              page: AppearanceRoute.page,
            ),
            AdaptiveRoute(
              page: PowerstatsRoute.page,
            )
          ],
        )
      ];
}
