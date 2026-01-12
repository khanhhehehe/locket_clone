import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:locket_clone/common/configs/locators.dart';
import 'package:locket_clone/common/configs/router.dart';
import 'package:locket_clone/presentation/bloc/language/language_cubit.dart';
import 'package:locket_clone/presentation/bloc/language/language_state.dart';
import 'package:locket_clone/presentation/bloc/main_bloc.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: MainBloc.allBlocs(),
      child: BlocBuilder<LanguageCubit, LanguageState>(
        builder: (context, state) {
          return MaterialApp.router(
            routerConfig: getIt<AppRouters>().goRouter,
            themeMode: ThemeMode.light,
            supportedLocales: const [
              Locale('vi'), // vn
              Locale('en'), // us
            ],
          );
        },
      ),
    );
  }
}
