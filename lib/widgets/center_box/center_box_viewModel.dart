import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:rohitashwa_singh_assignment/data/pet_data.dart';
import 'package:rohitashwa_singh_assignment/models/pets.dart';
import 'package:rohitashwa_singh_assignment/pages/details_screen/details_screen_view.dart';
import 'package:rohitashwa_singh_assignment/utils/storage/storage.dart';

class CenterBoxViewModel extends ChangeNotifier {
  late AnimationController _controller;
  late Animation<Color?> _colorAnimation;
  //late Animation<double?> _sizeAnimation;
  late Animation<double> _rotationAnimation;

  final Pet pet;
  bool _isAdopted = false;
  bool isFav = false;
  final storage = LocalStorage();

updatePet(){
  notifyListeners();
}


  CenterBoxViewModel(this.pet);
  get controller => _controller;
  get colorAnimation => _colorAnimation;
  //get sizeAnimation => _sizeAnimation;
  get rotationAnimation => _rotationAnimation;
  get isAdopted => _isAdopted;

  void init() {
    isFav = pet.isAdopted;
    _controller = AnimationController(
      vsync: _MyVsync(),
      duration: const Duration(milliseconds: 500),
    );

    _colorAnimation = ColorTween(
      begin:  Colors.white,
      end: Colors.red,
    ).animate(_controller);


    // _sizeAnimation = TweenSequence(
    //   <TweenSequenceItem<double>>[
    //     TweenSequenceItem(tween: Tween(begin: 30, end: 50), weight: 50),
    //     TweenSequenceItem(tween: Tween(begin: 50, end: 30), weight: 50),
    //   ],
    // ).animate(_controller);

    _rotationAnimation = TweenSequence(
      <TweenSequenceItem<double>>[
        TweenSequenceItem(tween: Tween(begin: 0, end: 90), weight: 33),
        TweenSequenceItem(tween: Tween(begin: 90, end: -90), weight: 33),
        TweenSequenceItem(tween: Tween(begin: -90, end: 0), weight: 33),
      ],
    ).animate(_controller);

    _controller.addListener(() {
    });

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        isFav = true;
      } else if (status == AnimationStatus.dismissed) {
        isFav = false;
      }
      notifyListeners();
    });

    for (var aPet in allPets) {
      if(aPet.name == pet.name)
      {
        _isAdopted = aPet.isAdopted;
      }
    }
  }

  onPressBox(context){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) =>  DetailsScreen(pet: pet,isGrey: _isAdopted,)),
    );
  }

  void toggleAnimation() {
    isFav ? _controller.reverse() : _controller.forward();
    for (var aPet in allPets) {
      if(aPet.name == pet.name)
        {
          aPet.isAdopted = !aPet.isAdopted;
          _isAdopted = !_isAdopted;
          aPet.adoptedAt = DateTime.now();
        }
    }
    storage.storePets();
    notifyListeners();

  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

class _MyVsync extends TickerProvider {
  @override
  Ticker createTicker(onTick) => Ticker(onTick);
}
