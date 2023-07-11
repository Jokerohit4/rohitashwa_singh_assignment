


import 'package:flutter/cupertino.dart';
import 'package:rohitashwa_singh_assignment/data/pet_data.dart';
import 'package:rohitashwa_singh_assignment/models/pets.dart';
import 'package:rohitashwa_singh_assignment/widgets/history_tile.dart';

class HistoryPageViewModel extends ChangeNotifier{

  List <Pet> adoptedPets = [];
  List<Widget> historyTile = <Widget>[];
   int c = 0;





  initialize()
  {
    giveAdoptedPetLists();
    if(c<1) {
      notifyListeners();
    }
  }


  giveAdoptedPetLists(){
    historyTile = [];
    adoptedPets = allPets.where((pets) => pets.isAdopted ).toList();
    adoptedPets.sort((a,b) => a.adoptedAt!.compareTo(b.adoptedAt!) );
    historyTile.addAll(adoptedPets.map((pet) => pet.isAdopted ? HistoryTile(pet: pet): const SizedBox()));
    c++;
}
}