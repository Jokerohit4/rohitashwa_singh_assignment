


import 'package:flutter/material.dart';

class AlertBoxViewModel with ChangeNotifier  {


  onTapThanks(context,isAdopted){
    isAdopted = true;
    Navigator.of(context).pop();
  }

}