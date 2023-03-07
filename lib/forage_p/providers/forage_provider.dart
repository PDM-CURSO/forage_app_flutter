import 'package:flutter/material.dart';
import 'package:forage/models/forage.dart';

class ForageProvider with ChangeNotifier {
  // Text controllers
  var nameCont = TextEditingController();
  var locationCont = TextEditingController();
  var notesCont = TextEditingController();
  // variables
  List<Forage?> _forageList = [];
  bool? _isInSeason = false;
  // getters
  List<Forage?> get getForageList => _forageList;
  bool? get getIsInSeason => _isInSeason;

  void saveNewForage() {
    // guardar los datos de un Forage y agregarlo a la lista
    _forageList.add(
      Forage(
        inSeason: _isInSeason,
        name: nameCont.text,
        location: locationCont.text,
      ),
    );

    clearNewForage();
  }

  void clearNewForage() {
    // limpiar las selecciones y textos actuales
    _isInSeason = false;
    nameCont.clear();
    locationCont.clear();
    notesCont.clear();
    notifyListeners();
  }

  void deleteExistingForage(int index) {
    // Borrar un forage de la lista
    _forageList.removeAt(index);
    notifyListeners();
  }

  void setCurrentlyInSeason(bool? newValue) {
    // indicar el valor que debe desplegar el checkbox
    _isInSeason = newValue;
    notifyListeners();
  }
}
