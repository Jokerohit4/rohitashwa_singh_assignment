import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:provider/provider.dart';
import 'package:rohitashwa_singh_assignment/models/pets.dart';
import 'package:rohitashwa_singh_assignment/utils/assetsandconstants.dart';

import 'package:rohitashwa_singh_assignment/widgets/alert_box/alert_box_viewModel.dart';
import 'package:rohitashwa_singh_assignment/widgets/center_box/center_box.dart';

class AlertBoxView extends StatelessWidget {

  final Pet pet;
  final bool isGrey;

  const AlertBoxView({super.key, required this.pet, required this.isGrey});

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<AlertBoxViewModel>(context, listen: false);
    return GestureDetector(
      onTap: () => viewModel.onTapThanks(context, pet.isAdopted),
      child: isGrey ? alertBox(context)
      : Stack(
        children: [
          alertBox(context),
          Align(
            alignment: Alignment.bottomRight,
            child: RotationTransition(
              turns: const AlwaysStoppedAnimation(0.40),
              // Adjust the rotation angle
              child: SizedBox(
                height: 300,
                child: PhotoView(
                  imageProvider: const AssetImage(
                      AssetsAndConstants.confettiGif),
                  initialScale: PhotoViewComputedScale.contained,
                  minScale: PhotoViewComputedScale.contained,
                  maxScale: PhotoViewComputedScale.covered,
                  backgroundDecoration: const BoxDecoration(
                    color: Colors.transparent,
                  ),
                ),
              ),
            ),
          ),
     Align(
            alignment: Alignment.bottomLeft,
            child: RotationTransition(
              turns: const AlwaysStoppedAnimation(0.65),
              // Adjust the rotation angle
              child: SizedBox(
                height: 300,
                child: PhotoView(
                  imageProvider: const AssetImage('assets/6ob.gif'),
                  initialScale: PhotoViewComputedScale.contained,
                  minScale: PhotoViewComputedScale.contained,
                  maxScale: PhotoViewComputedScale.covered,
                  backgroundDecoration: const BoxDecoration(
                    color: Colors.transparent,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }


  alertBox(context){
    return AlertDialog(
      title: Text(isGrey ? ' ' : 'Congratulations !'),
      titleTextStyle: isGrey ? const TextStyle(fontSize: 0) : Theme
          .of(context)
          .textTheme
          .headlineSmall!.copyWith(fontSize: 22),
      titlePadding: isGrey ? const EdgeInsets.all(0) : const EdgeInsets
          .symmetric(horizontal: 70, vertical: 30),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
              height: 300,
              child: CenterBox(pet: pet, isAlert: true,)),
          const SizedBox(height: 30.0),
          Text(isGrey
              ? 'This pet is already adopted'
              : "You've adopted ${pet.name}."),
        ],
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }


///unused design, saved for future usage
//  Widget actionBar(type,context){
//     return  Container(
//         margin: EdgeInsets.symmetric(horizontal: DesignValues.getWidth(10, context)),
//         padding: const EdgeInsets.symmetric(vertical: 10),
//         alignment: Alignment.center,
//         decoration: BoxDecoration(
//           color: type == "Dog" ? ColorValues.purpleGradient[0] : type == "Cat" ? ColorValues.pinkGradient[0] : type == "Bird" ? ColorValues.greenGradient[0] : type == "Rabbit" ? ColorValues.blueGradient[0] : ColorValues.orangeGradient[0],
//     //  color: Colors.black,
//           borderRadius: BorderRadius.circular(12.0),
//         ),
//         child: const Text('Thanks', style: TextStyle(color: Colors.white,fontSize: 16)),
//       );
//   }
//
// }
//


// actions: [
//   Container(
//     margin: EdgeInsets.symmetric(horizontal: DesignValues.getWidth(10, context)),
//     padding: EdgeInsets.symmetric(vertical: 10),
//     alignment: Alignment.center,
//     decoration: BoxDecoration(
//       color: type == "Dog" ? ColorValues.purpleGradient[0] : type == "Cat" ? ColorValues.pinkGradient[0] : type == "Bird" ? ColorValues.greenGradient[0] : type == "Rabbit" ? ColorValues.blueGradient[0] : ColorValues.orangeGradient[0],
// //  color: Colors.black,
//       borderRadius: BorderRadius.circular(12.0),
//     ),
//     child: const Text('Thanks', style: TextStyle(color: Colors.white,fontSize: 16)),
//   ),
// ],
}