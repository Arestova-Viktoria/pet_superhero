import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_superhero/domain/bloc/hela_cubit.dart';
import 'package:test_superhero/domain/bloc/locale_cubit.dart';
import 'package:test_superhero/gen/assets.gen.dart';
import 'package:test_superhero/injection.dart';
import 'package:test_superhero/presentation/flash_start_button.dart';
import 'package:test_superhero/presentation/superhero_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

@RoutePage()
class HelaScreen extends StatefulWidget {
  const HelaScreen({super.key});

  @override
  State<HelaScreen> createState() => _HelaScreenState();
}

class _HelaScreenState extends State<HelaScreen> {
  final HelaCubit _helaCubit = getIt.get<HelaCubit>();

  @override
  void initState() {
    super.initState();
    _helaCubit.getHelaInfo();
  }

  @override
  void dispose() {
    _helaCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.hela_screen_title),
        actions: [
          IconButton(
            onPressed: context.read<LocaleCubit>().nextLocale,
            icon: const Icon(Icons.language),
          ),
        ],
      ),
      body: BlocBuilder<HelaCubit, HelaCubitState>(
        bloc: _helaCubit,
        builder: (context, state) {
          return Container(
            child: state.when(
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (error) => Text(error),
              ready: (superhero) => SingleChildScrollView(
                child: Column(
                  children: [
                    Image.asset(
                      Assets.images.hela2.path,
                    ),
                    SuperheroWidget(superhero: superhero),
                    const FlashStartButton(),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
