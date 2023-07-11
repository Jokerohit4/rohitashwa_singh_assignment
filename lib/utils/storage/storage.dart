import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:rohitashwa_singh_assignment/data/pet_data.dart';
import 'package:rohitashwa_singh_assignment/models/pets.dart';



class LocalStorage{


// Create storage
  final _storage = const FlutterSecureStorage();



 Future<void> storePets() async {
   final petsJson = json.encode(allPets.map((pet) => pet.toJson()).toList());
   debugPrint("List of pets stored");
    await _storage.write(key: 'pets', value: petsJson);
 }

  Future<List<Pet>> getPets() async {
    final jsonString = await _storage.read(key: 'pets');
    if (jsonString != null) {
      final List<dynamic> petListJson = json.decode(jsonString);
      // Map each dynamic object to a 'Pet' object and return the list
      debugPrint("Storage is not empty");
      return petListJson.map((json) => Pet.fromJson(json)).toList().cast<Pet>();
    } else {
      debugPrint("Storage is empty");
      return pets; // Return an empty list if no data is stored
    }
  }


  allClear(){
   _storage.deleteAll();
  }

}