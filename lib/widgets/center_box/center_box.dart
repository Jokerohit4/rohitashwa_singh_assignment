import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rohitashwa_singh_assignment/utils/assetsandconstants.dart';
import 'package:rohitashwa_singh_assignment/utils/color_values.dart';
import 'package:rohitashwa_singh_assignment/models/pets.dart';
import 'package:rohitashwa_singh_assignment/widgets/center_box/center_box_viewModel.dart';
import 'package:rohitashwa_singh_assignment/widgets/heart_icon.dart';






class CenterBox extends StatelessWidget {
  const CenterBox({Key? key, required this.pet, this.isAlert = false, }) : super(key: key);
  final bool isAlert ;
  final Pet pet;
  @override
  Widget build(BuildContext context) {
    String type = pet.type;
    return ChangeNotifierProvider<CenterBoxViewModel>(
      create: (_) => CenterBoxViewModel(pet)..init(),
      child: Consumer<CenterBoxViewModel>(
          builder: (BuildContext context, CenterBoxViewModel viewModel, Widget? child) {
          return GestureDetector(
            onTap: () => viewModel.onPressBox(context),
            child: Hero(
              tag: pet.name,
              child: Container(
                width: 236,
                height: 347,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade600,
                      offset: const Offset(4.0, 4.0),
                      blurRadius: 15.0,
                      spreadRadius: 1.0,
                    ),
                    BoxShadow(
                      color: Theme.of(context).shadowColor,
                      offset: const Offset(-4.0, -4.0),
                      blurRadius: 15.0,
                      spreadRadius: 1.0,
                    ),
                  ],
                  color: viewModel.isAdopted ? Colors.grey : null,
                  gradient: viewModel.isAdopted ? null
                  : LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: type == "Dog" ? ColorValues.purpleGradient : type == "Cat" ? ColorValues.pinkGradient : type == "Bird" ? ColorValues.greenGradient : type == "Rabbit" ? ColorValues.blueGradient : ColorValues.orangeGradient,
                    stops: const [
                      0.1,
                      0.4,
                      0.8,
                      0.9,
                    ],
                  ),
                ),
                child: Stack(
                  children: [
                    viewModel.isAdopted ? const SizedBox() : Image.asset(type == "Dog" ? AssetsAndConstants.purpleBgDecor : type == "Cat" ? AssetsAndConstants.pinkBgDecor : type == "Bird" ? AssetsAndConstants.greenBgDecor : type == "Rabbit" ? AssetsAndConstants.blueBgDecor : AssetsAndConstants.orangeBgDecor,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 20),
                      child: Text(pet.name,style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        fontSize: 26,
                      ),),
                    ),
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: Image.asset(pet.image)),
                   isAlert ? const SizedBox()
                    : Positioned(
                      top: 12,
                      right: 5,
                        child: HeartIconWidget(viewModel: viewModel,)),
                  ],
                ),
              ),
            ),
          );
        }
      ),
    );
  }
}
