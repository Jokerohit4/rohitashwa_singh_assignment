import 'package:flutter/material.dart';
import 'package:rohitashwa_singh_assignment/utils/assetsandconstants.dart';
import 'package:rohitashwa_singh_assignment/utils/color_values.dart';
import 'package:rohitashwa_singh_assignment/utils/design_values.dart';



class Buttons extends StatelessWidget {
  const Buttons({Key? key, required this.label, required this.type, this.onTap}) : super(key: key);
final String label;
final String type;
final onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: DesignValues.getWidth(43, context),
        height: DesignValues.getHeight(5, context),
        // decoration: BoxDecoration(
        //   gradient: LinearGradient(
        //     begin: Alignment.topLeft,
        //     end: Alignment.bottomRight,
        //    colors: type== "black"? [Colors.black,Colors.black, Colors.black,Colors.black,]
        //     :type == "Dog" ? ColorValues.purpleGradient : type == "Cat" ? ColorValues.pinkGradient : type == "Bird" ? ColorValues.greenGradient : type == "Rabbit" ? ColorValues.blueGradient : ColorValues.orangeGradient,
        //    // colors: ColorValues.blueGradient,
        //     stops: const [
        //       0.1,
        //       0.4,
        //       0.8,
        //       0.9,
        //     ],
        //   ),
        //   borderRadius: BorderRadius.circular(12),
        //   boxShadow: [
        //     BoxShadow(
        //         color: Colors.grey.shade600,
        //         offset: const Offset(0, 4.0),
        //         blurRadius: 5.0,
        //         spreadRadius: 1.0), // BoxShadow
        //     BoxShadow(
        //         color: Theme.of(context).shadowColor,
        //         offset: const Offset(0, -4.0),
        //         blurRadius: 5.0,
        //         spreadRadius: 1.0),
        //   ], // BoxShadow
        // ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.green.shade200,
              Colors.green.shade300,
              Colors.green.shade400,
              Colors.green.shade500,
            ],
            stops: const [
              0.1,
              0.4,
              0.8,
              0.9,
            ],
          ),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade600,
                offset: const Offset(0, 4.0),
                blurRadius: 5.0,
                spreadRadius: 1.0), // BoxShadow
            BoxShadow(
                color: Theme.of(context).shadowColor,
                offset: const Offset(0, -4.0),
                blurRadius: 5.0,
                spreadRadius: 1.0),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(label,style: TextStyle(color: type == 'black' ? Colors.white : Colors.black,fontSize: 16,fontWeight: FontWeight.w600),),
            SizedBox(width: DesignValues.getWidth(2, context),),
            label == 'Adopt Me' ? const Icon(Icons.pets) : Image.asset(AssetsAndConstants.knowMeIcon,width: DesignValues.getWidth(7, context),),
          ],
        ),
      ),
    );
  }
}
