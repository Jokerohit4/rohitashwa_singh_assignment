import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:rohitashwa_singh_assignment/pages/history_page/history_page_view.dart';
import 'package:rohitashwa_singh_assignment/pages/history_page/history_page_viewModel.dart';
import 'package:rohitashwa_singh_assignment/pages/home_page/home_page_view.dart';
import 'package:rohitashwa_singh_assignment/pages/home_page/home_page_viewModel.dart';
import 'package:rohitashwa_singh_assignment/pages/tabs/tab_view.dart';
import 'package:rohitashwa_singh_assignment/pages/tabs/tab_viewModel.dart';

void main() {
  testWidgets('TabView widget test', (WidgetTester tester) async {
    // Create a mock TabViewModel
    final tabViewModel = TabViewModel();

    // Wrap TabView with Provider and provide the mock TabViewModel
    await tester.pumpWidget(
      MultiProvider(
        providers: [
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
          home: ChangeNotifierProvider<TabViewModel>.value(
            value: tabViewModel,
            child: const TabView(),
          ),
        ),
      ),
    );

    // Verify the initial state of TabView
    expect(find.byType(HomePageView), findsOneWidget);
    expect(find.byType(HistoryPageView), findsNothing);

    // Tap on the second item in the BottomNavigationBar
    await tester.tap(find.byIcon(Icons.pets));
    await tester.pump();

    // Verify the updated state of TabView
    expect(find.byType(HomePageView), findsNothing);
    expect(find.byType(HistoryPageView), findsOneWidget);
  });
}
