import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rohitashwa_singh_assignment/pages/history_page/history_page_view.dart';
import 'package:rohitashwa_singh_assignment/pages/home_page/home_page_view.dart';
import 'package:rohitashwa_singh_assignment/pages/tabs/tab_viewModel.dart';


class TabView extends StatelessWidget {
  const TabView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<TabViewModel>(
        builder: (context, viewModel, _) => _buildTabContent(viewModel.currentIndex),
      ),
      bottomNavigationBar: Consumer<TabViewModel>(
        builder: (context, viewModel, _) => BottomNavigationBar(
          currentIndex: viewModel.currentIndex,
          onTap: (index) => viewModel.setCurrentIndex(index),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.pets),
              label: 'Your Buddies',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTabContent(int currentIndex) {
    switch (currentIndex) {
      case 0:
        return const HomePageView();
      case 1:
        return const HistoryPageView();
      default:
        return Container();
    }
  }
}






