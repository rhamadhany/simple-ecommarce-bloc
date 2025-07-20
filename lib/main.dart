import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:simple_ecommarce_bloc/data/blocs/product_bloc.dart';
import 'package:simple_ecommarce_bloc/data/global/variable.dart';
import 'package:simple_ecommarce_bloc/data/theme/theme_service.dart';
import 'package:simple_ecommarce_bloc/data/views/halaman/admin/product_tab_view.dart';
import 'package:simple_ecommarce_bloc/data/views/halaman/shopping_cart/bloc/shopping_cart_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final storage = await getApplicationDocumentsDirectory();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: HydratedStorageDirectory(storage.path),
  );
  await saveSample();
  runApp(const MyApp());
}

Future<void> saveSample() async {
  final sample = await rootBundle.load('assets/sample.png');
  final bytes = sample.buffer.asUint8List();
  final temp = await getTemporaryDirectory();
  final output = '${temp.path}/sample.png';
  Variable.sampleImage = output;
  await File(output).writeAsBytes(bytes);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ThemeBloc()),
        BlocProvider(create: (context) => ProductBloc()),

        BlocProvider(create: (context) => ShoppingCartBloc()),
      ],
      child: Builder(
        builder: (context) {
          final themeBloc = context.read<ThemeBloc>();
          ThemeService(themeBloc);
          Variable.initialize(context);
          return MaterialApp(home: ProductTabView());
        },
      ),
    );
  }
}
