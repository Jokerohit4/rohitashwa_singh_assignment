import 'package:flutter/material.dart';
import 'package:rohitashwa_singh_assignment/widgets/center_box/center_box_viewModel.dart';


class HeartIconWidget extends StatelessWidget {
  const HeartIconWidget({super.key, required this.viewModel,});
  final CenterBoxViewModel viewModel;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: AnimatedBuilder(
        animation: viewModel.controller,
        builder: (BuildContext context, _) {
          return Transform.rotate(
            angle: viewModel.rotationAnimation.value * (3.1415 / 180.0),
            child: IconButton(
              icon: const Icon(Icons.favorite_sharp,),
              color: viewModel.isAdopted ? Colors.red :viewModel.colorAnimation.value,
              onPressed:()=> viewModel.toggleAnimation(),
            ),
          );
        },
      ),
    );
  }
}
