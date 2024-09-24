// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;
import 'package:test_superhero/domain/model/appearance.dart' as _i9;
import 'package:test_superhero/domain/model/powerstats.dart' as _i10;
import 'package:test_superhero/domain/model/superhero.dart' as _i11;
import 'package:test_superhero/presentation/hela_screen.dart' as _i3;
import 'package:test_superhero/presentation/pages/appearance_page.dart' as _i1;
import 'package:test_superhero/presentation/pages/basic_info_page.dart' as _i2;
import 'package:test_superhero/presentation/pages/powerstats_page.dart' as _i4;
import 'package:test_superhero/presentation/superhero_details_screen.dart'
    as _i5;
import 'package:test_superhero/presentation/superheroes_screen.dart' as _i6;

abstract class $AppRouter extends _i7.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    AppearanceRoute.name: (routeData) {
      final args = routeData.argsAs<AppearanceRouteArgs>();
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.AppearancePage(
          key: args.key,
          appearance: args.appearance,
        ),
      );
    },
    BasicInfoRoute.name: (routeData) {
      final args = routeData.argsAs<BasicInfoRouteArgs>();
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.BasicInfoPage(
          key: args.key,
          number: args.number,
          name: args.name,
          image: args.image,
        ),
      );
    },
    HelaRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.HelaScreen(),
      );
    },
    PowerstatsRoute.name: (routeData) {
      final args = routeData.argsAs<PowerstatsRouteArgs>();
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.PowerstatsPage(
          key: args.key,
          powerstats: args.powerstats,
        ),
      );
    },
    SuperheroDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<SuperheroDetailsRouteArgs>();
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.SuperheroDetailsScreen(
          key: args.key,
          superhero: args.superhero,
        ),
      );
    },
    SuperheroesRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.SuperheroesScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.AppearancePage]
class AppearanceRoute extends _i7.PageRouteInfo<AppearanceRouteArgs> {
  AppearanceRoute({
    _i8.Key? key,
    required _i9.Appearance appearance,
    List<_i7.PageRouteInfo>? children,
  }) : super(
          AppearanceRoute.name,
          args: AppearanceRouteArgs(
            key: key,
            appearance: appearance,
          ),
          initialChildren: children,
        );

  static const String name = 'AppearanceRoute';

  static const _i7.PageInfo<AppearanceRouteArgs> page =
      _i7.PageInfo<AppearanceRouteArgs>(name);
}

class AppearanceRouteArgs {
  const AppearanceRouteArgs({
    this.key,
    required this.appearance,
  });

  final _i8.Key? key;

  final _i9.Appearance appearance;

  @override
  String toString() {
    return 'AppearanceRouteArgs{key: $key, appearance: $appearance}';
  }
}

/// generated route for
/// [_i2.BasicInfoPage]
class BasicInfoRoute extends _i7.PageRouteInfo<BasicInfoRouteArgs> {
  BasicInfoRoute({
    _i8.Key? key,
    required int number,
    required String name,
    required String image,
    List<_i7.PageRouteInfo>? children,
  }) : super(
          BasicInfoRoute.name,
          args: BasicInfoRouteArgs(
            key: key,
            number: number,
            name: name,
            image: image,
          ),
          initialChildren: children,
        );

  static const String name = 'BasicInfoRoute';

  static const _i7.PageInfo<BasicInfoRouteArgs> page =
      _i7.PageInfo<BasicInfoRouteArgs>(name);
}

class BasicInfoRouteArgs {
  const BasicInfoRouteArgs({
    this.key,
    required this.number,
    required this.name,
    required this.image,
  });

  final _i8.Key? key;

  final int number;

  final String name;

  final String image;

  @override
  String toString() {
    return 'BasicInfoRouteArgs{key: $key, number: $number, name: $name, image: $image}';
  }
}

/// generated route for
/// [_i3.HelaScreen]
class HelaRoute extends _i7.PageRouteInfo<void> {
  const HelaRoute({List<_i7.PageRouteInfo>? children})
      : super(
          HelaRoute.name,
          initialChildren: children,
        );

  static const String name = 'HelaRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i4.PowerstatsPage]
class PowerstatsRoute extends _i7.PageRouteInfo<PowerstatsRouteArgs> {
  PowerstatsRoute({
    _i8.Key? key,
    required _i10.Powerstats powerstats,
    List<_i7.PageRouteInfo>? children,
  }) : super(
          PowerstatsRoute.name,
          args: PowerstatsRouteArgs(
            key: key,
            powerstats: powerstats,
          ),
          initialChildren: children,
        );

  static const String name = 'PowerstatsRoute';

  static const _i7.PageInfo<PowerstatsRouteArgs> page =
      _i7.PageInfo<PowerstatsRouteArgs>(name);
}

class PowerstatsRouteArgs {
  const PowerstatsRouteArgs({
    this.key,
    required this.powerstats,
  });

  final _i8.Key? key;

  final _i10.Powerstats powerstats;

  @override
  String toString() {
    return 'PowerstatsRouteArgs{key: $key, powerstats: $powerstats}';
  }
}

/// generated route for
/// [_i5.SuperheroDetailsScreen]
class SuperheroDetailsRoute
    extends _i7.PageRouteInfo<SuperheroDetailsRouteArgs> {
  SuperheroDetailsRoute({
    _i8.Key? key,
    required _i11.Superhero superhero,
    List<_i7.PageRouteInfo>? children,
  }) : super(
          SuperheroDetailsRoute.name,
          args: SuperheroDetailsRouteArgs(
            key: key,
            superhero: superhero,
          ),
          initialChildren: children,
        );

  static const String name = 'SuperheroDetailsRoute';

  static const _i7.PageInfo<SuperheroDetailsRouteArgs> page =
      _i7.PageInfo<SuperheroDetailsRouteArgs>(name);
}

class SuperheroDetailsRouteArgs {
  const SuperheroDetailsRouteArgs({
    this.key,
    required this.superhero,
  });

  final _i8.Key? key;

  final _i11.Superhero superhero;

  @override
  String toString() {
    return 'SuperheroDetailsRouteArgs{key: $key, superhero: $superhero}';
  }
}

/// generated route for
/// [_i6.SuperheroesScreen]
class SuperheroesRoute extends _i7.PageRouteInfo<void> {
  const SuperheroesRoute({List<_i7.PageRouteInfo>? children})
      : super(
          SuperheroesRoute.name,
          initialChildren: children,
        );

  static const String name = 'SuperheroesRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}
