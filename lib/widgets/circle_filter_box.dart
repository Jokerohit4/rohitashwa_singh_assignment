import 'package:flutter/material.dart';
import 'package:rohitashwa_singh_assignment/utils/design_values.dart';


class CircleFilterBox extends StatelessWidget {
  const CircleFilterBox({Key? key, required this.icon, required this.colors, required this.label, this.onTap}) : super(key: key);
final String icon;
final List<Color>colors;
final String label;
final onTap;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Column(
        children: [
          Container(
            width: DesignValues.getWidth(17, context),
            height: DesignValues.getHeight(17, context),
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
             color: colors[3],
              shape: BoxShape.circle,
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
            child: Image.asset(icon,width: 10,height: 10),
          ),
          SizedBox(
            height: DesignValues.getHeight(0.02, context),
          ),
          Text(label),
        ],
      ),
    );
  }
}
