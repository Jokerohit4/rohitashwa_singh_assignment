import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rohitashwa_singh_assignment/pages/details_screen/details_screen_viewModel.dart';
import 'package:rohitashwa_singh_assignment/pages/history_page/history_page_viewModel.dart';
import 'package:rohitashwa_singh_assignment/pages/tabs/tab_view.dart';
import 'package:rohitashwa_singh_assignment/pages/tabs/tab_viewModel.dart';
import 'package:rohitashwa_singh_assignment/utils/storage/storage.dart';
import 'package:rohitashwa_singh_assignment/utils/themes.dart';
import 'package:rohitashwa_singh_assignment/widgets/alert_box/alert_box_viewModel.dart';

import 'pages/home_page/home_page_viewModel.dart';

final storage = LocalStorage();

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  ///to delete all local data
  storage.allClear();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<DetailsScreenViewModel>(
          create: (_) => DetailsScreenViewModel(),
        ),
        ChangeNotifierProvider<AlertBoxViewModel>(
          create: (_) => AlertBoxViewModel(),
        ),
        ChangeNotifierProvider<HistoryPageViewModel>(
          create: (_) => HistoryPageViewModel(),
        ),
        ChangeNotifierProvider(
          create: (context) => TabViewModel(),
        ),
        ChangeNotifierProvider(
          create: (context) => HomePageViewModel(),
        ),
      ],
      child: MaterialApp(
        title: "Rohitashwa's Assignment",
        theme: AppThemes.lightTheme,
        // Set the light theme
        darkTheme: AppThemes.darkTheme,
        // Set the dark theme
        themeMode: ThemeMode.system,
        home: ChangeNotifierProvider(
          create: (context) => HomePageViewModel(),
          child: const TabView(),
        ),
      ),
    );
  }
}
