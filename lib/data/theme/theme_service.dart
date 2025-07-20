import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeState extends Equatable {
  final bool isDark;

  const ThemeState({required this.isDark});

  @override
  List<Object?> get props => [isDark];
}

abstract class ThemeEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class ThemeEventListener extends ThemeEvent {
  final bool isDark;

  ThemeEventListener({required this.isDark});

  @override
  List<Object?> get props => [isDark];
}

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc()
    : super(
        ThemeState(
          isDark:
              WidgetsBinding.instance.platformDispatcher.platformBrightness ==
              Brightness.dark,
        ),
      ) {
    on<ThemeEventListener>((event, emit) {
      emit(ThemeState(isDark: event.isDark));
    });
  }
}

class ThemeService with WidgetsBindingObserver {
  final ThemeBloc themeBloc;
  ThemeService(this.themeBloc) {
    WidgetsBinding.instance.addObserver(this);
    // brightnessUpdate();
  }
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);

    if (state == AppLifecycleState.resumed) {
      brightnessUpdate();
    }
  }

  void brightnessUpdate() {
    final isDark =
        WidgetsBinding.instance.platformDispatcher.platformBrightness ==
        Brightness.dark;
    themeBloc.add(ThemeEventListener(isDark: isDark));
  }
}
