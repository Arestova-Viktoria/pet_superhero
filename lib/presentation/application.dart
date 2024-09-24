import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_superhero/app_router.dart';
import 'package:test_superhero/domain/bloc/locale_cubit.dart';
import 'package:test_superhero/domain/bloc/theme_cubit.dart';
import 'package:test_superhero/domain/model/enum/theme_type.dart';
import 'package:test_superhero/injection.dart';
import 'package:test_superhero/presentation/application_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Application extends StatefulWidget {
  const Application({super.key});

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  final _appRouter = AppRouter();

  @override
  void dispose() {
    _appRouter.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt.get<LocaleCubit>(),
        ),
        BlocProvider(
          create: (context) => getIt.get<ThemeCubit>(),
        ),
      ],
      child: BlocBuilder<LocaleCubit, String?>(
        builder: (context, stateLocale) {
          return BlocBuilder<ThemeCubit, ThemeType>(
            bloc: context.read<ThemeCubit>(),
            builder: (context, state) {
              return MaterialApp.router(
                locale: stateLocale != null ? Locale(stateLocale) : null,
                title: 'Hero',
                theme: ApplicationTheme.lightTheme,
                darkTheme: ApplicationTheme.darkTheme,
                themeMode: ApplicationTheme.appThemeMode(state),
                routerConfig: _appRouter.config(),
                localizationsDelegates: AppLocalizations.localizationsDelegates,
                supportedLocales: AppLocalizations.supportedLocales,
              );
            },
          );
        },
      ),
    );
  }
}
