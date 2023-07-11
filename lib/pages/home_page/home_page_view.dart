import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rohitashwa_singh_assignment/pages/home_page/home_page_viewModel.dart';
import 'package:rohitashwa_singh_assignment/utils/assetsandconstants.dart';
import 'package:rohitashwa_singh_assignment/utils/color_values.dart';
import 'package:rohitashwa_singh_assignment/utils/design_values.dart';
import 'package:rohitashwa_singh_assignment/widgets/circle_filter_box.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<HomePageViewModel>(context);
    viewModel.initialize();
    return  Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                header(context),
                DesignValues.spacedHeightTwo(context),
                subHeading(viewModel,context),
                DesignValues.spacedHeightTwo(context),
                category(viewModel,context),
                DesignValues.spacedHeightOne(context),
                centerCarousel(viewModel),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget centerCarousel(HomePageViewModel viewModel) {
    return CarouselSlider(
      items: viewModel.centerBoxes.map((Widget container) {
        return Builder(
          builder: (BuildContext context) {
            return container;
          },
        );
      }).toList(),
      options: CarouselOptions(
        height: 350,
        initialPage: 3,
        enlargeCenterPage: true,
        enlargeFactor: 0.3,
        viewportFraction: 0.6,
        enableInfiniteScroll: viewModel.centerBoxes.length != 14 ? false : true,
      ),
    );
  }

  Widget category(HomePageViewModel viewModel,context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Category"),
        SizedBox(height: DesignValues.getHeight(0.2, context)),
        SizedBox(
          height: DesignValues.getHeight(20, context),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              SizedBox(width: DesignValues.getWidth(2, context)),
              GestureDetector(
                onTap: () => viewModel.categoryPets("Dog"),
                child: const CircleFilterBox(
                  icon: AssetsAndConstants.dogIcon,
                  colors: ColorValues.purpleGradient,
                  label: 'Dogs',
                ),
              ),
              GestureDetector(
                onTap: () => viewModel.categoryPets("Cat"),
                child: const CircleFilterBox(
                  icon: AssetsAndConstants.catIcon,
                  colors: ColorValues.pinkGradient,
                  label: 'Cats',
                ),
              ),
              GestureDetector(
                onTap: () => viewModel.categoryPets("Rabbit"),
                child: const CircleFilterBox(
                  icon: AssetsAndConstants.rabbitIcon,
                  colors: ColorValues.blueGradient,
                  label: 'Rabbits',
                ),
              ),
              GestureDetector(
                onTap: () => viewModel.categoryPets("Bird"),
                child: const CircleFilterBox(
                  icon: AssetsAndConstants.birdIcon,
                  colors: ColorValues.greenGradient,
                  label: 'Birds',
                ),
              ),
              GestureDetector(
                onTap: () => viewModel.categoryPets("Others"),
                child: const CircleFilterBox(
                  icon: AssetsAndConstants.othersIcon,
                  colors: ColorValues.orangeGradient,
                  label: 'Others',
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: DesignValues.getHeight(0.5, context)),
      ],
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
            text: 'Hi, ',
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
          TextSpan(
            text: 'Pet Lover',
          ),
        ],
      ),
    );
  }

  Widget subHeading(HomePageViewModel viewModel,context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          width: DesignValues.getWidth(80, context),
          height: DesignValues.getHeight(7, context),
          decoration: BoxDecoration(
            color: ColorValues.greyBgColor,
            borderRadius: BorderRadius.circular(16),
          ),
          child: TextField(
            controller: viewModel.searchField,
            onChanged: viewModel.filterPets,
            decoration: const InputDecoration(
              border: InputBorder.none,
              prefixIcon: Icon(
                Icons.search,
                color: Colors.black,
              ),
              hintText: "Search..",
            ),
          ),
        ),
        SizedBox(
          width: DesignValues.getWidth(2, context),
        ),
        GestureDetector(
          onTap: viewModel.clearAllFilters,
          child: Container(
            width: DesignValues.getWidth(9, context),
            height: DesignValues.getHeight(5, context),
            decoration: BoxDecoration(
              color: ColorValues.whiteColor,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Image.asset(AssetsAndConstants.filterIcon),
          ),
        ),
      ],
    );
  }
}
