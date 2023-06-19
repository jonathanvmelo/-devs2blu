class Car{
  int currentKm = 0;
  double fuelTank = 0;
  String numberPlate = "";

  void turnOn(){}

  void turnOff(){}

  void speedUp(){}

  void brake(){}

  void toFuel(double gasLiter){
    if(gasLiter + fuelTank > 60 ){
      throw 'Tanque cheio';
    }
    fuelTank += gasLiter;
  }
}


class Jipe{

  void activate4wd(){}

  void desativate4wd(){}
}