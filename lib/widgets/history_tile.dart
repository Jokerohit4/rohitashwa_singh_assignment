import 'package:flutter/material.dart';
import 'package:rohitashwa_singh_assignment/models/pets.dart';
import 'package:rohitashwa_singh_assignment/utils/assetsandconstants.dart';
import 'package:rohitashwa_singh_assignment/utils/color_values.dart';
import 'package:rohitashwa_singh_assignment/utils/design_values.dart';
import 'package:intl/intl.dart';


class HistoryTile extends StatelessWidget {
  const HistoryTile({Key? key, required this.pet}) : super(key: key);
final Pet pet;
  @override
  Widget build(BuildContext context) {
    String type = pet.type;
    String formattedDate = DateFormat('MMMM, dd').format(pet.adoptedAt!);
    return Container(
      width: DesignValues.getWidth(90, context),
      height: DesignValues.getHeight(17, context),
      margin: EdgeInsets.symmetric(vertical: DesignValues.getHeight(2, context)),
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
        gradient:  LinearGradient(
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
         Align(
             alignment: Alignment.center,
             child: Image.asset(type == "Dog" ? AssetsAndConstants.purpleBgDecor : type == "Cat" ? AssetsAndConstants.pinkBgDecor : type == "Bird" ? AssetsAndConstants.greenBgDecor : type == "Rabbit" ? AssetsAndConstants.blueBgDecor : AssetsAndConstants.orangeBgDecor,)),
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 14.0),
                child: Image.asset(type == "Dog" ? AssetsAndConstants.purpleBgDecor : type == "Cat" ? AssetsAndConstants.pinkBgDecor : type == "Bird" ? AssetsAndConstants.greenBgDecor : type == "Rabbit" ? AssetsAndConstants.blueBgDecor : AssetsAndConstants.orangeBgDecor,),
              )),
          Align(
              alignment: Alignment.centerRight,
              child: Image.asset(type == "Dog" ? AssetsAndConstants.purpleBgDecor : type == "Cat" ? AssetsAndConstants.pinkBgDecor : type == "Bird" ? AssetsAndConstants.greenBgDecor : type == "Rabbit" ? AssetsAndConstants.blueBgDecor : AssetsAndConstants.orangeBgDecor,)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(pet.name,style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  fontSize: 39,
                ),),
                Row(
                  children: [
                    Text(pet.breed,style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 16,
                    ),),
                  ],
                ),
                Text(formattedDate,style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  fontSize: 16,
                ),),
              ],
            ),
          ),
          Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Image.asset(pet.image),
              )),
        ],
      ),
    );
  }
}
