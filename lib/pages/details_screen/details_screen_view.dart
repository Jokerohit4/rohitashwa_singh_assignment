import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:rohitashwa_singh_assignment/models/pets.dart';
import 'package:rohitashwa_singh_assignment/pages/details_screen/details_screen_viewModel.dart';
import 'package:rohitashwa_singh_assignment/utils/assetsandconstants.dart';
import 'package:rohitashwa_singh_assignment/utils/color_values.dart';
import 'package:rohitashwa_singh_assignment/utils/design_values.dart';
import 'package:rohitashwa_singh_assignment/widgets/alert_box/alert_box_view.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key, required this.pet, required this.isGrey})
      : super(key: key);
  final Pet pet;
  final bool isGrey;

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<DetailsScreenViewModel>(context);
    String type = pet.type;
    return Scaffold(
      body: Stack(
        children: [
          buildImage(context, type,viewModel),
          layedOverBox(context, type, viewModel),
        ],
      ),
    );
  }

  Widget buildImage(context, type,DetailsScreenViewModel viewModel) {
    return Hero(
      tag: pet.name,
      child: Container(
        width: DesignValues.getWidth(100, context),
        height: 347,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade600,
              offset: const Offset(4.0, 4.0),
              blurRadius: 15.0,
              spreadRadius: 1.0,
            ),
            const BoxShadow(
              color: Colors.white,
              offset: Offset(-4.0, -4.0),
              blurRadius: 15.0,
              spreadRadius: 1.0,
            ),
          ],
          color: isGrey ? Colors.grey : null,
          gradient: isGrey
              ? null
              : LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: type == "Dog"
                      ? ColorValues.purpleGradient
                      : type == "Cat"
                          ? ColorValues.pinkGradient
                          : type == "Bird"
                              ? ColorValues.greenGradient
                              : type == "Rabbit"
                                  ? ColorValues.blueGradient
                                  : ColorValues.orangeGradient,
                  stops: const [
                    0.1,
                    0.4,
                    0.8,
                    0.9,
                  ],
                ),
        ),
        child: isGrey
            ? Image.asset(
                pet.image,
                width: DesignValues.getWidth(100, context),
                height: DesignValues.getHeight(100, context),
              )
            : Stack(
                children: [
                  Align(
                      alignment: Alignment.topRight,
                      child: Image.asset(
                        type == "Dog"
                            ? AssetsAndConstants.purpleBgDecor
                            : type == "Cat"
                                ? AssetsAndConstants.pinkBgDecor
                                : type == "Bird"
                                    ? AssetsAndConstants.greenBgDecor
                                    : type == "Rabbit"
                                        ? AssetsAndConstants.blueBgDecor
                                        : AssetsAndConstants.orangeBgDecor,
                        width: 200,
                      )),
                  Align(
                      alignment: Alignment.bottomLeft,
                      child: Image.asset(
                        type == "Dog"
                            ? AssetsAndConstants.purpleBgDecor
                            : type == "Cat"
                                ? AssetsAndConstants.pinkBgDecor
                                : type == "Bird"
                                    ? AssetsAndConstants.greenBgDecor
                                    : type == "Rabbit"
                                        ? AssetsAndConstants.blueBgDecor
                                        : AssetsAndConstants.orangeBgDecor,
                        width: 200,
                      )),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Image.asset(
                        type == "Dog"
                            ? AssetsAndConstants.purpleBgDecor
                            : type == "Cat"
                                ? AssetsAndConstants.pinkBgDecor
                                : type == "Bird"
                                    ? AssetsAndConstants.greenBgDecor
                                    : type == "Rabbit"
                                        ? AssetsAndConstants.blueBgDecor
                                        : AssetsAndConstants.orangeBgDecor,
                        width: 200,
                      )),
                  Align(
                      alignment: Alignment.bottomRight,
                      child: Image.asset(
                        type == "Dog"
                            ? AssetsAndConstants.purpleBgDecor
                            : type == "Cat"
                                ? AssetsAndConstants.pinkBgDecor
                                : type == "Bird"
                                    ? AssetsAndConstants.greenBgDecor
                                    : type == "Rabbit"
                                        ? AssetsAndConstants.blueBgDecor
                                        : AssetsAndConstants.orangeBgDecor,
                        width: 200,
                      )),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Image.asset(
                        pet.image,
                        width: DesignValues.getWidth(100, context),
                        height: DesignValues.getHeight(100, context),
                      )),
                ],
              ),
      ),
    );
  }

  Widget layedOverBox(context, type, viewModel) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: DesignValues.getWidth(100, context),
        height: DesignValues.getHeight(65, context),
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
            borderRadius:
                const BorderRadius.vertical(top: Radius.circular(80))),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: DesignValues.getWidth(10, context),
                ),
                Text(
                  pet.name,
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .copyWith(fontWeight: FontWeight.w800),
                ),
              ],
            ),
            SizedBox(
              height: DesignValues.getHeight(3, context),
            ),
            details(context),
            SizedBox(
              height: DesignValues.getHeight(10, context),
            ),
            //  centerRoundBox(context, type),
            tags(context),
            SizedBox(
              height: DesignValues.getHeight(10, context),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                button(
                    context, 'Adopt Me', ColorValues.greyBgColor, Colors.black),
                SizedBox(
                  width: DesignValues.getWidth(5, context),
                ),
                button(context, 'Know Me More', Colors.black,
                    ColorValues.greyBgColor),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget details(context) {
    return Row(
      children: [
        SizedBox(
          width: DesignValues.getWidth(4, context),
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              FontAwesomeIcons.paw,
              color: Theme.of(context).focusColor,
            ),
            SizedBox(
              height: DesignValues.getHeight(2, context),
            ),
            Icon(
              FontAwesomeIcons.mapLocation,
              color: Theme.of(context).focusColor,
            ),
          ],
        ),
        SizedBox(
          width: DesignValues.getWidth(2, context),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(pet.breed),
            SizedBox(
              height: DesignValues.getHeight(4, context),
            ),
            Text(pet.address),
          ],
        ),
        SizedBox(
          width: DesignValues.getWidth(16, context),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              FontAwesomeIcons.personWalkingWithCane,
              color: Theme.of(context).focusColor,
            ),
            SizedBox(
              height: DesignValues.getHeight(2, context),
            ),
            Icon(
              FontAwesomeIcons.dollarSign,
              color: Theme.of(context).focusColor,
            ),
          ],
        ),
        SizedBox(
          width: DesignValues.getWidth(2, context),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('${pet.age} months'),
            SizedBox(
              height: DesignValues.getHeight(5, context),
            ),
            Text('₹ ${pet.price}'),
          ],
        ),
      ],
    );
  }

  Widget tags(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            tag(context, 'Trained', FontAwesomeIcons.graduationCap,
                ColorValues.purpleColor),
            SizedBox(
              width: DesignValues.getWidth(8, context),
            ),
            tag(context, 'Near by', FontAwesomeIcons.locationArrow,
                Colors.orange),
            SizedBox(
              width: DesignValues.getWidth(8, context),
            ),
            tag(context, 'Spayed', FontAwesomeIcons.scissors, Colors.red),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            tag(context, 'Pet', FontAwesomeIcons.paw, Colors.black),
            SizedBox(
              width: DesignValues.getWidth(6, context),
            ),
            tag(context, 'Male', Icons.male, Colors.blue),
            SizedBox(
              width: DesignValues.getWidth(6, context),
            ),
            tag(context, 'Vaccinated', FontAwesomeIcons.syringe, Colors.green),
          ],
        ),
      ],
    );
  }

  Widget centerRoundBox(context, type) {
    return Container(
      width: DesignValues.getWidth(80, context),
      height: DesignValues.getHeight(18, context),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: type == "black"
              ? [
                  Colors.black,
                  Colors.black,
                  Colors.black,
                  Colors.black,
                ]
              : type == "Dog"
                  ? ColorValues.purpleGradient
                  : type == "Cat"
                      ? ColorValues.pinkGradient
                      : type == "Bird"
                          ? ColorValues.greenGradient
                          : type == "Rabbit"
                              ? ColorValues.blueGradient
                              : ColorValues.orangeGradient,
          stops: const [
            0.1,
            0.4,
            0.8,
            0.9,
          ],
        ),
        borderRadius: BorderRadius.circular(60),
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
        ], // BoxShadow
      ),
      child: tags(context),
    );
  }

  Widget tag(context, label, icon, color) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.grey.shade200,
            Colors.grey.shade300,
            Colors.grey.shade400,
            Colors.grey.shade500,
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
        children: [
          Icon(
            icon,
            size: 15,
            color: color,
          ), // BoxShadow
          const SizedBox(
            width: 5,
          ),
          Text(label,
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(color: Colors.black)),
        ],
      ),
    );
  }

  button(context, label, bgColor, fgColor) {
    return SizedBox(
      width: DesignValues.getWidth(40, context),
      child: ElevatedButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertBoxView(
                pet: pet,
                isGrey: isGrey,
              );
            },
          );
        },
        style: ElevatedButton.styleFrom(
          elevation: 8,
          foregroundColor: fgColor,
          backgroundColor: bgColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(22.0),
          ),
        ),
        child: Text(
          label,
          style: const TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
