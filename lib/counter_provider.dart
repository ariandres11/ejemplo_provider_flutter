//Va a manejar el estado del counter
import 'package:flutter/material.dart';

class CounterProvider with ChangeNotifier{
    int _counter = 0;

    //GET Y SET

    int get counter => _counter;

    //Cualquier wd que este escuchando con el get
    //SE NOTIFICA
    void increment(){
      _counter++;
      notifyListeners();
    }

}

