import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:rohitashwa_singh_assignment/data/pet_data.dart';
import 'package:rohitashwa_singh_assignment/pages/history_page/history_page_viewModel.dart';
import 'package:rohitashwa_singh_assignment/utils/design_values.dart';



class HistoryPageView extends StatelessWidget {
  const HistoryPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  HistoryPageViewModel viewModel = Provider.of<HistoryPageViewModel>(context);
  viewModel.initialize();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0,vertical: DesignValues.getHeight(2, context)),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                header(context),
                SizedBox(height: DesignValues.getHeight(5, context),),
                Column(
                  children: viewModel.historyTile,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget header(context) {
    return RichText(
      text: TextSpan(
        style: Theme.of(context)
            .textTheme
            .titleLarge!
            .copyWith(letterSpacing: 3),
        children: const <TextSpan>[
          TextSpan(
            text: '',
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
          TextSpan(
            text: 'Your Adopted Buddies',
          ),
        ],
      ),
    );
  }
}
