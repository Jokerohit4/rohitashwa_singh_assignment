import 'package:flutter/material.dart';
import 'package:rohitashwa_singh_assignment/data/pet_data.dart';
import 'package:rohitashwa_singh_assignment/models/pets.dart';
import 'package:rohitashwa_singh_assignment/utils/storage/storage.dart';
import 'package:rohitashwa_singh_assignment/widgets/center_box/center_box.dart';

class HomePageViewModel extends ChangeNotifier {
  List<Pet> _filteredPets = [];
  final TextEditingController searchField = TextEditingController();
  var centerBoxes = <Widget>[];
  int c=0;

  get filter => _filteredPets;





  Future<void> initialize()  async {
    final storage = LocalStorage();
    allPets = await storage.getPets();
    _filteredPets = allPets;
    centerBoxes.addAll(allPets.map((element) => CenterBox(pet: element)));
    if(centerBoxes.isNotEmpty && c <1)
      {
        debugPrint("${c++}");
        notifyListeners();
      }
  }

  HomePageViewModel();

  void filterPets(String searchTerm) {
    final Iterable<Pet> searchedPets = _filteredPets.where(
          (pet) => pet.name.toLowerCase().contains(searchTerm.toLowerCase()),
    );
    if (searchedPets.isNotEmpty) {
      centerBoxes = [];
      centerBoxes.addAll(searchedPets.map((element) => CenterBox(pet: element)));
    }
    c=0;
    initialize();
    notifyListeners();
  }

  void categoryPets(String filterCategoryTerm) {
    final Iterable<Pet> searchedPets = _filteredPets.where(
          (pet) => pet.type.toLowerCase().contains(filterCategoryTerm.toLowerCase()),
    );
    if (searchedPets.isNotEmpty) {
      centerBoxes = [];
      centerBoxes.addAll(searchedPets.map((element) => CenterBox(pet: element)));
    }
    notifyListeners();
  }

  void clearAllFilters() {
    centerBoxes = [];
    centerBoxes.addAll(allPets.map((element) => CenterBox(pet: element)));
    notifyListeners();
  }
}
